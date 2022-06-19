package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzewt.class */
public final class zzewt implements zzgpr<zzewr> {
    private final zzgqe<zzcic> zza;
    private final zzgqe<Integer> zzb;
    private final zzgqe<Context> zzc;
    private final zzgqe<zzcik> zzd;
    private final zzgqe<ScheduledExecutorService> zze;
    private final zzgqe<Executor> zzf;
    private final zzgqe<String> zzg;

    public zzewt(zzgqe<zzcic> zzgqeVar, zzgqe<Integer> zzgqeVar2, zzgqe<Context> zzgqeVar3, zzgqe<zzcik> zzgqeVar4, zzgqe<ScheduledExecutorService> zzgqeVar5, zzgqe<Executor> zzgqeVar6, zzgqe<String> zzgqeVar7) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
        this.zzf = zzgqeVar6;
        this.zzg = zzgqeVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcic zzcicVar = new zzcic();
        int intValue = ((zzexo) this.zzb).zzb().intValue();
        Context zza = ((zzcqr) this.zzc).zza();
        zzcik zzb = this.zzd.zzb();
        ScheduledExecutorService zzb2 = this.zze.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzewr(zzcicVar, intValue, zza, zzb, zzb2, zzfxbVar, ((zzexn) this.zzg).zza(), null);
    }
}
