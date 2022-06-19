package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.ads.zzevm;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzerv.class */
final class zzerv<S extends zzevm<?>> {
    public final zzfxa<S> zza;
    private final long zzb;
    private final Clock zzc;

    public zzerv(zzfxa<S> zzfxaVar, long j, Clock clock) {
        this.zza = zzfxaVar;
        this.zzc = clock;
        this.zzb = clock.elapsedRealtime() + j;
    }

    public final boolean zza() {
        return this.zzb < this.zzc.elapsedRealtime();
    }
}
