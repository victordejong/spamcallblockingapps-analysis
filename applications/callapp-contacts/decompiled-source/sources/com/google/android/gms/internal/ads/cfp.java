package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cgy;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfp.class */
public final class cfp<S extends cgy<?>> implements chb<S> {

    /* renamed from: a  reason: collision with root package name */
    private final chb<S> f25741a;

    /* renamed from: b  reason: collision with root package name */
    private final long f25742b;

    /* renamed from: c  reason: collision with root package name */
    private final ScheduledExecutorService f25743c;

    public cfp(chb<S> chbVar, long j, ScheduledExecutorService scheduledExecutorService) {
        this.f25741a = chbVar;
        this.f25742b = j;
        this.f25743c = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<S> a() {
        dbt<S> a2 = this.f25741a.a();
        long j = this.f25742b;
        dbt<S> dbtVar = a2;
        if (j > 0) {
            dbtVar = dbh.a(a2, j, TimeUnit.MILLISECONDS, this.f25743c);
        }
        return dac.a(dbtVar, Throwable.class, cfo.f25740a, zd.f);
    }
}
