package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbc.class */
public class dbc<V> extends dbl<V> {
    public static <V> dbc<V> c(dbt<V> dbtVar) {
        return dbtVar instanceof dbc ? (dbc) dbtVar : new dbe(dbtVar);
    }

    public final dbc<V> a(long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return (dbc) dbh.a(this, j, timeUnit, scheduledExecutorService);
    }

    public final <T> dbc<T> a(cxu<? super V, T> cxuVar, Executor executor) {
        cyg.a(cxuVar);
        dal dalVar = new dal(this, cxuVar);
        addListener(dalVar, dbv.a(executor, dalVar));
        return dalVar;
    }

    public final <T> dbc<T> a(daq<? super V, T> daqVar, Executor executor) {
        cyg.a(executor);
        dai daiVar = new dai(this, daqVar);
        addListener(daiVar, dbv.a(executor, daiVar));
        return daiVar;
    }

    public final <X extends Throwable> dbc<V> a(Class<X> cls, cxu<? super X, ? extends V> cxuVar, Executor executor) {
        dae daeVar = new dae(this, cls, cxuVar);
        addListener(daeVar, dbv.a(executor, daeVar));
        return daeVar;
    }

    public final <X extends Throwable> dbc<V> a(Class<X> cls, daq<? super X, ? extends V> daqVar, Executor executor) {
        daf dafVar = new daf(this, cls, daqVar);
        addListener(dafVar, dbv.a(executor, dafVar));
        return dafVar;
    }
}
