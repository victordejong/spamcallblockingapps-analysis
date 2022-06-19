package com.mopub.common.privacy;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/ConsentStatus.class */
public enum ConsentStatus {
    EXPLICIT_YES("explicit_yes"),
    EXPLICIT_NO("explicit_no"),
    UNKNOWN("unknown"),
    POTENTIAL_WHITELIST("potential_whitelist"),
    DNT("dnt");
    
    private final String mValue;

    ConsentStatus(String str) {
        this.mValue = str;
    }

    public static ConsentStatus fromString(String str) {
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

    public final String getValue() {
        return this.mValue;
    }
}
