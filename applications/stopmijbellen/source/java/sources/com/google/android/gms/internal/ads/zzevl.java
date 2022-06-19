package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzevl.class */
public final class zzevl implements zzgpr<zzevk> {
    private final zzgqe<zzfxb> zza;
    private final zzgqe<Context> zzb;

    public zzevl(zzgqe<zzfxb> zzgqeVar, zzgqe<Context> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzevk(zzfxbVar, ((zzffh) this.zzb).zza());
    }
}
