package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfbr.class */
public final class zzfbr implements zzgpr<zzfbq> {
    private final zzgqe<Context> zza;
    private final zzgqe<Executor> zzb;
    private final zzgqe<zzcqm> zzc;
    private final zzgqe<zzeox> zzd;
    private final zzgqe<zzfcq> zze;
    private final zzgqe<zzfed> zzf;

    public zzfbr(zzgqe<Context> zzgqeVar, zzgqe<Executor> zzgqeVar2, zzgqe<zzcqm> zzgqeVar3, zzgqe<zzeox> zzgqeVar4, zzgqe<zzfcq> zzgqeVar5, zzgqe<zzfed> zzgqeVar6) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
        this.zzf = zzgqeVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzfbq(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), this.zze.zzb(), new zzfed());
    }
}
