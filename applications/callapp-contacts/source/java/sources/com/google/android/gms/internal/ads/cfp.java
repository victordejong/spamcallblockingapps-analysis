package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cgy;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfp.class */
public final class cfp<S extends cgy<?>> implements chb<S> {

    /* renamed from: a */
    private final chb<S> f45676a;

    /* renamed from: b */
    private final long f45677b;

    /* renamed from: c */
    private final ScheduledExecutorService f45678c;

    public cfp(chb<S> chbVar, long j, ScheduledExecutorService scheduledExecutorService) {
        this.f45676a = chbVar;
        this.f45677b = j;
        this.f45678c = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<S> mo17449a() {
        dbt<S> mo17449a = this.f45676a.mo17449a();
        long j = this.f45677b;
        dbt<S> dbtVar = mo17449a;
        if (j > 0) {
            dbtVar = dbh.m16902a(mo17449a, j, TimeUnit.MILLISECONDS, this.f45678c);
        }
        return dac.m16972a(dbtVar, Throwable.class, cfo.f45675a, C13091zd.f50123f);
    }
}
