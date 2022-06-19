package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayt.class */
public final class zzayt {
    private final Object lock;
    private volatile int zzecy;
    private volatile long zzecz;

    private zzayt() {
        this.lock = new Object();
        this.zzecy = zzays.zzecu;
        this.zzecz = 0L;
    }

    public /* synthetic */ zzayt(zzayq zzayqVar) {
        this();
    }

    public final void zzxo() {
        int i;
        long currentTimeMillis = zzr.zzky().currentTimeMillis();
        synchronized (this.lock) {
            int i2 = this.zzecy;
            i = zzays.zzecw;
            if (i2 == i) {
                if (this.zzecz + ((Long) zzwr.zzqr().zzd(zzabp.zzcxl)).longValue() <= currentTimeMillis) {
                    this.zzecy = zzays.zzecu;
                }
            }
        }
        long currentTimeMillis2 = zzr.zzky().currentTimeMillis();
        synchronized (this.lock) {
            if (this.zzecy != 2) {
                return;
            }
            this.zzecy = 3;
            if (this.zzecy == i) {
                this.zzecz = currentTimeMillis2;
            }
        }
    }
}
