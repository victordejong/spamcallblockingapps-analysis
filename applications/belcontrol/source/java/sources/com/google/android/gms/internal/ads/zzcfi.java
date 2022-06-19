package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zza;
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
            zzbebVar.zza("/open", new zzaij((zza) null, (zzaqg) null, (zzcqr) null, (zzckn) null, (zzdrz) null));
        } else {
            zzbebVar.zzacx().zzbd(false);
        }
        if (zzr.zzlp().zzy(zzbebVar.getContext())) {
            zzbebVar.zza("/logScionEvent", new zzaih(zzbebVar.getContext()));
        }
    }

    public final /* synthetic */ zzdzw zza(String str, String str2, Object obj) {
        zzbeb zza = this.zzggk.zza(zzvs.zzqe(), null, null);
        zzazx zzk = zzazx.zzk(zza);
        zzh(zza);
        zza.zza(this.zzfwy.zzdvt != null ? zzbft.zzaen() : zzbft.zzaem());
        zza.zzacx().zza(new zzcfl(this, zza, zzk));
        zza.zzb(str, str2, (String) null);
        return zzk;
    }

    public final /* synthetic */ zzdzw zza(JSONObject jSONObject, zzbeb zzbebVar) {
        zzazx zzk = zzazx.zzk(zzbebVar);
        zzbebVar.zza(this.zzfwy.zzdvt != null ? zzbft.zzaen() : zzbft.zzaem());
        zzbebVar.zzacx().zza(new zzcfo(this, zzbebVar, zzk));
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
        return zzdzk.zzb(zzdzk.zzb(zzdzk.zzag((Object) null), new zzcfj(this), this.zzfsj), new zzcfh(this, jSONObject), this.zzfsj);
    }

    public final zzdzw<zzbeb> zzo(String str, String str2) {
        return zzdzk.zzb(zzdzk.zzag((Object) null), new zzcfk(this, str, str2), this.zzfsj);
    }

    public final /* synthetic */ zzdzw zzq(Object obj) {
        zzbeb zza = this.zzggk.zza(zzvs.zzqe(), null, null);
        zzazx zzk = zzazx.zzk(zza);
        zzh(zza);
        zza.zzacx().zza(new zzcfm(zzk));
        zza.loadUrl((String) zzwr.zzqr().zzd(zzabp.zzcsy));
        return zzk;
    }
}
