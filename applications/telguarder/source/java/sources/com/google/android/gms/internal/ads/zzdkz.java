package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdkz.class */
public final class zzdkz implements zzdzl<zzbyy> {
    private final /* synthetic */ zzcze zzgzg;
    private final /* synthetic */ zzbzy zzhhx;
    final /* synthetic */ zzdkx zzhhy;

    public zzdkz(zzdkx zzdkxVar, zzcze zzczeVar, zzbzy zzbzyVar) {
        this.zzhhy = zzdkxVar;
        this.zzgzg = zzczeVar;
        this.zzhhx = zzbzyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzbyy zzbyyVar) {
        Executor executor;
        Executor executor2;
        zzcxy zzcxyVar;
        zzdlh zzdlhVar;
        zzbyy zzbyyVar2 = zzbyyVar;
        synchronized (this.zzhhy) {
            this.zzhhy.zzhgj = null;
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczu)).booleanValue()) {
                zzbve zzakt = zzbyyVar2.zzakt();
                zzcxyVar = this.zzhhy.zzgxy;
                zzbve zza = zzakt.zza(zzcxyVar);
                zzdlhVar = this.zzhhy.zzhhv;
                zza.zza(zzdlhVar);
            }
            this.zzgzg.onSuccess(zzbyyVar2);
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczu)).booleanValue()) {
                executor = this.zzhhy.zzfsj;
                executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdky
                    private final zzdkz zzhhw;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzhhw = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcxy zzcxyVar2;
                        zzcxyVar2 = this.zzhhw.zzhhy.zzgxy;
                        zzcxyVar2.onAdLoaded();
                    }
                });
                executor2 = this.zzhhy.zzfsj;
                executor2.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdlb
                    private final zzdkz zzhhw;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzhhw = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdlh zzdlhVar2;
                        zzdlhVar2 = this.zzhhw.zzhhy.zzhhv;
                        zzdlhVar2.onAdLoaded();
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        Executor executor;
        Executor executor2;
        zzvg zze = this.zzhhx.zzagj().zze(th);
        synchronized (this.zzhhy) {
            this.zzhhy.zzhgj = null;
            this.zzhhx.zzagk().zzc(zze);
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczu)).booleanValue()) {
                executor = this.zzhhy.zzfsj;
                executor.execute(new Runnable(this, zze) { // from class: com.google.android.gms.internal.ads.zzdla
                    private final zzvg zzgzk;
                    private final zzdkz zzhhw;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzhhw = this;
                        this.zzgzk = zze;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcxy zzcxyVar;
                        zzdkz zzdkzVar = this.zzhhw;
                        zzvg zzvgVar = this.zzgzk;
                        zzcxyVar = zzdkzVar.zzhhy.zzgxy;
                        zzcxyVar.zzc(zzvgVar);
                    }
                });
                executor2 = this.zzhhy.zzfsj;
                executor2.execute(new Runnable(this, zze) { // from class: com.google.android.gms.internal.ads.zzdld
                    private final zzvg zzgzk;
                    private final zzdkz zzhhw;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzhhw = this;
                        this.zzgzk = zze;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdlh zzdlhVar;
                        zzdkz zzdkzVar = this.zzhhw;
                        zzvg zzvgVar = this.zzgzk;
                        zzdlhVar = zzdkzVar.zzhhy.zzhhv;
                        zzdlhVar.zzc(zzvgVar);
                    }
                });
            }
            zzdod.zza(zze.errorCode, th, "InterstitialAdLoader.onFailure");
            this.zzgzg.zzasi();
        }
    }
}
