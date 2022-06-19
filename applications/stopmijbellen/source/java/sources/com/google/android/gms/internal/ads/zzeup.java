package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeup.class */
public final class zzeup implements zzgpr<zzeun> {
    private final zzgqe<zzfxb> zza;
    private final zzgqe<ScheduledExecutorService> zzb;
    private final zzgqe<String> zzc;
    private final zzgqe<zzenu> zzd;
    private final zzgqe<Context> zze;
    private final zzgqe<zzfef> zzf;
    private final zzgqe<zzenq> zzg;
    private final zzgqe<zzdww> zzh;

    public zzeup(zzgqe<zzfxb> zzgqeVar, zzgqe<ScheduledExecutorService> zzgqeVar2, zzgqe<String> zzgqeVar3, zzgqe<zzenu> zzgqeVar4, zzgqe<Context> zzgqeVar5, zzgqe<zzfef> zzgqeVar6, zzgqe<zzenq> zzgqeVar7, zzgqe<zzdww> zzgqeVar8) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
        this.zzf = zzgqeVar6;
        this.zzg = zzgqeVar7;
        this.zzh = zzgqeVar8;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzeun(zzfxbVar, this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), this.zze.zzb(), ((zzdei) this.zzf).zza(), this.zzg.zzb(), this.zzh.zzb());
    }
}
