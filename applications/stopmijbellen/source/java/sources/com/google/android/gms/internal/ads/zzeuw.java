package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeuw.class */
public final class zzeuw implements zzgpr<zzeuu> {
    private final zzgqe<zzfxb> zza;
    private final zzgqe<ScheduledExecutorService> zzb;
    private final zzgqe<String> zzc;
    private final zzgqe<Context> zzd;
    private final zzgqe<zzfef> zze;
    private final zzgqe<zzcqm> zzf;

    public zzeuw(zzgqe<zzfxb> zzgqeVar, zzgqe<ScheduledExecutorService> zzgqeVar2, zzgqe<String> zzgqeVar3, zzgqe<Context> zzgqeVar4, zzgqe<zzfef> zzgqeVar5, zzgqe<zzcqm> zzgqeVar6) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
        this.zzf = zzgqeVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzeuu(zzfxbVar, this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), ((zzdei) this.zze).zza(), this.zzf.zzb());
    }
}
