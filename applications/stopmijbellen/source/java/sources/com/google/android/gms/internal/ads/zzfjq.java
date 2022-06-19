package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfjq.class */
public final class zzfjq implements zzgpr<zzfjp> {
    private final zzgqe<zzelg> zza;
    private final zzgqe<zzcjf> zzb;
    private final zzgqe<String> zzc;
    private final zzgqe<String> zzd;
    private final zzgqe<Context> zze;
    private final zzgqe<zzfea> zzf;
    private final zzgqe<Clock> zzg;
    private final zzgqe<zzalt> zzh;

    public zzfjq(zzgqe<zzelg> zzgqeVar, zzgqe<zzcjf> zzgqeVar2, zzgqe<String> zzgqeVar3, zzgqe<String> zzgqeVar4, zzgqe<Context> zzgqeVar5, zzgqe<zzfea> zzgqeVar6, zzgqe<Clock> zzgqeVar7, zzgqe<zzalt> zzgqeVar8) {
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
        return new zzfjp(this.zza.zzb(), ((zzcrb) this.zzb).zza(), ((zzdeg) this.zzc).zzb(), this.zzd.zzb(), this.zze.zzb(), ((zzdeh) this.zzf).zza(), this.zzg.zzb(), this.zzh.zzb());
    }
}
