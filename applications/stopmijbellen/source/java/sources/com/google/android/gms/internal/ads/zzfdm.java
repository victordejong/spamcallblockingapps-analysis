package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfdm.class */
public final class zzfdm {
    private final Clock zza;
    private final Object zzb = new Object();
    @GuardedBy("lock")
    private volatile int zzd = 1;
    private volatile long zzc = 0;

    public zzfdm(Clock clock) {
        this.zza = clock;
    }

    private final void zze() {
        long currentTimeMillis = this.zza.currentTimeMillis();
        synchronized (this.zzb) {
            if (this.zzd == 3) {
                if (this.zzc + ((Long) zzbgq.zzc().zzb(zzblj.zzes)).longValue() <= currentTimeMillis) {
                    this.zzd = 1;
                }
            }
        }
    }

    private final void zzf(int i, int i2) {
        zze();
        long currentTimeMillis = this.zza.currentTimeMillis();
        synchronized (this.zzb) {
            if (this.zzd != i) {
                return;
            }
            this.zzd = i2;
            if (this.zzd == 3) {
                this.zzc = currentTimeMillis;
            }
        }
    }

    public final void zza() {
        zzf(2, 3);
    }

    public final void zzb(boolean z) {
        if (z) {
            zzf(1, 2);
        } else {
            zzf(2, 1);
        }
    }

    public final boolean zzc() {
        boolean z;
        synchronized (this.zzb) {
            zze();
            z = this.zzd == 3;
        }
        return z;
    }

    public final boolean zzd() {
        boolean z;
        synchronized (this.zzb) {
            zze();
            z = this.zzd == 2;
        }
        return z;
    }
}
