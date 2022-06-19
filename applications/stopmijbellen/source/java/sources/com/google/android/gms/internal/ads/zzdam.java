package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdam.class */
public final class zzdam implements zzgpr<zzdal> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzcop> zzb;
    private final zzgqe<zzfdn> zzc;
    private final zzgqe<zzcjf> zzd;

    public zzdam(zzgqe<Context> zzgqeVar, zzgqe<zzcop> zzgqeVar2, zzgqe<zzfdn> zzgqeVar3, zzgqe<zzcjf> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdal(((zzffh) this.zza).zza(), ((zzczr) this.zzb).zza(), ((zzdbl) this.zzc).zza(), ((zzcrb) this.zzd).zza());
    }
}
