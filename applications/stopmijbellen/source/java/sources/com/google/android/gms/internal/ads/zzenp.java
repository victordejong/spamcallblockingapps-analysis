package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzenp.class */
public final class zzenp implements zzgpr<zzeno> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzdnt> zzb;

    public zzenp(zzgqe<Context> zzgqeVar, zzgqe<zzdnt> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    /* renamed from: zza */
    public final zzeno zzb() {
        return new zzeno(this.zza.zzb(), this.zzb.zzb());
    }
}
