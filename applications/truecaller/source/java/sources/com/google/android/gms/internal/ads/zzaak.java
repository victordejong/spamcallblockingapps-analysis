package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaak.class */
public final class zzaak implements Runnable {
    public final /* synthetic */ zzaal zza;

    public zzaak(zzaal zzaalVar) {
        this.zza = zzaalVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        Object obj2;
        zzfii zzfiiVar;
        obj = this.zza.zzl;
        synchronized (obj) {
            z = this.zza.zzm;
            if (!z) {
                this.zza.zzm = true;
                try {
                    zzaal.zzi(this.zza);
                } catch (Exception e) {
                    zzfiiVar = this.zza.zzh;
                    zzfiiVar.zzc(2023, -1L, e);
                }
                obj2 = this.zza.zzl;
                synchronized (obj2) {
                    this.zza.zzm = false;
                }
            }
        }
    }
}
