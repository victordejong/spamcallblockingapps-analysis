package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejo.class */
public final class zzejo implements zzgpr<zzejn> {
    private final zzgqe<zzczt> zza;
    private final zzgqe<zzeiu> zzb;
    private final zzgqe<zzdet> zzc;
    private final zzgqe<ScheduledExecutorService> zzd;
    private final zzgqe<zzfxb> zze;

    public zzejo(zzgqe<zzczt> zzgqeVar, zzgqe<zzeiu> zzgqeVar2, zzgqe<zzdet> zzgqeVar3, zzgqe<ScheduledExecutorService> zzgqeVar4, zzgqe<zzfxb> zzgqeVar5) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
    }

    /* renamed from: zza */
    public final zzejn zzb() {
        zzczt zzb = this.zza.zzb();
        zzeiu zzb2 = ((zzeiv) this.zzb).zzb();
        zzdet zzb3 = this.zzc.zzb();
        ScheduledExecutorService zzb4 = this.zzd.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzejn(zzb, zzb2, zzb3, zzb4, zzfxbVar);
    }
}
