package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdzh.class */
public final class zzdzh implements zzgpr<zzdze> {
    private final zzgqe<Executor> zza;
    private final zzgqe<zzcje> zzb;
    private final zzgqe<zzfix> zzc;
    private final zzgqe<zzfiz> zzd;

    public zzdzh(zzgqe<Executor> zzgqeVar, zzgqe<zzcje> zzgqeVar2, zzgqe<zzfix> zzgqeVar3, zzgqe<zzfiz> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzdze(zzfxbVar, this.zzb.zzb(), ((zzfiy) this.zzc).zzb(), new zzfiz());
    }
}
