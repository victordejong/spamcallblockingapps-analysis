package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdtu.class */
public final class zzdtu implements zzgpr<zzdts> {
    private final zzgqe<Executor> zza;
    private final zzgqe<zzcxp> zzb;
    private final zzgqe<zzdly> zzc;

    public zzdtu(zzgqe<Executor> zzgqeVar, zzgqe<zzcxp> zzgqeVar2, zzgqe<zzdly> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdts(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb());
    }
}
