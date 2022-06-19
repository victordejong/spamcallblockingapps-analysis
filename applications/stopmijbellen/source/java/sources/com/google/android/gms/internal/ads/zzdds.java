package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdds.class */
public final class zzdds implements zzgpr<zzddr> {
    private final zzgqe<zzdfj> zza;
    private final zzgqe<zzfdn> zzb;
    private final zzgqe<ScheduledExecutorService> zzc;
    private final zzgqe<Executor> zzd;

    public zzdds(zzgqe<zzdfj> zzgqeVar, zzgqe<zzfdn> zzgqeVar2, zzgqe<ScheduledExecutorService> zzgqeVar3, zzgqe<Executor> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdfj zzb = this.zza.zzb();
        zzfdn zza = ((zzdbl) this.zzb).zza();
        ScheduledExecutorService zzb2 = this.zzc.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzddr(zzb, zza, zzb2, zzfxbVar);
    }
}
