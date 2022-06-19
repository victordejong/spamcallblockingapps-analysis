package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.ads.zzdfj;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdcg.class */
final class zzdcg<S extends zzdfj<?>> {
    private final Clock zzbqg;
    public final zzdzw<S> zzhbl;
    private final long zzhbm;

    public zzdcg(zzdzw<S> zzdzwVar, long j, Clock clock) {
        this.zzhbl = zzdzwVar;
        this.zzbqg = clock;
        this.zzhbm = clock.elapsedRealtime() + j;
    }

    public final boolean hasExpired() {
        return this.zzhbm < this.zzbqg.elapsedRealtime();
    }
}
