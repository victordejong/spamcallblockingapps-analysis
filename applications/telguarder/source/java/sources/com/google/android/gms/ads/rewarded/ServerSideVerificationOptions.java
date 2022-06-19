package com.google.android.gms.ads.rewarded;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/rewarded/ServerSideVerificationOptions.class */
public class ServerSideVerificationOptions {
    private final String zzdzh;
    private final String zzdzi;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder.class */
    public static final class Builder {
        private String zzdzh = "";
        private String zzdzi = "";

        public final ServerSideVerificationOptions build() {
            return new ServerSideVerificationOptions(this);
        }

        public final Builder setCustomData(String str) {
            this.zzdzi = str;
            return this;
        }

        public final Builder setUserId(String str) {
            this.zzdzh = str;
            return this;
        }
    }

    private ServerSideVerificationOptions(Builder builder) {
        this.zzdzh = builder.zzdzh;
        this.zzdzi = builder.zzdzi;
    }

    public String getCustomData() {
        return this.zzdzi;
    }

    public String getUserId() {
        return this.zzdzh;
    }
}
