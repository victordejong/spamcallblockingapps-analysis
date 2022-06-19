package com.google.android.ump;

import android.content.Context;
import com.google.android.gms.internal.consent_sdk.zzbz;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/ump/ConsentDebugSettings.class */
public class ConsentDebugSettings {
    private final boolean zza;
    private final int zzb;

    /* loaded from: classes2-dex2jar.jar:com/google/android/ump/ConsentDebugSettings$Builder.class */
    public static class Builder {
        private final Context zzb;
        private boolean zzd;
        private final List<String> zza = new ArrayList();
        private int zzc = 0;

        public Builder(Context context) {
            this.zzb = context.getApplicationContext();
        }

        public Builder addTestDeviceHashedId(String str) {
            this.zza.add(str);
            return this;
        }

        public ConsentDebugSettings build() {
            boolean z = false;
            if ((zzbz.zza() || this.zza.contains(zzbz.zza(this.zzb))) || this.zzd) {
                z = true;
            }
            return new ConsentDebugSettings(z, this);
        }

        public Builder setDebugGeography(int i) {
            this.zzc = i;
            return this;
        }

        public Builder setForceTesting(boolean z) {
            this.zzd = z;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2-dex2jar.jar:com/google/android/ump/ConsentDebugSettings$DebugGeography.class */
    public @interface DebugGeography {
        public static final int DEBUG_GEOGRAPHY_DISABLED = 0;
        public static final int DEBUG_GEOGRAPHY_EEA = 1;
        public static final int DEBUG_GEOGRAPHY_NOT_EEA = 2;
    }

    private ConsentDebugSettings(boolean z, Builder builder) {
        this.zza = z;
        this.zzb = builder.zzc;
    }

    public int getDebugGeography() {
        return this.zzb;
    }

    public boolean isTestDevice() {
        return this.zza;
    }
}
