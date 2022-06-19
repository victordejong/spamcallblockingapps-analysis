package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcyv.class */
public final class zzcyv implements zzgpr<zzdhg> {
    private final zzgqe<ScheduledExecutorService> zza;
    private final zzgqe<Clock> zzb;

    public zzcyv(zzgqe<ScheduledExecutorService> zzgqeVar, zzgqe<Clock> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    /* renamed from: zza */
    public final zzdhg zzb() {
        return new zzdhg(this.zza.zzb(), this.zzb.zzb());
    }
}
