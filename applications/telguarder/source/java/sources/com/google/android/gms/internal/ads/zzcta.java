package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcta.class */
public final class zzcta implements zzcrj<zzblv> {
    private final ScheduledExecutorService zzfri;
    private final zzbrp zzgas;
    private final zzdzv zzghl;
    private final zzbmr zzguc;
    private final zzcsg zzgud;

    public zzcta(zzbmr zzbmrVar, zzcsg zzcsgVar, zzbrp zzbrpVar, ScheduledExecutorService scheduledExecutorService, zzdzv zzdzvVar) {
        this.zzguc = zzbmrVar;
        this.zzgud = zzcsgVar;
        this.zzgas = zzbrpVar;
        this.zzfri = scheduledExecutorService;
        this.zzghl = zzdzvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnlVar, zzdmw zzdmwVar) {
        return zzdnlVar.zzhkr.zzfwy.zzavc() != null && this.zzgud.zza(zzdnlVar, zzdmwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<zzblv> zzb(zzdnl zzdnlVar, zzdmw zzdmwVar) {
        return this.zzghl.zze(new Callable(this, zzdnlVar, zzdmwVar) { // from class: com.google.android.gms.internal.ads.zzcsz
            private final zzdmw zzfva;
            private final zzdnl zzghw;
            private final zzcta zzgub;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgub = this;
                this.zzghw = zzdnlVar;
                this.zzfva = zzdmwVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgub.zzc(this.zzghw, this.zzfva);
            }
        });
    }

    public final /* synthetic */ zzblv zzc(zzdnl zzdnlVar, zzdmw zzdmwVar) throws Exception {
        return this.zzguc.zza(new zzboj(zzdnlVar, zzdmwVar, null), new zzbnf(zzdnlVar.zzhkr.zzfwy.zzavc(), new Runnable(this, zzdnlVar, zzdmwVar) { // from class: com.google.android.gms.internal.ads.zzctc
            private final zzdmw zzfva;
            private final zzdnl zzghw;
            private final zzcta zzgub;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgub = this;
                this.zzghw = zzdnlVar;
                this.zzfva = zzdmwVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgub.zzd(this.zzghw, this.zzfva);
            }
        })).zzahu();
    }

    public final /* synthetic */ void zzd(zzdnl zzdnlVar, zzdmw zzdmwVar) {
        zzdzk.zza(zzdzk.zza(this.zzgud.zzb(zzdnlVar, zzdmwVar), zzdmwVar.zzhjq, TimeUnit.SECONDS, this.zzfri), new zzctb(this), this.zzghl);
    }
}
