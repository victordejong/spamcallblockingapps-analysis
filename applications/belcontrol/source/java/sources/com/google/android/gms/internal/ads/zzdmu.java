package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmu.class */
public final class zzdmu {
    private final Clock zzbqg;
    private final Object lock = new Object();
    @GuardedBy("lock")
    private volatile int zzhiw = zzdmx.zzhkb;
    private volatile long zzecz = 0;

    public zzdmu(Clock clock) {
        this.zzbqg = clock;
    }

    private final void zzauw() {
        long currentTimeMillis = this.zzbqg.currentTimeMillis();
        synchronized (this.lock) {
            if (this.zzhiw == zzdmx.zzhkd) {
                if (this.zzecz + ((Long) zzwr.zzqr().zzd(zzabp.zzcxl)).longValue() <= currentTimeMillis) {
                    this.zzhiw = zzdmx.zzhkb;
                }
            }
        }
    }

    private final void zzr(int i, int i2) {
        zzauw();
        long currentTimeMillis = this.zzbqg.currentTimeMillis();
        synchronized (this.lock) {
            if (this.zzhiw != i) {
                return;
            }
            this.zzhiw = i2;
            if (this.zzhiw == zzdmx.zzhkd) {
                this.zzecz = currentTimeMillis;
            }
        }
    }

    public final boolean zzaux() {
        boolean z;
        synchronized (this.lock) {
            zzauw();
            z = this.zzhiw == zzdmx.zzhkc;
        }
        return z;
    }

    public final boolean zzauy() {
        boolean z;
        synchronized (this.lock) {
            zzauw();
            z = this.zzhiw == zzdmx.zzhkd;
        }
        return z;
    }

    public final void zzbl(boolean z) {
        int i;
        int i2;
        if (z) {
            i = zzdmx.zzhkb;
            i2 = zzdmx.zzhkc;
        } else {
            i = zzdmx.zzhkc;
            i2 = zzdmx.zzhkb;
        }
        zzr(i, i2);
    }

    public final void zzxo() {
        zzr(zzdmx.zzhkc, zzdmx.zzhkd);
    }
}
