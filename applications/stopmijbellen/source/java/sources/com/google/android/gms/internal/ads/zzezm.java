package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzezm.class */
public final class zzezm implements zzgpr<zzezl> {
    private final zzgqe<Context> zza;
    private final zzgqe<Executor> zzb;
    private final zzgqe<zzcqm> zzc;
    private final zzgqe<zzfbc<zzcyk, zzcyp>> zzd;
    private final zzgqe<zzezj> zze;
    private final zzgqe<zzfed> zzf;

    public zzezm(zzgqe<Context> zzgqeVar, zzgqe<Executor> zzgqeVar2, zzgqe<zzcqm> zzgqeVar3, zzgqe<zzfbc<zzcyk, zzcyp>> zzgqeVar4, zzgqe<zzezj> zzgqeVar5, zzgqe<zzfed> zzgqeVar6) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
        this.zzf = zzgqeVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzezl(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), ((zzfbf) this.zzd).zzb(), this.zze.zzb(), new zzfed());
    }
}
