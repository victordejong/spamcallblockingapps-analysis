package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeyq.class */
public final class zzeyq implements zzfwm {
    public final /* synthetic */ zzepm zza;
    public final /* synthetic */ zzfje zzb;
    public final /* synthetic */ zzeys zzc;
    public final /* synthetic */ zzeyt zzd;

    public zzeyq(zzeyt zzeytVar, zzepm zzepmVar, zzfje zzfjeVar, zzeys zzeysVar) {
        this.zzd = zzeytVar;
        this.zza = zzepmVar;
        this.zzb = zzfjeVar;
        this.zzc = zzeysVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        zzfbc zzfbcVar;
        zzfjg zzfjgVar;
        zzezj zzezjVar;
        zzddz zzm;
        Executor executor;
        zzfbcVar = this.zzd.zze;
        zzcye zzcyeVar = (zzcye) zzfbcVar.zzd();
        zzbew zzb = zzcyeVar == null ? zzfey.zzb(th, null) : zzcyeVar.zzb().zza(th);
        synchronized (this.zzd) {
            this.zzd.zzi = null;
            if (zzcyeVar != null) {
                zzcyeVar.zzc().zza(zzb);
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfW)).booleanValue()) {
                    executor = this.zzd.zzc;
                    final zzbew zzbewVar = zzb;
                    executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeyp
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzezj zzezjVar2;
                            zzeyq zzeyqVar = zzeyq.this;
                            zzbew zzbewVar2 = zzbewVar;
                            zzezjVar2 = zzeyqVar.zzd.zzd;
                            zzezjVar2.zza(zzbewVar2);
                        }
                    });
                }
            } else {
                zzezjVar = this.zzd.zzd;
                zzezjVar.zza(zzb);
                zzm = this.zzd.zzm(this.zzc);
                ((zzcye) zzm.zzh()).zzb().zzc().zzb();
            }
            zzfeu.zzb(zzb.zza, th, "AppOpenAdLoader.onFailure");
            this.zza.zza();
            if (this.zzb != null) {
                zzfjgVar = this.zzd.zzg;
                zzfje zzfjeVar = this.zzb;
                zzfjeVar.zzc(zzb);
                zzfjeVar.zzg(false);
                zzfjgVar.zza(zzfjeVar.zzi());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfjg zzfjgVar;
        zzezj zzezjVar;
        zzdav zzdavVar = (zzdav) obj;
        synchronized (this.zzd) {
            this.zzd.zzi = null;
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfW)).booleanValue()) {
                zzdiz zzn = zzdavVar.zzn();
                zzezjVar = this.zzd.zzd;
                zzn.zzb(zzezjVar);
            }
            this.zza.zzb(zzdavVar);
            if (this.zzb != null) {
                zzfjgVar = this.zzd.zzg;
                zzfje zzfjeVar = this.zzb;
                zzfjeVar.zzd(zzdavVar.zzp().zzb);
                zzfjeVar.zze(zzdavVar.zzl().zze());
                zzfjeVar.zzg(true);
                zzfjgVar.zza(zzfjeVar.zzi());
            }
        }
    }
}
