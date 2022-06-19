package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddk.class */
public final class zzddk implements zzgpr<zzddj> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzfef> zzb;
    private final zzgqe<zzcjf> zzc;
    private final zzgqe<zzg> zzd;
    private final zzgqe<zzebb> zze;

    public zzddk(zzgqe<Context> zzgqeVar, zzgqe<zzfef> zzgqeVar2, zzgqe<zzcjf> zzgqeVar3, zzgqe<zzg> zzgqeVar4, zzgqe<zzebb> zzgqeVar5) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzddj(((zzffh) this.zza).zza(), ((zzdei) this.zzb).zza(), ((zzcrb) this.zzc).zza(), ((zzffg) this.zzd).zzb(), this.zze.zzb());
    }
}
