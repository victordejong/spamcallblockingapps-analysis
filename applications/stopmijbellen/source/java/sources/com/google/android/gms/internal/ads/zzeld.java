package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeld.class */
public final class zzeld extends zzeky<zzdvn> {
    private final zzcqm zza;
    private final zzdeb zzb;
    private final zzdke zzc;

    public zzeld(zzcqm zzcqmVar, zzdeb zzdebVar, zzdke zzdkeVar) {
        this.zza = zzcqmVar;
        this.zzb = zzdebVar;
        this.zzc = zzdkeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeky
    public final zzfxa<zzdvn> zzc(zzfef zzfefVar, Bundle bundle) {
        zzdvr zzk = this.zza.zzk();
        zzdeb zzdebVar = this.zzb;
        zzdebVar.zzf(zzfefVar);
        zzdebVar.zzd(bundle);
        zzk.zzd(zzdebVar.zzg());
        zzk.zzc(this.zzc);
        zzdby<zzdvn> zzb = zzk.zze().zzb();
        return zzb.zzh(zzb.zzi());
    }
}
