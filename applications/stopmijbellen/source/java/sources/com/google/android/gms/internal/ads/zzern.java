package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzern.class */
public final class zzern implements zzgpr<zzerl> {
    private final zzgqe<zzfxb> zza;
    private final zzgqe<Context> zzb;

    public zzern(zzgqe<zzfxb> zzgqeVar, zzgqe<Context> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzerl(zzfxbVar, ((zzffh) this.zzb).zza());
    }
}
