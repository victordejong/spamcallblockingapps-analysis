package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfbp.class */
public final class zzfbp implements zzfwm<zzdmw> {
    public final /* synthetic */ zzepm zza;
    public final /* synthetic */ zzfje zzb;
    public final /* synthetic */ zzdnt zzc;
    public final /* synthetic */ zzfbq zzd;

    public zzfbp(zzfbq zzfbqVar, zzepm zzepmVar, zzfje zzfjeVar, zzdnt zzdntVar) {
        this.zzd = zzfbqVar;
        this.zza = zzepmVar;
        this.zzb = zzfjeVar;
        this.zzc = zzdntVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        zzfjg zzfjgVar;
        Executor executor;
        Executor executor2;
        final zzbew zza = this.zzc.zza().zza(th);
        synchronized (this.zzd) {
            this.zzd.zzi = null;
            this.zzc.zzb().zza(zza);
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfX)).booleanValue()) {
                executor = this.zzd.zzb;
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbn
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzeox zzeoxVar;
                        zzfbp zzfbpVar = zzfbp.this;
                        zzbew zzbewVar = zza;
                        zzeoxVar = zzfbpVar.zzd.zzd;
                        zzeoxVar.zza(zzbewVar);
                    }
                });
                executor2 = this.zzd.zzb;
                executor2.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbo
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzfcq zzfcqVar;
                        zzfbp zzfbpVar = zzfbp.this;
                        zzbew zzbewVar = zza;
                        zzfcqVar = zzfbpVar.zzd.zze;
                        zzfcqVar.zza(zzbewVar);
                    }
                });
            }
            zzfeu.zzb(zza.zza, th, "InterstitialAdLoader.onFailure");
            if (this.zzb != null) {
                zzfjgVar = this.zzd.zzg;
                zzfje zzfjeVar = this.zzb;
                zzfjeVar.zzc(zza);
                zzfjeVar.zzg(false);
                zzfjgVar.zza(zzfjeVar.zzi());
            }
            this.zza.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(zzdmw zzdmwVar) {
        zzfjg zzfjgVar;
        Executor executor;
        Executor executor2;
        zzeox zzeoxVar;
        zzfcq zzfcqVar;
        zzdmw zzdmwVar2 = zzdmwVar;
        synchronized (this.zzd) {
            this.zzd.zzi = null;
            zzblb<Boolean> zzblbVar = zzblj.zzfX;
            if (((Boolean) zzbgq.zzc().zzb(zzblbVar)).booleanValue()) {
                zzdiz zzn = zzdmwVar2.zzn();
                zzeoxVar = this.zzd.zzd;
                zzn.zza(zzeoxVar);
                zzfcqVar = this.zzd.zze;
                zzn.zzd(zzfcqVar);
            }
            this.zza.zzb(zzdmwVar2);
            if (((Boolean) zzbgq.zzc().zzb(zzblbVar)).booleanValue()) {
                executor = this.zzd.zzb;
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbl
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzeox zzeoxVar2;
                        zzeoxVar2 = zzfbp.this.zzd.zzd;
                        zzeoxVar2.zzn();
                    }
                });
                executor2 = this.zzd.zzb;
                executor2.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbm
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzfcq zzfcqVar2;
                        zzfcqVar2 = zzfbp.this.zzd.zze;
                        zzfcqVar2.zzn();
                    }
                });
            }
            if (this.zzb != null) {
                zzfjgVar = this.zzd.zzg;
                zzfje zzfjeVar = this.zzb;
                zzfjeVar.zzd(zzdmwVar2.zzp().zzb);
                zzfjeVar.zze(zzdmwVar2.zzl().zze());
                zzfjeVar.zzg(true);
                zzfjgVar.zza(zzfjeVar.zzi());
            }
        }
    }
}
