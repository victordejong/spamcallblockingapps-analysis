package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzekl.class */
public final class zzekl extends zzbfi {
    @VisibleForTesting
    public final zzfap zza;
    @VisibleForTesting
    public final zzdmv zzb = new zzdmv();
    private final Context zzc;
    private final zzcoj zzd;
    private zzbfa zze;

    public zzekl(zzcoj zzcojVar, Context context, String str) {
        zzfap zzfapVar = new zzfap();
        this.zza = zzfapVar;
        this.zzd = zzcojVar;
        zzfapVar.zzw(str);
        this.zzc = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final zzbfg zze() {
        zzdmx zzg = this.zzb.zzg();
        this.zza.zzC(zzg.zzh());
        this.zza.zzD(zzg.zzi());
        zzfap zzfapVar = this.zza;
        if (zzfapVar.zzv() == null) {
            zzfapVar.zzt(zzbdl.zzb());
        }
        return new zzekm(this.zzc, this.zzd, this.zza, zzg, this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzf(zzbfa zzbfaVar) {
        this.zze = zzbfaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzg(zzbnf zzbnfVar) {
        this.zzb.zzb(zzbnfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzh(zzbni zzbniVar) {
        this.zzb.zza(zzbniVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzi(String str, zzbno zzbnoVar, zzbnl zzbnlVar) {
        this.zzb.zzf(str, zzbnoVar, zzbnlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzj(zzblv zzblvVar) {
        this.zza.zzE(zzblvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzk(zzbns zzbnsVar, zzbdl zzbdlVar) {
        this.zzb.zzd(zzbnsVar);
        this.zza.zzt(zzbdlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzl(PublisherAdViewOptions publisherAdViewOptions) {
        this.zza.zzH(publisherAdViewOptions);
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzm(zzbnv zzbnvVar) {
        this.zzb.zzc(zzbnvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzn(zzbrx zzbrxVar) {
        this.zza.zzG(zzbrxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzo(zzbsg zzbsgVar) {
        this.zzb.zze(zzbsgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzp(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.zza.zzI(adManagerAdViewOptions);
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzq(zzbfy zzbfyVar) {
        this.zza.zzO(zzbfyVar);
    }
}
