package com.mopub.mobileads;

import com.appnext.nativeads.NativeAdObject;
import com.mopub.common.Preconditions;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastErrorCode.class */
public enum VastErrorCode {
    XML_PARSING_ERROR("100"),
    WRAPPER_TIMEOUT(NativeAdObject.TID),
    NO_ADS_VAST_RESPONSE("303"),
    GENERAL_LINEAR_AD_ERROR("400"),
    GENERAL_COMPANION_AD_ERROR("600"),
    UNDEFINED_ERROR("900");
    

    /* renamed from: a */
    public final String f8857a;

    VastErrorCode(String str) {
        Preconditions.checkNotNull(str, "errorCode cannot be null");
        this.f8857a = str;
    }
}
