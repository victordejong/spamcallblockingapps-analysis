package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzekz.class */
public final class zzekz extends zzeky<zzcyw> {
    private final zzcqm zza;
    private final zzdeb zzb;
    private final zzenh zzc;
    private final zzdke zzd;
    private final zzdok zze;
    private final zzdhg zzf;
    private final ViewGroup zzg;

    public zzekz(zzcqm zzcqmVar, zzdeb zzdebVar, zzenh zzenhVar, zzdke zzdkeVar, zzdok zzdokVar, zzdhg zzdhgVar, ViewGroup viewGroup) {
        this.zza = zzcqmVar;
        this.zzb = zzdebVar;
        this.zzc = zzenhVar;
        this.zzd = zzdkeVar;
        this.zze = zzdokVar;
        this.zzf = zzdhgVar;
        this.zzg = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzeky
    public final zzfxa<zzcyw> zzc(zzfef zzfefVar, Bundle bundle) {
        zzczs zzg = this.zza.zzg();
        zzdeb zzdebVar = this.zzb;
        zzdebVar.zzf(zzfefVar);
        zzdebVar.zzd(bundle);
        zzg.zzi(zzdebVar.zzg());
        zzg.zzf(this.zzd);
        zzg.zze(this.zzc);
        zzg.zzd(this.zze);
        zzg.zzg(new zzdap(this.zzf));
        zzg.zzc(new zzcyt(this.zzg));
        zzdby<zzcyw> zzd = zzg.zzj().zzd();
        return zzd.zzh(zzd.zzi());
    }
}
