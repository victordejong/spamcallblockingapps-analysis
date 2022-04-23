package com.mopub.common.privacy;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentStatus.class */
public enum ConsentStatus {
    EXPLICIT_YES("explicit_yes"),
    EXPLICIT_NO("explicit_no"),
    UNKNOWN("unknown"),
    POTENTIAL_WHITELIST("potential_whitelist"),
    DNT("dnt");
    
    @NonNull

    /* renamed from: a */
    public final String f8245a;

    ConsentStatus(@NonNull String str) {
        this.f8245a = str;
    }

    @NonNull
    public static ConsentStatus fromString(@Nullable String str) {
        ConsentStatus[] values;
        if (str == null) {
            return UNKNOWN;
        }
        for (ConsentStatus consentStatus : values()) {
            if (str.equals(consentStatus.name())) {
                return consentStatus;
            }
        }
        return UNKNOWN;
    }

    @NonNull
    public String getValue() {
        return this.f8245a;
    }
}
