package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzevv.class */
public final class zzevv implements zzgpr<zzevu> {
    private final zzgqe<zzfxb> zza;
    private final zzgqe<Context> zzb;

    public zzevv(zzgqe<zzfxb> zzgqeVar, zzgqe<Context> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    /* renamed from: zza */
    public final zzevu zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzevu(zzfxbVar, ((zzcqr) this.zzb).zza());
    }
}
