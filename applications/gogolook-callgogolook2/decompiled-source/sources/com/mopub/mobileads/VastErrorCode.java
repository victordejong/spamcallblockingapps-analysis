package com.mopub.mobileads;

import androidx.annotation.NonNull;
import com.mopub.common.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastErrorCode.class */
public enum VastErrorCode {
    XML_PARSING_ERROR("100"),
    WRAPPER_TIMEOUT("301"),
    NO_ADS_VAST_RESPONSE("303"),
    GENERAL_LINEAR_AD_ERROR("400"),
    GENERAL_COMPANION_AD_ERROR("600"),
    UNDEFINED_ERROR("900");
    
    @NonNull

    /* renamed from: a */
    public final String f8551a;

    VastErrorCode(@NonNull String str) {
        Preconditions.checkNotNull(str, "errorCode cannot be null");
        this.f8551a = str;
    }

    @NonNull
    /* renamed from: a */
    public String m30494a() {
        return this.f8551a;
    }
}
