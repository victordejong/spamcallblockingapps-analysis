package com.mopub.mobileads;

import com.bytedance.sdk.openadsdk.preload.falconx.statistic.StatisticData;
import com.mopub.common.Preconditions;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastErrorCode.class */
public enum VastErrorCode {
    XML_PARSING_ERROR(StatisticData.ERROR_CODE_NOT_FOUND),
    WRAPPER_TIMEOUT("301"),
    NO_ADS_VAST_RESPONSE("303"),
    GENERAL_LINEAR_AD_ERROR("400"),
    GENERAL_COMPANION_AD_ERROR("600"),
    UNDEFINED_ERROR("900");
    
    private final String mErrorCode;

    VastErrorCode(String str) {
        Preconditions.checkNotNull(str, "errorCode cannot be null");
        this.mErrorCode = str;
    }

    public final String getErrorCode() {
        return this.mErrorCode;
    }
}
