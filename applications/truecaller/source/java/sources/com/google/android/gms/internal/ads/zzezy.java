package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzezy.class */
public final class zzezy {
    private final Clock zza;
    private final Object zzb = new Object();
    private volatile int zzd = 1;
    private volatile long zzc = 0;

    public zzezy(Clock clock) {
        this.zza = clock;
    }

    private final void zze() {
        long mo38787c = this.zza.mo38787c();
        synchronized (this.zzb) {
            if (this.zzd == 3) {
                if (this.zzc + ((Long) zzbet.zzc().zzc(zzbjl.zzel)).longValue() <= mo38787c) {
                    this.zzd = 1;
                }
            }
        }
    }

    private final void zzf(int i, int i2) {
        zze();
        long mo38787c = this.zza.mo38787c();
        synchronized (this.zzb) {
            if (this.zzd != i) {
                return;
            }
            this.zzd = i2;
            if (this.zzd == 3) {
                this.zzc = mo38787c;
            }
        }
    }

    public final void zza(boolean z) {
        if (z) {
            zzf(1, 2);
        } else {
            zzf(2, 1);
        }
    }

    public final boolean zzb() {
        boolean z;
        synchronized (this.zzb) {
            zze();
            z = this.zzd == 2;
        }
        return z;
    }

    public final boolean zzc() {
        boolean z;
        synchronized (this.zzb) {
            zze();
            z = this.zzd == 3;
        }
        return z;
    }

    public final void zzd() {
        zzf(2, 3);
    }
}
