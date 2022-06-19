package com.mopub.common.privacy;

import com.amazon.device.ads.DtbConstants;
import com.mopub.common.Preconditions;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/SyncResponse.class */
public class SyncResponse {

    /* renamed from: a */
    public final boolean f8666a;

    /* renamed from: b */
    public final boolean f8667b;

    /* renamed from: c */
    public final boolean f8668c;

    /* renamed from: d */
    public final boolean f8669d;

    /* renamed from: e */
    public final boolean f8670e;

    /* renamed from: f */
    public final boolean f8671f;

    /* renamed from: g */
    public final String f8672g;

    /* renamed from: h */
    public final String f8673h;

    /* renamed from: i */
    public final String f8674i;

    /* renamed from: j */
    public final String f8675j;

    /* renamed from: k */
    public final String f8676k;

    /* renamed from: l */
    public final String f8677l;

    /* renamed from: m */
    public final String f8678m;

    /* renamed from: n */
    public final String f8679n;

    /* renamed from: o */
    public final String f8680o;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/SyncResponse$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public String f8681a;

        /* renamed from: b */
        public String f8682b;

        /* renamed from: c */
        public String f8683c;

        /* renamed from: d */
        public String f8684d;

        /* renamed from: e */
        public String f8685e;

        /* renamed from: f */
        public String f8686f;

        /* renamed from: g */
        public String f8687g;

        /* renamed from: h */
        public String f8688h;

        /* renamed from: i */
        public String f8689i;

        /* renamed from: j */
        public String f8690j;

        /* renamed from: k */
        public String f8691k;

        /* renamed from: l */
        public String f8692l;

        /* renamed from: m */
        public String f8693m;

        /* renamed from: n */
        public String f8694n;

        /* renamed from: o */
        public String f8695o;

        public SyncResponse build() {
            return new SyncResponse(this.f8681a, this.f8682b, this.f8683c, this.f8684d, this.f8685e, this.f8686f, this.f8687g, this.f8688h, this.f8689i, this.f8690j, this.f8691k, this.f8692l, this.f8693m, this.f8694n, this.f8695o, null);
        }

        public Builder setCallAgainAfterSecs(String str) {
            this.f8693m = str;
            return this;
        }

        public Builder setConsentChangeReason(String str) {
            this.f8695o = str;
            return this;
        }

        public Builder setCurrentPrivacyPolicyLink(String str) {
            this.f8690j = str;
            return this;
        }

        public Builder setCurrentPrivacyPolicyVersion(String str) {
            this.f8689i = str;
            return this;
        }

        public Builder setCurrentVendorListIabFormat(String str) {
            this.f8691k = str;
            return this;
        }

        public Builder setCurrentVendorListIabHash(String str) {
            this.f8692l = str;
            return this;
        }

        public Builder setCurrentVendorListLink(String str) {
            this.f8688h = str;
            return this;
        }

        public Builder setCurrentVendorListVersion(String str) {
            this.f8687g = str;
            return this;
        }

        public Builder setExtras(String str) {
            this.f8694n = str;
            return this;
        }

        public Builder setForceExplicitNo(String str) {
            this.f8682b = str;
            return this;
        }

        public Builder setForceGdprApplies(String str) {
            this.f8686f = str;
            return this;
        }

        public Builder setInvalidateConsent(String str) {
            this.f8683c = str;
            return this;
        }

        public Builder setIsGdprRegion(String str) {
            this.f8681a = str;
            return this;
        }

        public Builder setIsWhitelisted(String str) {
            this.f8685e = str;
            return this;
        }

        public Builder setReacquireConsent(String str) {
            this.f8684d = str;
            return this;
        }
    }

    public SyncResponse(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, C2655a c2655a) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str5);
        Preconditions.checkNotNull(str7);
        Preconditions.checkNotNull(str8);
        Preconditions.checkNotNull(str9);
        Preconditions.checkNotNull(str10);
        Preconditions.checkNotNull(str12);
        this.f8666a = !DtbConstants.NETWORK_TYPE_UNKNOWN.equals(str);
        this.f8667b = "1".equals(str2);
        this.f8668c = "1".equals(str3);
        this.f8669d = "1".equals(str4);
        this.f8670e = "1".equals(str5);
        this.f8671f = "1".equals(str6);
        this.f8672g = str7;
        this.f8673h = str8;
        this.f8674i = str9;
        this.f8675j = str10;
        this.f8676k = str11;
        this.f8677l = str12;
        this.f8678m = str13;
        this.f8679n = str14;
        this.f8680o = str15;
    }

    public String getCallAgainAfterSecs() {
        return this.f8678m;
    }

    public String getConsentChangeReason() {
        return this.f8680o;
    }

    public String getCurrentPrivacyPolicyLink() {
        return this.f8675j;
    }

    public String getCurrentPrivacyPolicyVersion() {
        return this.f8674i;
    }

    public String getCurrentVendorListIabFormat() {
        return this.f8676k;
    }

    public String getCurrentVendorListIabHash() {
        return this.f8677l;
    }

    public String getCurrentVendorListLink() {
        return this.f8673h;
    }

    public String getCurrentVendorListVersion() {
        return this.f8672g;
    }

    public boolean isForceExplicitNo() {
        return this.f8667b;
    }

    public boolean isForceGdprApplies() {
        return this.f8671f;
    }

    public boolean isGdprRegion() {
        return this.f8666a;
    }

    public boolean isInvalidateConsent() {
        return this.f8668c;
    }

    public boolean isReacquireConsent() {
        return this.f8669d;
    }

    public boolean isWhitelisted() {
        return this.f8670e;
    }
}
