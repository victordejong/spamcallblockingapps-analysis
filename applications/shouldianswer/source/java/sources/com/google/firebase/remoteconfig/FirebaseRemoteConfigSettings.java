package com.google.firebase.remoteconfig;

import com.google.android.gms.internal.firebase_remote_config.zzes;
/* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/FirebaseRemoteConfigSettings.class */
public class FirebaseRemoteConfigSettings {
    private final boolean zzjq;
    private final long zzjr;
    private final long zzjs;

    /* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder.class */
    public static class Builder {
        private boolean zzjq = false;
        private long zzjr = 5;
        private long zzjs = zzes.zzla;

        public FirebaseRemoteConfigSettings build() {
            return new FirebaseRemoteConfigSettings(this);
        }

        @Deprecated
        public Builder setDeveloperModeEnabled(boolean z) {
            this.zzjq = z;
            return this;
        }

        public Builder setFetchTimeoutInSeconds(long j) {
            if (j >= 0) {
                this.zzjr = j;
                return this;
            }
            throw new IllegalArgumentException(String.format("Fetch connection timeout has to be a non-negative number. %d is an invalid argument", Long.valueOf(j)));
        }

        public Builder setMinimumFetchIntervalInSeconds(long j) {
            if (j >= 0) {
                this.zzjs = j;
                return this;
            }
            StringBuilder sb = new StringBuilder(109);
            sb.append("Minimum interval between fetches has to be a non-negative number. ");
            sb.append(j);
            sb.append(" is an invalid argument");
            throw new IllegalArgumentException(sb.toString());
        }
    }

    private FirebaseRemoteConfigSettings(Builder builder) {
        this.zzjq = builder.zzjq;
        this.zzjr = builder.zzjr;
        this.zzjs = builder.zzjs;
    }

    public long getFetchTimeoutInSeconds() {
        return this.zzjr;
    }

    public long getMinimumFetchIntervalInSeconds() {
        return this.zzjs;
    }

    @Deprecated
    public boolean isDeveloperModeEnabled() {
        return this.zzjq;
    }

    public Builder toBuilder() {
        Builder builder = new Builder();
        builder.setDeveloperModeEnabled(isDeveloperModeEnabled());
        builder.setFetchTimeoutInSeconds(getFetchTimeoutInSeconds());
        builder.setMinimumFetchIntervalInSeconds(getMinimumFetchIntervalInSeconds());
        return builder;
    }
}
