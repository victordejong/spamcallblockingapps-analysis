package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcru.class */
public final class zzcru implements zzcrj<zzblq> {
    private final Context context;
    private final zzazn zzboz;
    private final Executor zzfsj;
    private final zzdnp zzfwy;
    private final zzchq zzggk;
    private final zzblk zzgte;

    public zzcru(zzblk zzblkVar, Context context, Executor executor, zzchq zzchqVar, zzdnp zzdnpVar, zzazn zzaznVar) {
        this.context = context;
        this.zzgte = zzblkVar;
        this.zzfsj = executor;
        this.zzggk = zzchqVar;
        this.zzfwy = zzdnpVar;
        this.zzboz = zzaznVar;
    }

    public final /* synthetic */ zzdzw zza(zzdmw zzdmwVar, zzdnl zzdnlVar, zzcig zzcigVar, Object obj) throws Exception {
        zzbeb zza = this.zzggk.zza(this.zzfwy.zzbpo, zzdmwVar, zzdnlVar.zzhks.zzess);
        zza.zzbb(zzdmwVar.zzdwz);
        zzcigVar.zzc(this.context, zza.getView());
        zzbaa zzbaaVar = new zzbaa();
        zzbli zza2 = this.zzgte.zza(new zzboj(zzdnlVar, zzdmwVar, null), new zzbyz(new zzcsa(this.zzboz, zzbaaVar, zzdmwVar, zza, this.zzfwy), zza), new zzblh(zzdmwVar.zzfto));
        zza2.zzahe().zza(zza, false);
        zzbaaVar.set(zza2);
        zza2.zzagq().zza(new zzbse(zza) { // from class: com.google.android.gms.internal.ads.zzcrv
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
        return zzdzk.zzb(zzchs.zza(zza, zzdmwVar.zzhjg.zzdsw, zzdmwVar.zzhjg.zzdsy), new zzdvz(this, zza, zzdmwVar, zza2) { // from class: com.google.android.gms.internal.ads.zzcry
            private final zzdmw zzfva;
            private final zzbeb zzggw;
            private final zzcru zzgta;
            private final zzbli zzgth;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgta = this;
                this.zzggw = zza;
                this.zzfva = zzdmwVar;
                this.zzgth = zza2;
            }

            @Override // com.google.android.gms.internal.ads.zzdvz
            public final Object apply(Object obj2) {
                zzbeb zzbebVar = this.zzggw;
                zzdmw zzdmwVar2 = this.zzfva;
                zzbli zzbliVar = this.zzgth;
                if (zzdmwVar2.zzdxt) {
                    zzbebVar.zzadk();
                }
                zzbebVar.zzacr();
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcoz)).booleanValue()) {
                    zzbebVar.onPause();
                }
                return zzbliVar.zzahd();
            }
        }, this.zzfsj);
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnlVar, zzdmw zzdmwVar) {
        return (zzdmwVar.zzhjg == null || zzdmwVar.zzhjg.zzdsy == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<zzblq> zzb(zzdnl zzdnlVar, zzdmw zzdmwVar) {
        zzcig zzcigVar = new zzcig();
        zzdzw<zzblq> zzb = zzdzk.zzb(zzdzk.zzag(null), new zzdyu(this, zzdmwVar, zzdnlVar, zzcigVar) { // from class: com.google.android.gms.internal.ads.zzcrt
            private final zzcru zzgta;
            private final zzdmw zzgtb;
            private final zzdnl zzgtc;
            private final zzcig zzgtd;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgta = this;
                this.zzgtb = zzdmwVar;
                this.zzgtc = zzdnlVar;
                this.zzgtd = zzcigVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return this.zzgta.zza(this.zzgtb, this.zzgtc, this.zzgtd, obj);
            }
        }, this.zzfsj);
        zzb.addListener(zzcrw.zza(zzcigVar), this.zzfsj);
        return zzb;
    }
}
