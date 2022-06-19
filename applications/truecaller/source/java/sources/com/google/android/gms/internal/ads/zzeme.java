package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeme.class */
public final class zzeme implements zzfrz<zzcxg> {
    public final /* synthetic */ zzelx zza;
    public final /* synthetic */ zzdlb zzb;
    public final /* synthetic */ zzemf zzc;

    public zzeme(zzemf zzemfVar, zzelx zzelxVar, zzdlb zzdlbVar) {
        this.zzc = zzemfVar;
        this.zza = zzelxVar;
        this.zzb = zzdlbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        zzcoj zzcojVar;
        zzbcz zzh = this.zzb.zzR().zzh(th);
        this.zzb.zzS().zzbD(zzh);
        zzcojVar = this.zzc.zzb;
        zzcojVar.zze().execute(new Runnable(this, zzh) { // from class: com.google.android.gms.internal.ads.zzemd
            private final zzeme zza;
            private final zzbcz zzb;

            {
                this.zza = this;
                this.zzb = zzh;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzelv zzelvVar;
                zzeme zzemeVar = this.zza;
                zzbcz zzbczVar = this.zzb;
                zzelvVar = zzemeVar.zzc.zzd;
                zzelvVar.zze().zzbD(zzbczVar);
            }
        });
        zzfbh.zza(zzh.zza, th, "NativeAdLoader.onFailure");
        this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(zzcxg zzcxgVar) {
        zzelv zzelvVar;
        zzcoj zzcojVar;
        zzcxg zzcxgVar2 = zzcxgVar;
        synchronized (this.zzc) {
            zzdfj zzo = zzcxgVar2.zzo();
            zzelvVar = this.zzc.zzd;
            zzo.zza(zzelvVar.zzc());
            this.zza.zzb(zzcxgVar2);
            zzcojVar = this.zzc.zzb;
            zzcojVar.zze().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzemc
                private final zzeme zza;

                {
                    this.zza = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzelv zzelvVar2;
                    zzelvVar2 = this.zza.zzc.zzd;
                    zzelvVar2.zzd().zzf();
                }
            });
        }
    }
}
