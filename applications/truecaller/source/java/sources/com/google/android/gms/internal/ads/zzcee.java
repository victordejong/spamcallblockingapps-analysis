package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcee.class */
public final class zzcee implements zzgla<zzced> {
    private final zzgln<Clock> zza;
    private final zzgln<zzceb> zzb;

    public zzcee(zzgln<Clock> zzglnVar, zzgln<zzceb> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    /* renamed from: zza */
    public final zzced zzb() {
        return new zzced(this.zza.zzb(), this.zzb.zzb());
    }
}
