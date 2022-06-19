package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzekf.class */
public final class zzekf implements zzgpr<zzeke> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzdnt> zzb;

    public zzekf(zzgqe<Context> zzgqeVar, zzgqe<zzdnt> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    /* renamed from: zza */
    public final zzeke zzb() {
        return new zzeke(this.zza.zzb(), this.zzb.zzb());
    }
}
