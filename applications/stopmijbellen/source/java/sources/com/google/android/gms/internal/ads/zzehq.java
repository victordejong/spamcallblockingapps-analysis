package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehq.class */
public final class zzehq implements zzgpr<zzehp> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzehh> zzb;
    private final zzgqe<zzcje> zzc;
    private final zzgqe<zzdyz> zzd;
    private final zzgqe<zzfio> zze;

    public zzehq(zzgqe<Context> zzgqeVar, zzgqe<zzehh> zzgqeVar2, zzgqe<zzcje> zzgqeVar3, zzgqe<zzdyz> zzgqeVar4, zzgqe<zzfio> zzgqeVar5) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzehp(((zzcqr) this.zza).zza(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), this.zze.zzb());
    }
}
