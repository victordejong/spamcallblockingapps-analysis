package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfdb.class */
public final class zzfdb implements zzgpr<zzfda> {
    private final zzgqe<Context> zza;
    private final zzgqe<Executor> zzb;
    private final zzgqe<zzcqm> zzc;
    private final zzgqe<zzfbc<zzdvs, zzdvn>> zzd;
    private final zzgqe<zzfcq> zze;
    private final zzgqe<zzfed> zzf;
    private final zzgqe<zzfea> zzg;

    public zzfdb(zzgqe<Context> zzgqeVar, zzgqe<Executor> zzgqeVar2, zzgqe<zzcqm> zzgqeVar3, zzgqe<zzfbc<zzdvs, zzdvn>> zzgqeVar4, zzgqe<zzfcq> zzgqeVar5, zzgqe<zzfed> zzgqeVar6, zzgqe<zzfea> zzgqeVar7) {
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
        return new zzfda(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), ((zzfbh) this.zzd).zzb(), this.zze.zzb(), new zzfed(), this.zzg.zzb());
    }
}
