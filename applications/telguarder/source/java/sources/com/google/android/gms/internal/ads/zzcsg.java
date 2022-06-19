package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzad;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsg.class */
public final class zzcsg implements zzcrj<zzblv> {
    private final Context context;
    private final Executor zzfsj;
    private final zzdnp zzfwy;
    private final zzchq zzggk;
    private final zzbmr zzgto;
    private final zzdvz<zzdmw, zzad> zzgtp;

    public zzcsg(zzbmr zzbmrVar, Context context, Executor executor, zzchq zzchqVar, zzdnp zzdnpVar, zzdvz<zzdmw, zzad> zzdvzVar) {
        this.context = context;
        this.zzgto = zzbmrVar;
        this.zzfsj = executor;
        this.zzggk = zzchqVar;
        this.zzfwy = zzdnpVar;
        this.zzgtp = zzdvzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnlVar, zzdmw zzdmwVar) {
        return (zzdmwVar.zzhjg == null || zzdmwVar.zzhjg.zzdsy == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<zzblv> zzb(zzdnl zzdnlVar, zzdmw zzdmwVar) {
        return zzdzk.zzb(zzdzk.zzag(null), new zzdyu(this, zzdnlVar, zzdmwVar) { // from class: com.google.android.gms.internal.ads.zzcsf
            private final zzdmw zzfva;
            private final zzdnl zzghw;
            private final zzcsg zzgtn;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgtn = this;
                this.zzghw = zzdnlVar;
                this.zzfva = zzdmwVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return this.zzgtn.zzb(this.zzghw, this.zzfva, obj);
            }
        }, this.zzfsj);
    }

    public final /* synthetic */ zzdzw zzb(zzdnl zzdnlVar, zzdmw zzdmwVar, Object obj) throws Exception {
        zzvs zzb = zzdnu.zzb(this.context, zzdmwVar.zzhji);
        zzbeb zza = this.zzggk.zza(zzb, zzdmwVar, zzdnlVar.zzhks.zzess);
        zza.zzbb(zzdmwVar.zzdwz);
        zzbnj zzcidVar = (!((Boolean) zzwr.zzqr().zzd(zzabp.zzczh)).booleanValue() || !zzdmwVar.zzhjx) ? new zzcid(this.context, zza.getView(), this.zzgtp.apply(zzdmwVar)) : zzbnj.zza(this.context, zza.getView(), zzdmwVar);
        zzbmr zzbmrVar = this.zzgto;
        zzboj zzbojVar = new zzboj(zzdnlVar, zzdmwVar, null);
        zza.getClass();
        zzbly zza2 = zzbmrVar.zza(zzbojVar, new zzbmc(zzcidVar, zza, zzcsi.zzm(zza), zzdnu.zzh(zzb)));
        zza2.zzahe().zza(zza, false);
        zza2.zzagq().zza(new zzbse(zza) { // from class: com.google.android.gms.internal.ads.zzcsh
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
        zzdzw<?> zza3 = zzchs.zza(zza, zzdmwVar.zzhjg.zzdsw, zzdmwVar.zzhjg.zzdsy);
        if (zzdmwVar.zzdxt) {
            zza.getClass();
            zza3.addListener(zzcsk.zze(zza), this.zzfsj);
        }
        zza3.addListener(new Runnable(this, zza) { // from class: com.google.android.gms.internal.ads.zzcsj
            private final zzbeb zzggw;
            private final zzcsg zzgtn;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgtn = this;
                this.zzggw = zza;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgtn.zzl(this.zzggw);
            }
        }, this.zzfsj);
        return zzdzk.zzb(zza3, new zzdvz(zza2) { // from class: com.google.android.gms.internal.ads.zzcsm
            private final zzbly zzgtr;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgtr = zza2;
            }

            @Override // com.google.android.gms.internal.ads.zzdvz
            public final Object apply(Object obj2) {
                return this.zzgtr.zzaho();
            }
        }, zzazp.zzeih);
    }

    public final /* synthetic */ void zzl(zzbeb zzbebVar) {
        zzbebVar.zzacr();
        zzbev zzabc = zzbebVar.zzabc();
        if (this.zzfwy.zzhkv == null || zzabc == null) {
            return;
        }
        zzabc.zzb(this.zzfwy.zzhkv);
    }
}
