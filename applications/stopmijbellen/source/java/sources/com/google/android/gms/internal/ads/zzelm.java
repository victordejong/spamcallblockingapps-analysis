package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzelm.class */
public final class zzelm<AdT> implements zzgpr<zzell<AdT>> {
    private final zzgqe<zzfie> zza;
    private final zzgqe<zzelg> zzb;
    private final zzgqe<zzdet> zzc;
    private final zzgqe<zzfjp> zzd;
    private final zzgqe<zzfjs> zze;
    private final zzgqe<zzday<AdT>> zzf;
    private final zzgqe<Executor> zzg;
    private final zzgqe<ScheduledExecutorService> zzh;
    private final zzgqe<zzehy> zzi;

    public zzelm(zzgqe<zzfie> zzgqeVar, zzgqe<zzelg> zzgqeVar2, zzgqe<zzdet> zzgqeVar3, zzgqe<zzfjp> zzgqeVar4, zzgqe<zzfjs> zzgqeVar5, zzgqe<zzday<AdT>> zzgqeVar6, zzgqe<Executor> zzgqeVar7, zzgqe<ScheduledExecutorService> zzgqeVar8, zzgqe<zzehy> zzgqeVar9) {
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

    /* renamed from: zza */
    public final zzell<AdT> zzb() {
        zzfie zzb = this.zza.zzb();
        zzelg zzb2 = this.zzb.zzb();
        zzdet zzb3 = this.zzc.zzb();
        zzfjp zzb4 = this.zzd.zzb();
        zzfjs zzb5 = this.zze.zzb();
        zzday<AdT> zzb6 = this.zzf.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzell<>(zzb, zzb2, zzb3, zzb4, zzb5, zzb6, zzfxbVar, this.zzh.zzb(), this.zzi.zzb());
    }
}
