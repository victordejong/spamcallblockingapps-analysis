package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzept.class */
public final class zzept implements zzfwm<zzdav> {
    public final /* synthetic */ zzepm zza;
    public final /* synthetic */ zzfje zzb;
    public final /* synthetic */ zzdop zzc;
    public final /* synthetic */ zzepu zzd;

    public zzept(zzepu zzepuVar, zzepm zzepmVar, zzfje zzfjeVar, zzdop zzdopVar) {
        this.zzd = zzepuVar;
        this.zza = zzepmVar;
        this.zzb = zzfjeVar;
        this.zzc = zzdopVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        zzcqm zzcqmVar;
        zzfjg zzfjgVar;
        final zzbew zza = this.zzc.zza().zza(th);
        this.zzc.zzb().zza(zza);
        zzcqmVar = this.zzd.zzb;
        zzcqmVar.zzC().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeps
            @Override // java.lang.Runnable
            public final void run() {
                zzepk zzepkVar;
                zzept zzeptVar = zzept.this;
                zzbew zzbewVar = zza;
                zzepkVar = zzeptVar.zzd.zzd;
                zzepkVar.zza().zza(zzbewVar);
            }
        });
        zzfeu.zzb(zza.zza, th, "NativeAdLoader.onFailure");
        this.zza.zza();
        if (this.zzb != null) {
            zzfjgVar = this.zzd.zze;
            zzfje zzfjeVar = this.zzb;
            zzfjeVar.zzc(zza);
            zzfjeVar.zzg(false);
            zzfjgVar.zza(zzfjeVar.zzi());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(zzdav zzdavVar) {
        zzepk zzepkVar;
        zzcqm zzcqmVar;
        zzfjg zzfjgVar;
        zzdav zzdavVar2 = zzdavVar;
        synchronized (this.zzd) {
            zzdiz zzn = zzdavVar2.zzn();
            zzepkVar = this.zzd.zzd;
            zzn.zza(zzepkVar.zzd());
            this.zza.zzb(zzdavVar2);
            zzcqmVar = this.zzd.zzb;
            zzcqmVar.zzC().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzepr
                @Override // java.lang.Runnable
                public final void run() {
                    zzepk zzepkVar2;
                    zzepkVar2 = zzept.this.zzd.zzd;
                    zzepkVar2.zzb().zzn();
                }
            });
            if (this.zzb != null) {
                zzfjgVar = this.zzd.zze;
                zzfje zzfjeVar = this.zzb;
                zzfjeVar.zzd(zzdavVar2.zzp().zzb);
                zzfjeVar.zze(zzdavVar2.zzl().zze());
                zzfjeVar.zzg(true);
                zzfjgVar.zza(zzfjeVar.zzi());
            }
        }
    }
}
