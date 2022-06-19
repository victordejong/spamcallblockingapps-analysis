package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzezj.class */
public final class zzezj implements zzfrz<zzdrw> {
    public final /* synthetic */ zzelx zza;
    public final /* synthetic */ zzezl zzb;
    public final /* synthetic */ zzezm zzc;

    public zzezj(zzezm zzezmVar, zzelx zzelxVar, zzezl zzezlVar) {
        this.zzc = zzezmVar;
        this.zza = zzelxVar;
        this.zzb = zzezlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        zzexo zzexoVar;
        zzezc zzezcVar;
        zzdsa zzh;
        Executor executor;
        zzexoVar = this.zzc.zze;
        zzdsb zzdsbVar = (zzdsb) zzexoVar.zzd();
        zzbcz zzb = zzdsbVar == null ? zzfbm.zzb(th, null) : zzdsbVar.zzP().zzh(th);
        synchronized (this.zzc) {
            if (zzdsbVar != null) {
                zzdsbVar.zzT().zzbD(zzb);
                executor = this.zzc.zzb;
                executor.execute(new Runnable(this, zzb) { // from class: com.google.android.gms.internal.ads.zzezi
                    private final zzezj zza;
                    private final zzbcz zzb;

                    {
                        this.zza = this;
                        this.zzb = zzb;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzezc zzezcVar2;
                        zzezj zzezjVar = this.zza;
                        zzbcz zzbczVar2 = this.zzb;
                        zzezcVar2 = zzezjVar.zzc.zzd;
                        zzezcVar2.zzbD(zzbczVar2);
                    }
                });
            } else {
                zzezcVar = this.zzc.zzd;
                zzezcVar.zzbD(zzb);
                zzh = this.zzc.zzh(this.zzb);
                zzh.zza().zzP().zze().zzp();
            }
            zzfbh.zza(zzb.zza, th, "RewardedAdLoader.onFailure");
            this.zza.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(zzdrw zzdrwVar) {
        zzezc zzezcVar;
        Executor executor;
        zzezc zzezcVar2;
        zzezc zzezcVar3;
        zzdrw zzdrwVar2 = zzdrwVar;
        synchronized (this.zzc) {
            zzdfj zzo = zzdrwVar2.zzo();
            zzezcVar = this.zzc.zzd;
            zzo.zzd(zzezcVar);
            this.zza.zzb(zzdrwVar2);
            executor = this.zzc.zzb;
            zzezcVar2 = this.zzc.zzd;
            zzezcVar2.getClass();
            executor.execute(zzezh.zza(zzezcVar2));
            zzezcVar3 = this.zzc.zzd;
            zzezcVar3.zzu();
        }
    }
}
