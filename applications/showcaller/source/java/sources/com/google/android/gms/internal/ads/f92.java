package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.va2;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f92.class */
public final class f92<S extends va2> implements wa2<S> {

    /* renamed from: a */
    private final wa2<S> f22749a;

    /* renamed from: b */
    private final long f22750b;

    /* renamed from: c */
    private final ScheduledExecutorService f22751c;

    public f92(wa2<S> wa2Var, long j, ScheduledExecutorService scheduledExecutorService) {
        this.f22749a = wa2Var;
        this.f22750b = j;
        this.f22751c = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<S> zza() {
        r03<S> zza = this.f22749a.zza();
        long j = this.f22750b;
        r03<S> r03Var = zza;
        if (j > 0) {
            r03Var = k03.m13996h(zza, j, TimeUnit.MILLISECONDS, this.f22751c);
        }
        return k03.m13997g(r03Var, Throwable.class, e92.f22052a, qi0.f28500f);
    }
}
