package com.google.android.gms.ads.rewarded;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/rewarded/ServerSideVerificationOptions.class */
public class ServerSideVerificationOptions {
    private final String zzear;
    private final String zzeas;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder.class */
    public static final class Builder {
        private String zzear = "";
        private String zzeas = "";

        public final ServerSideVerificationOptions build() {
            return new ServerSideVerificationOptions(this);
        }

        public final Builder setCustomData(String str) {
            this.zzeas = str;
            return this;
        }

        public final Builder setUserId(String str) {
            this.zzear = str;
            return this;
        }
    }

    private ServerSideVerificationOptions(Builder builder) {
        this.zzear = builder.zzear;
        this.zzeas = builder.zzeas;
    }

    public String getCustomData() {
        return this.zzeas;
    }

    public String getUserId() {
        return this.zzear;
    }
}
