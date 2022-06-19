package com.mopub.mobileads;

import com.millennialmedia.mediation.CustomEventNative;
import com.mopub.common.Preconditions;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastErrorCode.class */
public enum VastErrorCode {
    XML_PARSING_ERROR(CustomEventNative.DEFAULT_TYPE),
    WRAPPER_TIMEOUT("301"),
    NO_ADS_VAST_RESPONSE("303"),
    GENERAL_LINEAR_AD_ERROR("400"),
    GENERAL_COMPANION_AD_ERROR("600"),
    UNDEFINED_ERROR("900");
    

    /* renamed from: a */
    public final String f4808a;

    VastErrorCode(String str) {
        Preconditions.checkNotNull(str, "errorCode cannot be null");
        this.f4808a = str;
    }

    /* renamed from: a */
    public String m3588a() {
        return this.f4808a;
    }
}
