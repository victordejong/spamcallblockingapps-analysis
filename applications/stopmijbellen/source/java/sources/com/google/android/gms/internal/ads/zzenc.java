package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzenc.class */
public final class zzenc implements zzgpr<zzena> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzczt> zzb;
    private final zzgqe<zzfie> zzc;
    private final zzgqe<zzfxb> zzd;
    private final zzgqe<zzbme> zze;

    public zzenc(zzgqe<Context> zzgqeVar, zzgqe<zzczt> zzgqeVar2, zzgqe<zzfie> zzgqeVar3, zzgqe<zzfxb> zzgqeVar4, zzgqe<zzbme> zzgqeVar5) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzena(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), ((zzeni) this.zze).zza());
    }
}
