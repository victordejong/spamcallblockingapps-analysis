package com.mopub.common.privacy;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/SyncResponse.class */
public class SyncResponse {

    /* renamed from: a */
    public final boolean f8282a;

    /* renamed from: b */
    public final boolean f8283b;

    /* renamed from: c */
    public final boolean f8284c;

    /* renamed from: d */
    public final boolean f8285d;

    /* renamed from: e */
    public final boolean f8286e;

    /* renamed from: f */
    public final boolean f8287f;
    @NonNull

    /* renamed from: g */
    public final String f8288g;
    @NonNull

    /* renamed from: h */
    public final String f8289h;
    @NonNull

    /* renamed from: i */
    public final String f8290i;
    @NonNull

    /* renamed from: j */
    public final String f8291j;
    @Nullable

    /* renamed from: k */
    public final String f8292k;
    @NonNull

    /* renamed from: l */
    public final String f8293l;
    @Nullable

    /* renamed from: m */
    public final String f8294m;
    @Nullable

    /* renamed from: n */
    public final String f8295n;
    @Nullable

    /* renamed from: o */
    public final String f8296o;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/SyncResponse$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public String f8297a;

        /* renamed from: b */
        public String f8298b;

        /* renamed from: c */
        public String f8299c;

        /* renamed from: d */
        public String f8300d;

        /* renamed from: e */
        public String f8301e;

        /* renamed from: f */
        public String f8302f;

        /* renamed from: g */
        public String f8303g;

        /* renamed from: h */
        public String f8304h;

        /* renamed from: i */
        public String f8305i;

        /* renamed from: j */
        public String f8306j;

        /* renamed from: k */
        public String f8307k;

        /* renamed from: l */
        public String f8308l;

        /* renamed from: m */
        public String f8309m;

        /* renamed from: n */
        public String f8310n;

        /* renamed from: o */
        public String f8311o;

        public SyncResponse build() {
            return new SyncResponse(this.f8297a, this.f8298b, this.f8299c, this.f8300d, this.f8301e, this.f8302f, this.f8303g, this.f8304h, this.f8305i, this.f8306j, this.f8307k, this.f8308l, this.f8309m, this.f8310n, this.f8311o);
        }

        public Builder setCallAgainAfterSecs(@Nullable String str) {
            this.f8309m = str;
            return this;
        }

        public Builder setConsentChangeReason(@Nullable String str) {
            this.f8311o = str;
            return this;
        }

        public Builder setCurrentPrivacyPolicyLink(@NonNull String str) {
            this.f8306j = str;
            return this;
        }

        public Builder setCurrentPrivacyPolicyVersion(@NonNull String str) {
            this.f8305i = str;
            return this;
        }

        public Builder setCurrentVendorListIabFormat(@Nullable String str) {
            this.f8307k = str;
            return this;
        }

        public Builder setCurrentVendorListIabHash(@NonNull String str) {
            this.f8308l = str;
            return this;
        }

        public Builder setCurrentVendorListLink(@NonNull String str) {
            this.f8304h = str;
            return this;
        }

        public Builder setCurrentVendorListVersion(@NonNull String str) {
            this.f8303g = str;
            return this;
        }

        public Builder setExtras(@Nullable String str) {
            this.f8310n = str;
            return this;
        }

        public Builder setForceExplicitNo(@Nullable String str) {
            this.f8298b = str;
            return this;
        }

        public Builder setForceGdprApplies(@Nullable String str) {
            this.f8302f = str;
            return this;
        }

        public Builder setInvalidateConsent(@Nullable String str) {
            this.f8299c = str;
            return this;
        }

        public Builder setIsGdprRegion(@NonNull String str) {
            this.f8297a = str;
            return this;
        }

        public Builder setIsWhitelisted(@NonNull String str) {
            this.f8301e = str;
            return this;
        }

        public Builder setReacquireConsent(@Nullable String str) {
            this.f8300d = str;
            return this;
        }
    }

    public SyncResponse(@NonNull String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @NonNull String str5, @Nullable String str6, @NonNull String str7, @NonNull String str8, @NonNull String str9, @NonNull String str10, @Nullable String str11, @NonNull String str12, @Nullable String str13, @Nullable String str14, @Nullable String str15) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str5);
        Preconditions.checkNotNull(str7);
        Preconditions.checkNotNull(str8);
        Preconditions.checkNotNull(str9);
        Preconditions.checkNotNull(str10);
        Preconditions.checkNotNull(str12);
        this.f8282a = !"0".equals(str);
        this.f8283b = "1".equals(str2);
        this.f8284c = "1".equals(str3);
        this.f8285d = "1".equals(str4);
        this.f8286e = "1".equals(str5);
        this.f8287f = "1".equals(str6);
        this.f8288g = str7;
        this.f8289h = str8;
        this.f8290i = str9;
        this.f8291j = str10;
        this.f8292k = str11;
        this.f8293l = str12;
        this.f8294m = str13;
        this.f8295n = str14;
        this.f8296o = str15;
    }

    @Nullable
    /* renamed from: a */
    public String m30664a() {
        return this.f8295n;
    }

    @Nullable
    public String getCallAgainAfterSecs() {
        return this.f8294m;
    }

    @Nullable
    public String getConsentChangeReason() {
        return this.f8296o;
    }

    @NonNull
    public String getCurrentPrivacyPolicyLink() {
        return this.f8291j;
    }

    @NonNull
    public String getCurrentPrivacyPolicyVersion() {
        return this.f8290i;
    }

    @Nullable
    public String getCurrentVendorListIabFormat() {
        return this.f8292k;
    }

    @NonNull
    public String getCurrentVendorListIabHash() {
        return this.f8293l;
    }

    @NonNull
    public String getCurrentVendorListLink() {
        return this.f8289h;
    }

    @NonNull
    public String getCurrentVendorListVersion() {
        return this.f8288g;
    }

    public boolean isForceExplicitNo() {
        return this.f8283b;
    }

    public boolean isForceGdprApplies() {
        return this.f8287f;
    }

    public boolean isGdprRegion() {
        return this.f8282a;
    }

    public boolean isInvalidateConsent() {
        return this.f8284c;
    }

    public boolean isReacquireConsent() {
        return this.f8285d;
    }

    public boolean isWhitelisted() {
        return this.f8286e;
    }
}
