package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbc.class */
public class dbc<V> extends dbl<V> {
    /* renamed from: c */
    public static <V> dbc<V> m16907c(dbt<V> dbtVar) {
        return dbtVar instanceof dbc ? (dbc) dbtVar : new dbe(dbtVar);
    }

    /* renamed from: a */
    public final dbc<V> m16912a(long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return (dbc) dbh.m16902a(this, j, timeUnit, scheduledExecutorService);
    }

    /* renamed from: a */
    public final <T> dbc<T> m16911a(cxu<? super V, T> cxuVar, Executor executor) {
        cyg.m17060a(cxuVar);
        dal dalVar = new dal(this, cxuVar);
        addListener(dalVar, dbv.m16889a(executor, dalVar));
        return dalVar;
    }

    /* renamed from: a */
    public final <T> dbc<T> m16910a(daq<? super V, T> daqVar, Executor executor) {
        cyg.m17060a(executor);
        dai daiVar = new dai(this, daqVar);
        addListener(daiVar, dbv.m16889a(executor, daiVar));
        return daiVar;
    }

    /* renamed from: a */
    public final <X extends Throwable> dbc<V> m16909a(Class<X> cls, cxu<? super X, ? extends V> cxuVar, Executor executor) {
        dae daeVar = new dae(this, cls, cxuVar);
        addListener(daeVar, dbv.m16889a(executor, daeVar));
        return daeVar;
    }

    /* renamed from: a */
    public final <X extends Throwable> dbc<V> m16908a(Class<X> cls, daq<? super X, ? extends V> daqVar, Executor executor) {
        daf dafVar = new daf(this, cls, daqVar);
        addListener(dafVar, dbv.m16889a(executor, dafVar));
        return dafVar;
    }
}
