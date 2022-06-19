package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayr.class */
final class zzayr implements Runnable {
    public final /* synthetic */ zzays zza;

    public zzayr(zzays zzaysVar) {
        this.zza = zzaysVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        boolean z2;
        List<zzayt> list;
        obj = this.zza.zzc;
        synchronized (obj) {
            z = this.zza.zzd;
            if (z) {
                z2 = this.zza.zze;
                if (z2) {
                    this.zza.zzd = false;
                    zzciz.zze("App went background");
                    list = this.zza.zzf;
                    for (zzayt zzaytVar : list) {
                        try {
                            zzaytVar.zza(false);
                        } catch (Exception e) {
                            zzciz.zzh("", e);
                        }
                    }
                }
            }
            zzciz.zze("App is still foreground");
        }
    }
}
