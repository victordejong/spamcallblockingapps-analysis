package com.callapp.common.api;

import io.bidmachine.protobuf.EventTypeExtended;
/* loaded from: classes-dex2jar.jar:com/callapp/common/api/ReturnCode.class */
public enum ReturnCode {
    GENERAL_ERROR(-1, EventTypeExtended.EVENT_TYPE_EXTENDED_REQUEST_DESTROYED_VALUE),
    AUTHENTICATION_FAILED(-2, 431),
    INVALID_NUMBER(-2, EventTypeExtended.EVENT_TYPE_EXTENDED_AD_EXPIRED_VALUE),
    NO_SUCH_USER(-3, 512),
    OVER_USE_LIMIT(-4, 513),
    INVALID_TOKEN(-5, 514),
    INVALID_DEVICE_ID(-6, 515),
    INVALID_CHALLENGE_RESPONSE(-7, 516),
    BLOCKED_NUMBER(-8, 517),
    MAX_DAILY_SMS(-9, 518),
    MAX_DAILY_SMS_PER_USER(-10, 519),
    MAX_DAILY_SMS_PER_DEVICE(-11, 520),
    MAX_DAILY_CALLS(-12, 521),
    MAX_DAILY_CALLS_PER_USER(-13, 522),
    MAX_DAILY_CALLS_PER_DEVICE(-14, 523),
    FAILED_TO_SEND_SMS(-15, 524),
    CONTACT_NOT_FOUND(0, 525),
    OLD_VERSION(-16, 526),
    NOT_SUPER_USER(-17, 527),
    OK(1, 200),
    PHONE_UNLISTED_SUCCESS(2, 200),
    PHONE_UNLIST_REQUEST_SUCCESS(3, 200),
    INVALID_PHONE_OR_CONFIRMATION_CODE(4, 200);
    
    public final int code;
    public final int statusCode;

    ReturnCode(int i, int i2) {
        this.code = i;
        this.statusCode = i2;
    }
}
