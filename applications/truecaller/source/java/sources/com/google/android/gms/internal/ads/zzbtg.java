package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbtg.class */
public final class zzbtg implements Runnable {
    public final /* synthetic */ zzbtr zza;
    public final /* synthetic */ zzbsn zzb;
    public final /* synthetic */ zzbts zzc;

    public zzbtg(zzbts zzbtsVar, zzbtr zzbtrVar, zzbsn zzbsnVar) {
        this.zzc = zzbtsVar;
        this.zza = zzbtrVar;
        this.zzb = zzbsnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        obj = this.zzc.zza;
        synchronized (obj) {
            if (this.zza.zzi() != -1 && this.zza.zzi() != 1) {
                this.zza.zzh();
                zzchg.zze.execute(zzbtf.zza(this.zzb));
                zze.zza("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
