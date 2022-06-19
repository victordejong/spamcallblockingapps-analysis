package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxg.class */
public final class zzcxg implements zzgpr<zzcxf> {
    private final zzgqe<zzbwq> zza;
    private final zzgqe<zzcxb> zzb;
    private final zzgqe<Executor> zzc;
    private final zzgqe<zzcxa> zzd;
    private final zzgqe<Clock> zze;

    public zzcxg(zzgqe<zzbwq> zzgqeVar, zzgqe<zzcxb> zzgqeVar2, zzgqe<Executor> zzgqeVar3, zzgqe<zzcxa> zzgqeVar4, zzgqe<Clock> zzgqeVar5) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcxf(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), this.zze.zzb());
    }
}
