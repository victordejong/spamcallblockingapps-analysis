package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzezy.class */
public final class zzezy implements zzgpr<zzezx> {
    private final zzgqe<Context> zza;
    private final zzgqe<Executor> zzb;
    private final zzgqe<zzbfi> zzc;
    private final zzgqe<zzcqm> zzd;
    private final zzgqe<zzeox> zze;
    private final zzgqe<zzepb> zzf;
    private final zzgqe<zzfed> zzg;

    public zzezy(zzgqe<Context> zzgqeVar, zzgqe<Executor> zzgqeVar2, zzgqe<zzbfi> zzgqeVar3, zzgqe<zzcqm> zzgqeVar4, zzgqe<zzeox> zzgqeVar5, zzgqe<zzepb> zzgqeVar6, zzgqe<zzfed> zzgqeVar7) {
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
        return new zzezx(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), this.zze.zzb(), this.zzf.zzb(), new zzfed());
    }
}
