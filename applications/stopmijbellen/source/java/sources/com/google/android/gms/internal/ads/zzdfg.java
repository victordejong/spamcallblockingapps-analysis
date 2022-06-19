package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfg.class */
public final class zzdfg implements zzgpr<zzdfe> {
    private final zzgqe<zzdfd> zza;
    private final zzgqe<Set<zzdlw<zzdev>>> zzb;
    private final zzgqe<Executor> zzc;
    private final zzgqe<ScheduledExecutorService> zzd;

    public zzdfg(zzgqe<zzdfd> zzgqeVar, zzgqe<Set<zzdlw<zzdev>>> zzgqeVar2, zzgqe<Executor> zzgqeVar3, zzgqe<ScheduledExecutorService> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdfd zzb = ((zzdff) this.zza).zzb();
        Set zzb2 = ((zzgqc) this.zzb).zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzdfe(zzb, zzb2, zzfxbVar, this.zzd.zzb());
    }
}
