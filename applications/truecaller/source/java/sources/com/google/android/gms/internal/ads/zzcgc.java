package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgc.class */
public final class zzcgc {
    private final Object zza = new Object();
    private volatile int zzc = 1;
    private volatile long zzb = 0;

    private zzcgc() {
    }

    public /* synthetic */ zzcgc(zzcgd zzcgdVar) {
    }

    public final void zza() {
        long mo38787c = zzt.zzj().mo38787c();
        synchronized (this.zza) {
            if (this.zzc == 3) {
                if (this.zzb + ((Long) zzbet.zzc().zzc(zzbjl.zzel)).longValue() <= mo38787c) {
                    this.zzc = 1;
                }
            }
        }
        long mo38787c2 = zzt.zzj().mo38787c();
        synchronized (this.zza) {
            if (this.zzc != 2) {
                return;
            }
            this.zzc = 3;
            if (this.zzc == 3) {
                this.zzb = mo38787c2;
            }
        }
    }
}
