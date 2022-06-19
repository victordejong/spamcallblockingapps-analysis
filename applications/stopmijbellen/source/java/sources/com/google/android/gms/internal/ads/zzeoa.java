package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeoa.class */
public final class zzeoa implements zzgpr<zzenz> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzbgx> zzb;
    private final zzgqe<zzfef> zzc;
    private final zzgqe<zzcyw> zzd;

    public zzeoa(zzgqe<Context> zzgqeVar, zzgqe<zzbgx> zzgqeVar2, zzgqe<zzfef> zzgqeVar3, zzgqe<zzcyw> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzenz(this.zza.zzb(), ((zzdol) this.zzb).zza(), ((zzdei) this.zzc).zza(), ((zzczi) this.zzd).zza());
    }
}
