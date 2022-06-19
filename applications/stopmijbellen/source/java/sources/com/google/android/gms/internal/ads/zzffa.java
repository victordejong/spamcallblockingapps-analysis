package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzffa.class */
public final class zzffa implements zzgpr<Clock> {
    private final zzfez zza;

    public zzffa(zzfez zzfezVar) {
        this.zza = zzfezVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* synthetic */ Object zzb() {
        Clock defaultClock = DefaultClock.getInstance();
        zzgpz.zzb(defaultClock);
        return defaultClock;
    }
}
