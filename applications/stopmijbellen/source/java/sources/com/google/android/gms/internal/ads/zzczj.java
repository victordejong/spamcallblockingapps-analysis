package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczj.class */
public final class zzczj implements zzgpr<zzdlw<zzdgf>> {
    private final zzczd zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<zzcjf> zzc;
    private final zzgqe<zzfdn> zzd;
    private final zzgqe<zzfef> zze;

    public zzczj(zzczd zzczdVar, zzgqe<Context> zzgqeVar, zzgqe<zzcjf> zzgqeVar2, zzgqe<zzfdn> zzgqeVar3, zzgqe<zzfef> zzgqeVar4) {
        this.zza = zzczdVar;
        this.zzb = zzgqeVar;
        this.zzc = zzgqeVar2;
        this.zzd = zzgqeVar3;
        this.zze = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return zzczd.zzf(this.zzb.zzb(), ((zzcrb) this.zzc).zza(), ((zzdbl) this.zzd).zza(), ((zzdei) this.zze).zza());
    }
}
