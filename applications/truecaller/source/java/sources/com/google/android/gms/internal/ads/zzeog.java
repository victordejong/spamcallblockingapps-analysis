package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.ads.zzerx;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeog.class */
public final class zzeog<S extends zzerx<?>> {
    public final zzfsm<S> zza;
    private final long zzb;
    private final Clock zzc;

    public zzeog(zzfsm<S> zzfsmVar, long j, Clock clock) {
        this.zza = zzfsmVar;
        this.zzc = clock;
        this.zzb = clock.mo38789a() + j;
    }

    public final boolean zza() {
        return this.zzb < this.zzc.mo38789a();
    }
}
