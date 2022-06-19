package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwv.class */
public final class zzcwv implements zzgpr<zzcwu> {
    private final zzgqe<Context> zza;
    private final zzgqe<Executor> zzb;
    private final zzgqe<Executor> zzc;
    private final zzgqe<ScheduledExecutorService> zzd;
    private final zzgqe<zzfdz> zze;
    private final zzgqe<zzfdn> zzf;
    private final zzgqe<zzfjp> zzg;
    private final zzgqe<zzfeo> zzh;
    private final zzgqe<View> zzi;
    private final zzgqe<zzalt> zzj;
    private final zzgqe<zzbmi> zzk;
    private final zzgqe<zzbmk> zzl;

    public zzcwv(zzgqe<Context> zzgqeVar, zzgqe<Executor> zzgqeVar2, zzgqe<Executor> zzgqeVar3, zzgqe<ScheduledExecutorService> zzgqeVar4, zzgqe<zzfdz> zzgqeVar5, zzgqe<zzfdn> zzgqeVar6, zzgqe<zzfjp> zzgqeVar7, zzgqe<zzfeo> zzgqeVar8, zzgqe<View> zzgqeVar9, zzgqe<zzalt> zzgqeVar10, zzgqe<zzbmi> zzgqeVar11, zzgqe<zzbmk> zzgqeVar12) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
        this.zzf = zzgqeVar6;
        this.zzg = zzgqeVar7;
        this.zzh = zzgqeVar8;
        this.zzi = zzgqeVar9;
        this.zzj = zzgqeVar10;
        this.zzk = zzgqeVar11;
        this.zzl = zzgqeVar12;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* synthetic */ Object zzb() {
        Context zza = ((zzffh) this.zza).zza();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzcwu(zza, zzfxbVar, this.zzc.zzb(), this.zzd.zzb(), ((zzdbo) this.zze).zza(), ((zzdbl) this.zzf).zza(), this.zzg.zzb(), this.zzh.zzb(), this.zzi.zzb(), this.zzj.zzb(), this.zzk.zzb(), new zzbmk(), null);
    }
}
