#!/bin/sh

# get into run script dir (resolve to absolute path)
SCRIPT_DIR=$(cd $(dirname $0) && pwd)    # This dir is where this script live.
echo "SCRIPT_DIR:$SCRIPT_DIR"
cd $SCRIPT_DIR

#curl -u "admin:admin123456" -G "http://localhost:1218/?name=APP_ACTIVE_LOG_QUEUE&opt=maxqueue&num=10000000"

queueNames=("APP_ACTIVE_LOG_QUEUE" "APP_AD_STATISTIC_LOG_QUEUE" "APP_CALL_INTERCEPT_LOG_QUEUE" "APP_DUGTREASUREBOX_LOG_QUEUE" \
    "APP_FIRSTLAUNCH_LOG_QUEUE" "APP_FIRST_BOOT_LOG_QUEUE" "APP_LINKBACK_LOG_QUEUE" "APP_SEX_STATISTIC_LOG_QUEUE" \
    "AUTO_REPLY_CALL_USER_LOG_QUEUE" "BLACK_CATCH_LOG_QUEUE" "BLACK_CHEATER_LOG_QUEUE" "FILTER_MSG_LOG_QUEUE" \
    "FROM_STREAM_QUEUE" "LOGIN_STAT_DATA_STREAM_QUEUE" "MOBILE_SECOND_RECALL_OPEN_LOG_QUEUE" "MOBILE_VERIFICATION_RECORD_QUEUE" \
    "MSG_FILTER_LOG_QUEUE" "MSG_INDICT_LOG_QUEUE" "MSG_NOTES_LOG_QUEUE" "ODS_BUY_GIFT_QUEUE" \
    "PAGE_HEADER_CLICK_PAID_QUEUE" "PAGE_HEADER_CLICK_UNPAID_QUEUE" "PAGE_HEADER_VIEW_PAID_QUEUE" "PAGE_HEADER_VIEW_UNPAID_QUEUE" \
    "PAY_LOG_QUEUE" "PAY_SEND_SMS_LOG_QUEUE" "POLICE_REPORTONLINE_LOG_QUEUE" "RECALL_OPEN_LOG_QUEUE" \
    "RECALL_OPEN_STREAM" "RECALL_OPEN_STREAM_QUEUE" "REGUSER_STAT_DATA_STREAM_QUEUE" "REG_RECALL_OPEN_QUEUE" \
    "REG_STAT_DATA_STREAM_QUEUE" "SEM_FROM_STREAM_QUEUE" "SERVICE_ORDERINFO_LOG_QUEUE" "SMS_OPEN_RECORD_QUEUE" \
    "STAT_MQ_USER_CLICK_QUEUE" "STAT_USER_CLICK_QUEUE" "STRATEGY_EXECUTE_LOG_QUEUE" "STRATEGY_TRIGGER_LOG_QUEUE" \
    "SYB2_FEE_REG_LOG_QUEUE" "T_USER_FACE_COMMENT_QUEUE" "USER_FAIL_STREAM_QUEUE" "USER_FEE_FLOW_QUEUE" \
    "USER_IDCARD_LOG_QUEUE" "USER_IDCARD_STREAM_QUEUE" "USER_INFO_GUIDE_LOG_QUEUE" "USER_LOGIN_LOG_QUEUE" \
    "USER_LOG_INSERT_QUEUE" "USER_LOG_UPDATE_QUEUE" "USER_NAME_SECOND_RECALL_OPEN_LOG_QUEUE" "USER_PHOTO_COUNT_QUEUE" \
    "USER_PHOTO_DELETE_QUEUE" "USER_PHOTO_MD5_LOG_QUEUE" "USER_PHOTO_MMS_COUNT_QUEUE" "USER_PHOTO_PAGE_FROM_QUEUE" \
    "USER_PHOTO_UPLOAD_LOG_QUEUE" "USER_REG_PHOTO_LOG_QUEUE" "USER_SELF_CANCELED_QUEUE" "USER_TRACK_FROM_PV_REG_LOGIN_QUEUE" \
    "VMSG_JOB_MONITOR_STREAM_QUEUE" "VMSG_MONITOR_STREAM_QUEUE" "XUNYUAN_LOG_QUEUE")

for queueName in ${queueNames[@]} ; do 
  curl -u "admin:admin123456" -G "http://localhost:1218/?name=${queueName}&opt=maxqueue&num=10000000"
  echo "->${queueName}"
done








    
