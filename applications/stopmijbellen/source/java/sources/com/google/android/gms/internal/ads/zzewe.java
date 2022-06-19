package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzewe.class */
public final class zzewe implements zzgpr<zzewc> {
    private final zzgqe<zzcic> zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<ScheduledExecutorService> zzc;
    private final zzgqe<Executor> zzd;
    private final zzgqe<Integer> zze;

    public zzewe(zzgqe<zzcic> zzgqeVar, zzgqe<Context> zzgqeVar2, zzgqe<ScheduledExecutorService> zzgqeVar3, zzgqe<Executor> zzgqeVar4, zzgqe<Integer> zzgqeVar5) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcic zzcicVar = new zzcic();
        Context zza = ((zzcqr) this.zzb).zza();
        ScheduledExecutorService zzb = this.zzc.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzewc(zzcicVar, zza, zzb, zzfxbVar, ((zzexo) this.zze).zzb().intValue(), null);
    }
}
