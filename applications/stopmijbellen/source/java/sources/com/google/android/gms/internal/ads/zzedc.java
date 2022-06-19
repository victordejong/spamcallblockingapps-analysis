package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedc.class */
public final class zzedc implements zzgpr<zzedb> {
    private final zzgqe<ScheduledExecutorService> zza;
    private final zzgqe<zzfxb> zzb;
    private final zzgqe<zzedt> zzc;
    private final zzgqe<zzefh> zzd;

    public zzedc(zzgqe<ScheduledExecutorService> zzgqeVar, zzgqe<zzfxb> zzgqeVar2, zzgqe<zzedt> zzgqeVar3, zzgqe<zzefh> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    /* renamed from: zza */
    public final zzedb zzb() {
        ScheduledExecutorService zzb = this.zza.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzedb(zzb, zzfxbVar, ((zzedu) this.zzc).zzb(), zzgpq.zza(this.zzd));
    }
}
