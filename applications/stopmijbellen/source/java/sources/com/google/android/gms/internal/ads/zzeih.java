package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeih.class */
public final class zzeih implements zzgpr<zzeig> {
    private final zzgqe<zzcyk> zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<Executor> zzc;
    private final zzgqe<zzdwj> zzd;
    private final zzgqe<zzfef> zze;
    private final zzgqe<zzcjf> zzf;
    private final zzgqe<zzbrw> zzg;

    public zzeih(zzgqe<zzcyk> zzgqeVar, zzgqe<Context> zzgqeVar2, zzgqe<Executor> zzgqeVar3, zzgqe<zzdwj> zzgqeVar4, zzgqe<zzfef> zzgqeVar5, zzgqe<zzcjf> zzgqeVar6, zzgqe<zzbrw> zzgqeVar7) {
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
        return new zzeig(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), ((zzdei) this.zze).zza(), ((zzcrb) this.zzf).zza(), new zzbrw());
    }
}
