package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzekw.class */
public final class zzekw extends zzeky<zzdbc> {
    private final zzcqm zza;
    private final zzdok zzb;
    private final zzdeb zzc;
    private final zzdke zzd;

    public zzekw(zzcqm zzcqmVar, zzdok zzdokVar, zzdeb zzdebVar, zzdke zzdkeVar) {
        this.zza = zzcqmVar;
        this.zzb = zzdokVar;
        this.zzc = zzdebVar;
        this.zzd = zzdkeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeky
    public final zzfxa<zzdbc> zzc(zzfef zzfefVar, Bundle bundle) {
        zzdoo zzj = this.zza.zzj();
        zzdeb zzdebVar = this.zzc;
        zzdebVar.zzf(zzfefVar);
        zzdebVar.zzd(bundle);
        zzj.zzf(zzdebVar.zzg());
        zzj.zze(this.zzd);
        zzj.zzd(this.zzb);
        zzj.zzc(new zzcyt(null));
        zzdby<zzdbc> zza = zzj.zzg().zza();
        return zza.zzh(zza.zzi());
    }
}
