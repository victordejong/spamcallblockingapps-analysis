package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdth.class */
public final class zzdth implements zzgpr<zzdtg> {
    private final zzgqe<Executor> zza;
    private final zzgqe<zzdtb> zzb;

    public zzdth(zzgqe<Executor> zzgqeVar, zzgqe<zzdtb> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    /* renamed from: zza */
    public final zzdtg zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzdtg(zzfxbVar, ((zzdtc) this.zzb).zzb());
    }
}
