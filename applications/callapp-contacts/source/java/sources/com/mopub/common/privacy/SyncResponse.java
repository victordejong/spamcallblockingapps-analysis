package com.mopub.common.privacy;

import com.mopub.common.Preconditions;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/SyncResponse.class */
public class SyncResponse {

    /* renamed from: a */
    final String f58941a;

    /* renamed from: b */
    private final boolean f58942b;

    /* renamed from: c */
    private final boolean f58943c;

    /* renamed from: d */
    private final boolean f58944d;

    /* renamed from: e */
    private final boolean f58945e;

    /* renamed from: f */
    private final boolean f58946f;

    /* renamed from: g */
    private final boolean f58947g;

    /* renamed from: h */
    private final String f58948h;

    /* renamed from: i */
    private final String f58949i;

    /* renamed from: j */
    private final String f58950j;

    /* renamed from: k */
    private final String f58951k;

    /* renamed from: l */
    private final String f58952l;

    /* renamed from: m */
    private final String f58953m;

    /* renamed from: n */
    private final String f58954n;

    /* renamed from: o */
    private final String f58955o;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/SyncResponse$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private String f58956a;

        /* renamed from: b */
        private String f58957b;

        /* renamed from: c */
        private String f58958c;

        /* renamed from: d */
        private String f58959d;

        /* renamed from: e */
        private String f58960e;

        /* renamed from: f */
        private String f58961f;

        /* renamed from: g */
        private String f58962g;

        /* renamed from: h */
        private String f58963h;

        /* renamed from: i */
        private String f58964i;

        /* renamed from: j */
        private String f58965j;

        /* renamed from: k */
        private String f58966k;

        /* renamed from: l */
        private String f58967l;

        /* renamed from: m */
        private String f58968m;

        /* renamed from: n */
        private String f58969n;

        /* renamed from: o */
        private String f58970o;

        public SyncResponse build() {
            return new SyncResponse(this.f58956a, this.f58957b, this.f58958c, this.f58959d, this.f58960e, this.f58961f, this.f58962g, this.f58963h, this.f58964i, this.f58965j, this.f58966k, this.f58967l, this.f58968m, this.f58969n, this.f58970o);
        }

        public Builder setCallAgainAfterSecs(String str) {
            this.f58968m = str;
            return this;
        }

        public Builder setConsentChangeReason(String str) {
            this.f58970o = str;
            return this;
        }

        public Builder setCurrentPrivacyPolicyLink(String str) {
            this.f58965j = str;
            return this;
        }

        public Builder setCurrentPrivacyPolicyVersion(String str) {
            this.f58964i = str;
            return this;
        }

        public Builder setCurrentVendorListIabFormat(String str) {
            this.f58966k = str;
            return this;
        }

        public Builder setCurrentVendorListIabHash(String str) {
            this.f58967l = str;
            return this;
        }

        public Builder setCurrentVendorListLink(String str) {
            this.f58963h = str;
            return this;
        }

        public Builder setCurrentVendorListVersion(String str) {
            this.f58962g = str;
            return this;
        }

        public Builder setExtras(String str) {
            this.f58969n = str;
            return this;
        }

        public Builder setForceExplicitNo(String str) {
            this.f58957b = str;
            return this;
        }

        public Builder setForceGdprApplies(String str) {
            this.f58961f = str;
            return this;
        }

        public Builder setInvalidateConsent(String str) {
            this.f58958c = str;
            return this;
        }

        public Builder setIsGdprRegion(String str) {
            this.f58956a = str;
            return this;
        }

        public Builder setIsWhitelisted(String str) {
            this.f58960e = str;
            return this;
        }

        public Builder setReacquireConsent(String str) {
            this.f58959d = str;
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
        this.f58942b = !"0".equals(str);
        this.f58943c = "1".equals(str2);
        this.f58944d = "1".equals(str3);
        this.f58945e = "1".equals(str4);
        this.f58946f = "1".equals(str5);
        this.f58947g = "1".equals(str6);
        this.f58948h = str7;
        this.f58949i = str8;
        this.f58950j = str9;
        this.f58951k = str10;
        this.f58952l = str11;
        this.f58953m = str12;
        this.f58954n = str13;
        this.f58941a = str14;
        this.f58955o = str15;
    }

    public String getCallAgainAfterSecs() {
        return this.f58954n;
    }

    public String getConsentChangeReason() {
        return this.f58955o;
    }

    public String getCurrentPrivacyPolicyLink() {
        return this.f58951k;
    }

    public String getCurrentPrivacyPolicyVersion() {
        return this.f58950j;
    }

    public String getCurrentVendorListIabFormat() {
        return this.f58952l;
    }

    public String getCurrentVendorListIabHash() {
        return this.f58953m;
    }

    public String getCurrentVendorListLink() {
        return this.f58949i;
    }

    public String getCurrentVendorListVersion() {
        return this.f58948h;
    }

    public boolean isForceExplicitNo() {
        return this.f58943c;
    }

    public boolean isForceGdprApplies() {
        return this.f58947g;
    }

    public boolean isGdprRegion() {
        return this.f58942b;
    }

    public boolean isInvalidateConsent() {
        return this.f58944d;
    }

    public boolean isReacquireConsent() {
        return this.f58945e;
    }

    public boolean isWhitelisted() {
        return this.f58946f;
    }
}
