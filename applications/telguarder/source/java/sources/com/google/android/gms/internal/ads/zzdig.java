package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdig.class */
public final class zzdig implements zzdzl<AppOpenAd> {
    private final /* synthetic */ zzcze zzgzg;
    private final /* synthetic */ zzdii zzhfo;
    final /* synthetic */ zzdif zzhfp;

    public zzdig(zzdif zzdifVar, zzcze zzczeVar, zzdii zzdiiVar) {
        this.zzhfp = zzdifVar;
        this.zzgzg = zzczeVar;
        this.zzhfo = zzdiiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(Object obj) {
        zzdil zzdilVar;
        zzbnt zzbntVar = (zzbnt) obj;
        synchronized (this.zzhfp) {
            this.zzhfp.zzhfn = null;
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczt)).booleanValue()) {
                zzbve zzakt = zzbntVar.zzakt();
                zzdilVar = this.zzhfp.zzhfl;
                zzakt.zza(zzdilVar);
            }
            this.zzgzg.onSuccess(zzbntVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzdkn zzdknVar;
        zzdil zzdilVar;
        zzbqy zzb;
        Executor executor;
        zzdknVar = this.zzhfp.zzhfm;
        zzbld zzbldVar = (zzbld) zzdknVar.zzaun();
        zzvg zza = zzbldVar == null ? zzdok.zza(th, (zzcrq) null) : zzbldVar.zzagj().zze(th);
        synchronized (this.zzhfp) {
            this.zzhfp.zzhfn = null;
            if (zzbldVar != null) {
                zzbldVar.zzagk().zzc(zza);
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczt)).booleanValue()) {
                    executor = this.zzhfp.zzfsj;
                    executor.execute(new Runnable(this, zza) { // from class: com.google.android.gms.internal.ads.zzdij
                        private final zzvg zzgzk;
                        private final zzdig zzhfq;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.zzhfq = this;
                            this.zzgzk = zza;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            zzdil zzdilVar2;
                            zzdig zzdigVar = this.zzhfq;
                            zzvg zzvgVar2 = this.zzgzk;
                            zzdilVar2 = zzdigVar.zzhfp.zzhfl;
                            zzdilVar2.zzc(zzvgVar2);
                        }
                    });
                }
            } else {
                zzdilVar = this.zzhfp.zzhfl;
                zzdilVar.zzc(zza);
                zzb = this.zzhfp.zzb(this.zzhfo);
                ((zzbld) zzb.zzagm()).zzagj().zzalc().zzalx();
            }
            zzdod.zza(zza.errorCode, th, "AppOpenAdLoader.onFailure");
            this.zzgzg.zzasi();
        }
    }
}
