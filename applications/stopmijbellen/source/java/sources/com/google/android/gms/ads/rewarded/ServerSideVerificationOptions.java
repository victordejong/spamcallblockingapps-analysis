package com.google.android.gms.ads.rewarded;

import androidx.annotation.RecentlyNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/rewarded/ServerSideVerificationOptions.class */
public class ServerSideVerificationOptions {
    private final String zza;
    private final String zzb;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder.class */
    public static final class Builder {
        private String zza = "";
        private String zzb = "";

        @RecentlyNonNull
        public ServerSideVerificationOptions build() {
            return new ServerSideVerificationOptions(this, null);
        }

        @RecentlyNonNull
        public Builder setCustomData(@RecentlyNonNull String str) {
            this.zzb = str;
            return this;
        }

        @RecentlyNonNull
        public Builder setUserId(@RecentlyNonNull String str) {
            this.zza = str;
            return this;
        }
    }

    public /* synthetic */ ServerSideVerificationOptions(Builder builder, zzb zzbVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
    }

    @RecentlyNonNull
    public String getCustomData() {
        return this.zzb;
    }

    @RecentlyNonNull
    public String getUserId() {
        return this.zza;
    }
}
