package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzebc.class */
public final class zzebc implements zzgpr<zzebb> {
    private final zzgqe<Executor> zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<WeakReference<Context>> zzc;
    private final zzgqe<Executor> zzd;
    private final zzgqe<zzdww> zze;
    private final zzgqe<ScheduledExecutorService> zzf;
    private final zzgqe<zzdzi> zzg;
    private final zzgqe<zzcjf> zzh;
    private final zzgqe<zzdli> zzi;

    public zzebc(zzgqe<Executor> zzgqeVar, zzgqe<Context> zzgqeVar2, zzgqe<WeakReference<Context>> zzgqeVar3, zzgqe<Executor> zzgqeVar4, zzgqe<zzdww> zzgqeVar5, zzgqe<ScheduledExecutorService> zzgqeVar6, zzgqe<zzdzi> zzgqeVar7, zzgqe<zzcjf> zzgqeVar8, zzgqe<zzdli> zzgqeVar9) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
        this.zzf = zzgqeVar6;
        this.zzg = zzgqeVar7;
        this.zzh = zzgqeVar8;
        this.zzi = zzgqeVar9;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        Executor zzb = this.zza.zzb();
        Context zza = ((zzcqr) this.zzb).zza();
        WeakReference<Context> zza2 = ((zzcqs) this.zzc).zza();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzebb(zzb, zza, zza2, zzfxbVar, this.zze.zzb(), this.zzf.zzb(), this.zzg.zzb(), ((zzcrb) this.zzh).zza(), ((zzdlj) this.zzi).zzb());
    }
}
