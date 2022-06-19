package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfjt.class */
public final class zzfjt implements zzgpr<zzfjs> {
    private final zzgqe<Executor> zza;
    private final zzgqe<zzcje> zzb;

    public zzfjt(zzgqe<Executor> zzgqeVar, zzgqe<zzcje> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzfjs(zzfxbVar, this.zzb.zzb());
    }
}
