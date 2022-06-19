package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcrz.class */
public final class zzcrz implements zzcrj<zzblg> {
    private final Context context;
    private final Executor zzfsj;
    private final zzchq zzggk;
    private final zzbkx zzgti;

    public zzcrz(zzbkx zzbkxVar, Context context, Executor executor, zzchq zzchqVar) {
        this.context = context;
        this.zzgti = zzbkxVar;
        this.zzfsj = executor;
        this.zzggk = zzchqVar;
    }

    public final /* synthetic */ zzdzw zza(zzdnl zzdnlVar, zzdmw zzdmwVar, Object obj) throws Exception {
        zzvs zzb = zzdnu.zzb(this.context, zzdmwVar.zzhji);
        zzbeb zza = this.zzggk.zza(zzb, zzdmwVar, zzdnlVar.zzhks.zzess);
        zzbkp zza2 = this.zzgti.zza(new zzboj(zzdnlVar, zzdmwVar, null), new zzbks(zza.getView(), zza, zzdnu.zzh(zzb), zzdmwVar.zzfto, zzdmwVar.zzftp, zzdmwVar.zzftq));
        zza2.zzahe().zza(zza, false);
        zza2.zzagq().zza(new zzbse(zza) { // from class: com.google.android.gms.internal.ads.zzcsb
            private final zzbeb zzeuk;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzeuk = zza;
            }

            @Override // com.google.android.gms.internal.ads.zzbse
            public final void onAdImpression() {
                zzbeb zzbebVar = this.zzeuk;
                if (zzbebVar.zzacx() != null) {
                    zzbebVar.zzacx().zzadv();
                }
            }
        }, zzazp.zzeih);
        zza2.zzahe();
        return zzdzk.zzb(zzchs.zza(zza, zzdmwVar.zzhjg.zzdsw, zzdmwVar.zzhjg.zzdsy), new zzdvz(zza2) { // from class: com.google.android.gms.internal.ads.zzcse
            private final zzbkp zzgtm;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgtm = zza2;
            }

            @Override // com.google.android.gms.internal.ads.zzdvz
            public final Object apply(Object obj2) {
                return this.zzgtm.zzahj();
            }
        }, zzazp.zzeih);
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnlVar, zzdmw zzdmwVar) {
        return (zzdmwVar.zzhjg == null || zzdmwVar.zzhjg.zzdsy == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<zzblg> zzb(zzdnl zzdnlVar, zzdmw zzdmwVar) {
        return zzdzk.zzb(zzdzk.zzag(null), new zzdyu(this, zzdnlVar, zzdmwVar) { // from class: com.google.android.gms.internal.ads.zzcsc
            private final zzdmw zzfva;
            private final zzdnl zzghw;
            private final zzcrz zzgtl;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgtl = this;
                this.zzghw = zzdnlVar;
                this.zzfva = zzdmwVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return this.zzgtl.zza(this.zzghw, this.zzfva, obj);
            }
        }, this.zzfsj);
    }
}
