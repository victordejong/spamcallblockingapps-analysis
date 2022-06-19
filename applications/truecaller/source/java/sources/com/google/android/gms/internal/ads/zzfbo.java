package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfbo.class */
public final class zzfbo implements zzgla<Clock> {
    private final zzfbn zza;

    public zzfbo(zzfbn zzfbnVar) {
        this.zza = zzfbnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final Object zzb() {
        DefaultClock defaultClock = DefaultClock.f6131a;
        zzgli.zzb(defaultClock);
        return defaultClock;
    }
}
