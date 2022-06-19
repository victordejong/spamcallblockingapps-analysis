package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfig.class */
public final class zzfig implements zzgpr<zzfie> {
    private final zzgqe<zzfxb> zza;
    private final zzgqe<ScheduledExecutorService> zzb;
    private final zzgqe<zzfid> zzc;

    public zzfig(zzgqe<zzfxb> zzgqeVar, zzgqe<ScheduledExecutorService> zzgqeVar2, zzgqe<zzfid> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzfie(zzfxbVar, this.zzb.zzb(), ((zzfih) this.zzc).zzb());
    }
}
