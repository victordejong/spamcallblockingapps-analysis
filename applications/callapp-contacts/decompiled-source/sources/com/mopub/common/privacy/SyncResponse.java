package com.mopub.common.privacy;

import com.mopub.common.Preconditions;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/SyncResponse.class */
public class SyncResponse {

    /* renamed from: a  reason: collision with root package name */
    final String f33975a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f33976b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f33977c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f33978d;
    private final boolean e;
    private final boolean f;
    private final boolean g;
    private final String h;
    private final String i;
    private final String j;
    private final String k;
    private final String l;
    private final String m;
    private final String n;
    private final String o;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/SyncResponse$Builder.class */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f33979a;

        /* renamed from: b  reason: collision with root package name */
        private String f33980b;

        /* renamed from: c  reason: collision with root package name */
        private String f33981c;

        /* renamed from: d  reason: collision with root package name */
        private String f33982d;
        private String e;
        private String f;
        private String g;
        private String h;
        private String i;
        private String j;
        private String k;
        private String l;
        private String m;
        private String n;
        private String o;

        public SyncResponse build() {
            return new SyncResponse(this.f33979a, this.f33980b, this.f33981c, this.f33982d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o);
        }

        public Builder setCallAgainAfterSecs(String str) {
            this.m = str;
            return this;
        }

        public Builder setConsentChangeReason(String str) {
            this.o = str;
            return this;
        }

        public Builder setCurrentPrivacyPolicyLink(String str) {
            this.j = str;
            return this;
        }

        public Builder setCurrentPrivacyPolicyVersion(String str) {
            this.i = str;
            return this;
        }

        public Builder setCurrentVendorListIabFormat(String str) {
            this.k = str;
            return this;
        }

        public Builder setCurrentVendorListIabHash(String str) {
            this.l = str;
            return this;
        }

        public Builder setCurrentVendorListLink(String str) {
            this.h = str;
            return this;
        }

        public Builder setCurrentVendorListVersion(String str) {
            this.g = str;
            return this;
        }

        public Builder setExtras(String str) {
            this.n = str;
            return this;
        }

        public Builder setForceExplicitNo(String str) {
            this.f33980b = str;
            return this;
        }

        public Builder setForceGdprApplies(String str) {
            this.f = str;
            return this;
        }

        public Builder setInvalidateConsent(String str) {
            this.f33981c = str;
            return this;
        }

        public Builder setIsGdprRegion(String str) {
            this.f33979a = str;
            return this;
        }

        public Builder setIsWhitelisted(String str) {
            this.e = str;
            return this;
        }

        public Builder setReacquireConsent(String str) {
            this.f33982d = str;
            return this;
        }
    }

    private SyncResponse(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str5);
        Preconditions.checkNotNull(str7);
        Preconditions.checkNotNull(str8);
        Preconditions.checkNotNull(str9);
        Preconditions.checkNotNull(str10);
        Preconditions.checkNotNull(str12);
        this.f33976b = !"0".equals(str);
        this.f33977c = "1".equals(str2);
        this.f33978d = "1".equals(str3);
        this.e = "1".equals(str4);
        this.f = "1".equals(str5);
        this.g = "1".equals(str6);
        this.h = str7;
        this.i = str8;
        this.j = str9;
        this.k = str10;
        this.l = str11;
        this.m = str12;
        this.n = str13;
        this.f33975a = str14;
        this.o = str15;
    }

    public String getCallAgainAfterSecs() {
        return this.n;
    }

    public String getConsentChangeReason() {
        return this.o;
    }

    public String getCurrentPrivacyPolicyLink() {
        return this.k;
    }

    public String getCurrentPrivacyPolicyVersion() {
        return this.j;
    }

    public String getCurrentVendorListIabFormat() {
        return this.l;
    }

    public String getCurrentVendorListIabHash() {
        return this.m;
    }

    public String getCurrentVendorListLink() {
        return this.i;
    }

    public String getCurrentVendorListVersion() {
        return this.h;
    }

    public boolean isForceExplicitNo() {
        return this.f33977c;
    }

    public boolean isForceGdprApplies() {
        return this.g;
    }

    public boolean isGdprRegion() {
        return this.f33976b;
    }

    public boolean isInvalidateConsent() {
        return this.f33978d;
    }

    public boolean isReacquireConsent() {
        return this.e;
    }

    public boolean isWhitelisted() {
        return this.f;
    }
}
