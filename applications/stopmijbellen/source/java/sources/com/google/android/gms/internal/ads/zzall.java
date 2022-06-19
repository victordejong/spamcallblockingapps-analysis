package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzall.class */
public final class zzall implements Runnable {
    public final /* synthetic */ zzalm zza;

    public zzall(zzalm zzalmVar) {
        this.zza = zzalmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        Object obj2;
        zzfmh zzfmhVar;
        obj = this.zza.zzl;
        synchronized (obj) {
            z = this.zza.zzm;
            if (!z) {
                this.zza.zzm = true;
                try {
                    zzalm.zzj(this.zza);
                } catch (Exception e) {
                    zzfmhVar = this.zza.zzh;
                    zzfmhVar.zzc(2023, -1L, e);
                }
                obj2 = this.zza.zzl;
                synchronized (obj2) {
                    this.zza.zzm = false;
                }
            }
        }
    }
}
