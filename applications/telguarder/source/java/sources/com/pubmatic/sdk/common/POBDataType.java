package com.pubmatic.sdk.common;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/POBDataType.class */
public interface POBDataType {

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/POBDataType$POBAdState.class */
    public enum POBAdState {
        DEFAULT,
        LOADING,
        READY,
        SHOWN,
        AD_SERVER_READY,
        EXPIRED,
        BID_RECEIVED,
        BID_FAILED
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/POBDataType$POBBidTargetingType.class */
    public enum POBBidTargetingType {
        WINNING,
        PARTNER_SPECIFIC,
        BOTH
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/POBDataType$POBVideoAdEventType.class */
    public enum POBVideoAdEventType {
        FIRST_QUARTILE,
        MID_POINT,
        THIRD_QUARTILE,
        COMPLETE,
        SKIPPED,
        MUTE,
        UNMUTE,
        CLICKED,
        PAUSE,
        RESUME,
        ICON_CLICKED
    }
}
