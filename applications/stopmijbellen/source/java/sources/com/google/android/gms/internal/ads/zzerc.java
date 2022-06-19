package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzerc.class */
public final class zzerc implements zzgpr<zzerb> {
    private final zzgqe<Executor> zza;
    private final zzgqe<zzcik> zzb;

    public zzerc(zzgqe<Executor> zzgqeVar, zzgqe<zzcik> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzerb(zzfxbVar, this.zzb.zzb());
    }
}
