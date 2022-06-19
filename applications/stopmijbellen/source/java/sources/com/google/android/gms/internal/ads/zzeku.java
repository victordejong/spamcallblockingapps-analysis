package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeku.class */
public final class zzeku implements zzgpr<zzekt> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzdop> zzb;
    private final zzgqe<zzcjf> zzc;

    public zzeku(zzgqe<Context> zzgqeVar, zzgqe<zzdop> zzgqeVar2, zzgqe<zzcjf> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzekt(this.zza.zzb(), this.zzb.zzb(), ((zzcrb) this.zzc).zza());
    }
}
