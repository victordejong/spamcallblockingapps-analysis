package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzelb.class */
public final class zzelb extends zzeky<zzdmw> {
    private final zzcqm zza;
    private final zzdeb zzb;
    private final zzenh zzc;
    private final zzdke zzd;

    public zzelb(zzcqm zzcqmVar, zzdeb zzdebVar, zzenh zzenhVar, zzdke zzdkeVar) {
        this.zza = zzcqmVar;
        this.zzb = zzdebVar;
        this.zzc = zzenhVar;
        this.zzd = zzdkeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeky
    public final zzfxa<zzdmw> zzc(zzfef zzfefVar, Bundle bundle) {
        zzdns zzi = this.zza.zzi();
        zzdeb zzdebVar = this.zzb;
        zzdebVar.zzf(zzfefVar);
        zzdebVar.zzd(bundle);
        zzi.zze(zzdebVar.zzg());
        zzi.zzd(this.zzd);
        zzi.zzc(this.zzc);
        zzdby<zzdmw> zza = zzi.zzf().zza();
        return zza.zzh(zza.zzi());
    }
}
