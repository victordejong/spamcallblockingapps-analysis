package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgl.class */
public final class zzcgl implements zzgpr<zzcgk> {
    private final zzgqe<Clock> zza;
    private final zzgqe<zzcgi> zzb;

    public zzcgl(zzgqe<Clock> zzgqeVar, zzgqe<zzcgi> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    /* renamed from: zza */
    public final zzcgk zzb() {
        return new zzcgk(this.zza.zzb(), this.zzb.zzb());
    }
}
