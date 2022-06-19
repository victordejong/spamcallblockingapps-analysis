package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdtv.class */
public final class zzdtv implements zzgpr<zzdtt> {
    private final zzgqe<zzfef> zza;
    private final zzgqe<Executor> zzb;
    private final zzgqe<zzdwj> zzc;
    private final zzgqe<Context> zzd;
    private final zzgqe<zzdyz> zze;
    private final zzgqe<zzfio> zzf;
    private final zzgqe<zzfjs> zzg;
    private final zzgqe<zzehh> zzh;
    private final zzgqe<zzdve> zzi;

    public zzdtv(zzgqe<zzfef> zzgqeVar, zzgqe<Executor> zzgqeVar2, zzgqe<zzdwj> zzgqeVar3, zzgqe<Context> zzgqeVar4, zzgqe<zzdyz> zzgqeVar5, zzgqe<zzfio> zzgqeVar6, zzgqe<zzfjs> zzgqeVar7, zzgqe<zzehh> zzgqeVar8, zzgqe<zzdve> zzgqeVar9) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
        this.zzf = zzgqeVar6;
        this.zzg = zzgqeVar7;
        this.zzh = zzgqeVar8;
        this.zzi = zzgqeVar9;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdtt(((zzdei) this.zza).zza(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), this.zze.zzb(), this.zzf.zzb(), this.zzg.zzb(), this.zzh.zzb(), this.zzi.zzb());
    }
}
