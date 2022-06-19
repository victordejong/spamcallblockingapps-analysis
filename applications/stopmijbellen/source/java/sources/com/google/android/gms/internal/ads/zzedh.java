package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedh.class */
public final class zzedh implements zzgpr<zzedg> {
    private final zzgqe<zzfef> zza;
    private final zzgqe<zzech> zzb;
    private final zzgqe<zzfxb> zzc;
    private final zzgqe<ScheduledExecutorService> zzd;
    private final zzgqe<zzegl> zze;

    public zzedh(zzgqe<zzfef> zzgqeVar, zzgqe<zzech> zzgqeVar2, zzgqe<zzfxb> zzgqeVar3, zzgqe<ScheduledExecutorService> zzgqeVar4, zzgqe<zzegl> zzgqeVar5) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfef zza = ((zzdei) this.zza).zza();
        zzech zzb = ((zzeci) this.zzb).zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzedg(zza, zzb, zzfxbVar, this.zzd.zzb(), this.zze.zzb());
    }
}
