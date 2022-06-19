package com.mopub.common.privacy;

import com.mopub.common.Preconditions;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/SyncResponse.class */
public class SyncResponse {

    /* renamed from: a */
    public final boolean f4465a;

    /* renamed from: b */
    public final boolean f4466b;

    /* renamed from: c */
    public final boolean f4467c;

    /* renamed from: d */
    public final boolean f4468d;

    /* renamed from: e */
    public final boolean f4469e;

    /* renamed from: f */
    public final boolean f4470f;

    /* renamed from: g */
    public final String f4471g;

    /* renamed from: h */
    public final String f4472h;

    /* renamed from: i */
    public final String f4473i;

    /* renamed from: j */
    public final String f4474j;

    /* renamed from: k */
    public final String f4475k;

    /* renamed from: l */
    public final String f4476l;

    /* renamed from: m */
    public final String f4477m;

    /* renamed from: n */
    public final String f4478n;

    /* renamed from: o */
    public final String f4479o;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/SyncResponse$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public String f4480a;

        /* renamed from: b */
        public String f4481b;

        /* renamed from: c */
        public String f4482c;

        /* renamed from: d */
        public String f4483d;

        /* renamed from: e */
        public String f4484e;

        /* renamed from: f */
        public String f4485f;

        /* renamed from: g */
        public String f4486g;

        /* renamed from: h */
        public String f4487h;

        /* renamed from: i */
        public String f4488i;

        /* renamed from: j */
        public String f4489j;

        /* renamed from: k */
        public String f4490k;

        /* renamed from: l */
        public String f4491l;

        /* renamed from: m */
        public String f4492m;

        /* renamed from: n */
        public String f4493n;

        /* renamed from: o */
        public String f4494o;

        public SyncResponse build() {
            return new SyncResponse(this.f4480a, this.f4481b, this.f4482c, this.f4483d, this.f4484e, this.f4485f, this.f4486g, this.f4487h, this.f4488i, this.f4489j, this.f4490k, this.f4491l, this.f4492m, this.f4493n, this.f4494o);
        }

        public Builder setCallAgainAfterSecs(String str) {
            this.f4492m = str;
            return this;
        }

        public Builder setConsentChangeReason(String str) {
            this.f4494o = str;
            return this;
        }

        public Builder setCurrentPrivacyPolicyLink(String str) {
            this.f4489j = str;
            return this;
        }

        public Builder setCurrentPrivacyPolicyVersion(String str) {
            this.f4488i = str;
            return this;
        }

        public Builder setCurrentVendorListIabFormat(String str) {
            this.f4490k = str;
            return this;
        }

        public Builder setCurrentVendorListIabHash(String str) {
            this.f4491l = str;
            return this;
        }

        public Builder setCurrentVendorListLink(String str) {
            this.f4487h = str;
            return this;
        }

        public Builder setCurrentVendorListVersion(String str) {
            this.f4486g = str;
            return this;
        }

        public Builder setExtras(String str) {
            this.f4493n = str;
            return this;
        }

        public Builder setForceExplicitNo(String str) {
            this.f4481b = str;
            return this;
        }

        public Builder setForceGdprApplies(String str) {
            this.f4485f = str;
            return this;
        }

        public Builder setInvalidateConsent(String str) {
            this.f4482c = str;
            return this;
        }

        public Builder setIsGdprRegion(String str) {
            this.f4480a = str;
            return this;
        }

        public Builder setIsWhitelisted(String str) {
            this.f4484e = str;
            return this;
        }

        public Builder setReacquireConsent(String str) {
            this.f4483d = str;
            return this;
        }
    }

    public SyncResponse(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str5);
        Preconditions.checkNotNull(str7);
        Preconditions.checkNotNull(str8);
        Preconditions.checkNotNull(str9);
        Preconditions.checkNotNull(str10);
        Preconditions.checkNotNull(str12);
        this.f4465a = !"0".equals(str);
        this.f4466b = "1".equals(str2);
        this.f4467c = "1".equals(str3);
        this.f4468d = "1".equals(str4);
        this.f4469e = "1".equals(str5);
        this.f4470f = "1".equals(str6);
        this.f4471g = str7;
        this.f4472h = str8;
        this.f4473i = str9;
        this.f4474j = str10;
        this.f4475k = str11;
        this.f4476l = str12;
        this.f4477m = str13;
        this.f4478n = str14;
        this.f4479o = str15;
    }

    /* renamed from: a */
    public String m3795a() {
        return this.f4478n;
    }

    public String getCallAgainAfterSecs() {
        return this.f4477m;
    }

    public String getConsentChangeReason() {
        return this.f4479o;
    }

    public String getCurrentPrivacyPolicyLink() {
        return this.f4474j;
    }

    public String getCurrentPrivacyPolicyVersion() {
        return this.f4473i;
    }

    public String getCurrentVendorListIabFormat() {
        return this.f4475k;
    }

    public String getCurrentVendorListIabHash() {
        return this.f4476l;
    }

    public String getCurrentVendorListLink() {
        return this.f4472h;
    }

    public String getCurrentVendorListVersion() {
        return this.f4471g;
    }

    public boolean isForceExplicitNo() {
        return this.f4466b;
    }

    public boolean isForceGdprApplies() {
        return this.f4470f;
    }

    public boolean isGdprRegion() {
        return this.f4465a;
    }

    public boolean isInvalidateConsent() {
        return this.f4467c;
    }

    public boolean isReacquireConsent() {
        return this.f4468d;
    }

    public boolean isWhitelisted() {
        return this.f4469e;
    }
}
