package com.google.android.ump;
/* loaded from: classes2-dex2jar.jar:com/google/android/ump/ConsentRequestParameters.class */
public class ConsentRequestParameters {
    private final boolean zza;
    private final int zzb;
    private final String zzc;
    private final String zzd;
    private final String zze;
    private final ConsentDebugSettings zzf;

    /* loaded from: classes2-dex2jar.jar:com/google/android/ump/ConsentRequestParameters$Builder.class */
    public static final class Builder {
        private boolean zza;
        private int zzb = 0;
        private String zzc;
        private ConsentDebugSettings zzd;

        public final ConsentRequestParameters build() {
            return new ConsentRequestParameters(this);
        }

        public final Builder setAdMobAppId(String str) {
            this.zzc = str;
            return this;
        }

        public final Builder setConsentDebugSettings(ConsentDebugSettings consentDebugSettings) {
            this.zzd = consentDebugSettings;
            return this;
        }

        public final Builder setTagForUnderAgeOfConsent(boolean z) {
            this.zza = z;
            return this;
        }
    }

    private ConsentRequestParameters(Builder builder) {
        this.zza = builder.zza;
        this.zzc = null;
        this.zzb = 0;
        this.zzd = null;
        this.zze = builder.zzc;
        this.zzf = builder.zzd;
    }

    public ConsentDebugSettings getConsentDebugSettings() {
        return this.zzf;
    }

    public boolean isTagForUnderAgeOfConsent() {
        return this.zza;
    }

    public final String zza() {
        return this.zze;
    }
}
