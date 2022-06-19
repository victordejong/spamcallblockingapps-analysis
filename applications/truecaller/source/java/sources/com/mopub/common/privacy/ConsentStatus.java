package com.mopub.common.privacy;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentStatus.class */
public enum ConsentStatus {
    EXPLICIT_YES("explicit_yes"),
    EXPLICIT_NO("explicit_no"),
    UNKNOWN("unknown"),
    POTENTIAL_WHITELIST("potential_whitelist"),
    DNT("dnt");
    

    /* renamed from: a */
    public final String f8635a;

    ConsentStatus(String str) {
        this.f8635a = str;
    }

    public static ConsentStatus fromString(String str) {
        if (str == null) {
            return UNKNOWN;
        }
        ConsentStatus[] values = values();
        for (int i = 0; i < 5; i++) {
            ConsentStatus consentStatus = values[i];
            if (str.equals(consentStatus.name())) {
                return consentStatus;
            }
        }
        return UNKNOWN;
    }

    public String getValue() {
        return this.f8635a;
    }
}
