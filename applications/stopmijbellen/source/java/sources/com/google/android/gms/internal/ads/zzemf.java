package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzemf.class */
public final class zzemf implements zzgpr<zzeme> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzcjf> zzb;
    private final zzgqe<zzfef> zzc;
    private final zzgqe<Executor> zzd;
    private final zzgqe<zzdvs> zze;
    private final zzgqe<zzdwj> zzf;
    private final zzgqe<zzbrw> zzg;

    public zzemf(zzgqe<Context> zzgqeVar, zzgqe<zzcjf> zzgqeVar2, zzgqe<zzfef> zzgqeVar3, zzgqe<Executor> zzgqeVar4, zzgqe<zzdvs> zzgqeVar5, zzgqe<zzdwj> zzgqeVar6, zzgqe<zzbrw> zzgqeVar7) {
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
        return new zzeme(this.zza.zzb(), ((zzcrb) this.zzb).zza(), ((zzdei) this.zzc).zza(), this.zzd.zzb(), this.zze.zzb(), this.zzf.zzb(), new zzbrw());
    }
}
