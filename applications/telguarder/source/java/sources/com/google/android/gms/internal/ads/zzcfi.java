package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfi.class */
public final class zzcfi {
    private final Executor zzfsj;
    private final zzdnp zzfwy;
    private final zzchq zzggk;

    public zzcfi(zzdnp zzdnpVar, Executor executor, zzchq zzchqVar) {
        this.zzfwy = zzdnpVar;
        this.zzfsj = executor;
        this.zzggk = zzchqVar;
    }

    private final void zzh(zzbeb zzbebVar) {
        zzbebVar.zza("/video", zzahm.zzdhn);
        zzbebVar.zza("/videoMeta", zzahm.zzdho);
        zzbebVar.zza("/precache", new zzbdm());
        zzbebVar.zza("/delayPageLoaded", zzahm.zzdhr);
        zzbebVar.zza("/instrument", zzahm.zzdhp);
        zzbebVar.zza("/log", zzahm.zzdhi);
        zzbebVar.zza("/videoClicked", zzahm.zzdhj);
        zzbebVar.zzacx().zzbc(true);
        zzbebVar.zza("/click", zzahm.zzdhe);
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcsz)).booleanValue()) {
            zzbebVar.zza("/getNativeAdViewSignals", zzahm.zzdhu);
        }
        if (this.zzfwy.zzdvt != null) {
            zzbebVar.zzacx().zzbd(true);
            zzbebVar.zza("/open", new zzaij(null, null, null, null, null));
        } else {
            zzbebVar.zzacx().zzbd(false);
        }
        if (zzr.zzlp().zzy(zzbebVar.getContext())) {
            zzbebVar.zza("/logScionEvent", new zzaih(zzbebVar.getContext()));
        }
    }

    public final /* synthetic */ zzdzw zza(String str, String str2, Object obj) throws Exception {
        zzbeb zza = this.zzggk.zza(zzvs.zzqe(), null, null);
        zzazx zzk = zzazx.zzk(zza);
        zzh(zza);
        if (this.zzfwy.zzdvt != null) {
            zza.zza(zzbft.zzaen());
        } else {
            zza.zza(zzbft.zzaem());
        }
        zza.zzacx().zza(new zzbfq(this, zza, zzk) { // from class: com.google.android.gms.internal.ads.zzcfl
            private final zzbeb zzggw;
            private final zzcfi zzgik;
            private final zzazx zzgil;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgik = this;
                this.zzggw = zza;
                this.zzgil = zzk;
            }

            @Override // com.google.android.gms.internal.ads.zzbfq
            public final void zzal(boolean z) {
                this.zzgik.zza(this.zzggw, this.zzgil, z);
            }
        });
        zza.zzb(str, str2, null);
        return zzk;
    }

    public final /* synthetic */ zzdzw zza(JSONObject jSONObject, zzbeb zzbebVar) throws Exception {
        zzazx zzk = zzazx.zzk(zzbebVar);
        if (this.zzfwy.zzdvt != null) {
            zzbebVar.zza(zzbft.zzaen());
        } else {
            zzbebVar.zza(zzbft.zzaem());
        }
        zzbebVar.zzacx().zza(new zzbfq(this, zzbebVar, zzk) { // from class: com.google.android.gms.internal.ads.zzcfo
            private final zzbeb zzggw;
            private final zzcfi zzgik;
            private final zzazx zzgil;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgik = this;
                this.zzggw = zzbebVar;
                this.zzgil = zzk;
            }

            @Override // com.google.android.gms.internal.ads.zzbfq
            public final void zzal(boolean z) {
                this.zzgik.zzb(this.zzggw, this.zzgil, z);
            }
        });
        zzbebVar.zzb("google.afma.nativeAds.renderVideo", jSONObject);
        return zzk;
    }

    public final /* synthetic */ void zza(zzbeb zzbebVar, zzazx zzazxVar, boolean z) {
        if (!z) {
            zzazxVar.setException(new zzcva(zzdom.INTERNAL_ERROR, "Instream video Web View failed to load."));
            return;
        }
        if (this.zzfwy.zzhkv != null && zzbebVar.zzabc() != null) {
            zzbebVar.zzabc().zzb(this.zzfwy.zzhkv);
        }
        zzazxVar.zzaac();
    }

    public final /* synthetic */ void zzb(zzbeb zzbebVar, zzazx zzazxVar, boolean z) {
        if (this.zzfwy.zzhkv != null && zzbebVar.zzabc() != null) {
            zzbebVar.zzabc().zzb(this.zzfwy.zzhkv);
        }
        zzazxVar.zzaac();
    }

    public final zzdzw<zzbeb> zzn(JSONObject jSONObject) {
        return zzdzk.zzb(zzdzk.zzb(zzdzk.zzag(null), new zzdyu(this) { // from class: com.google.android.gms.internal.ads.zzcfj
            private final zzcfi zzgik;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgik = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return this.zzgik.zzq(obj);
            }
        }, this.zzfsj), new zzdyu(this, jSONObject) { // from class: com.google.android.gms.internal.ads.zzcfh
            private final JSONObject zzfst;
            private final zzcfi zzgik;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgik = this;
                this.zzfst = jSONObject;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return this.zzgik.zza(this.zzfst, (zzbeb) obj);
            }
        }, this.zzfsj);
    }

    public final zzdzw<zzbeb> zzo(String str, String str2) {
        return zzdzk.zzb(zzdzk.zzag(null), new zzdyu(this, str, str2) { // from class: com.google.android.gms.internal.ads.zzcfk
            private final String zzdjf;
            private final String zzdlo;
            private final zzcfi zzgik;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgik = this;
                this.zzdjf = str;
                this.zzdlo = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return this.zzgik.zza(this.zzdjf, this.zzdlo, obj);
            }
        }, this.zzfsj);
    }

    public final /* synthetic */ zzdzw zzq(Object obj) throws Exception {
        zzbeb zza = this.zzggk.zza(zzvs.zzqe(), null, null);
        zzazx zzk = zzazx.zzk(zza);
        zzh(zza);
        zza.zzacx().zza(new zzbfp(zzk) { // from class: com.google.android.gms.internal.ads.zzcfm
            private final zzazx zzesg;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzesg = zzk;
            }

            @Override // com.google.android.gms.internal.ads.zzbfp
            public final void zzul() {
                this.zzesg.zzaac();
            }
        });
        zza.loadUrl((String) zzwr.zzqr().zzd(zzabp.zzcsy));
        return zzk;
    }
}
