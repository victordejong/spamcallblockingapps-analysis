package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dbn;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbh.class */
public final class dbh extends dbo {
    @SafeVarargs
    public static <V> dbm<V> a(dbt<? extends V>... dbtVarArr) {
        return new dbm<>(true, cyz.a((Object[]) dbtVarArr), null);
    }

    public static <O> dbt<O> a(dar<O> darVar, Executor executor) {
        dcf dcfVar = new dcf(darVar);
        executor.execute(dcfVar);
        return dcfVar;
    }

    public static <V> dbt<V> a(dbt<V> dbtVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return dbtVar.isDone() ? dbtVar : dcb.a(dbtVar, j, timeUnit, scheduledExecutorService);
    }

    public static <V> dbt<List<V>> a(Iterable<? extends dbt<? extends V>> iterable) {
        return new das(cyz.a((Iterable) iterable), true);
    }

    public static <V> dbt<V> a(V v) {
        return v == null ? (dbt<V>) dbn.f26701a : new dbn(v);
    }

    public static <V> dbt<V> a(Throwable th) {
        cyg.a(th);
        return new dbn.a(th);
    }

    public static <V> V a(Future<V> future) throws ExecutionException {
        if (future.isDone()) {
            return (V) dcj.a(future);
        }
        throw new IllegalStateException(cyo.a("Future was expected to be done: %s", future));
    }

    public static <V> void a(dbt<V> dbtVar, dbi<? super V> dbiVar, Executor executor) {
        cyg.a(dbiVar);
        dbtVar.addListener(new dbj(dbtVar, dbiVar), executor);
    }

    public static <V> dbm<V> b(Iterable<? extends dbt<? extends V>> iterable) {
        return new dbm<>(true, cyz.a((Iterable) iterable), null);
    }

    public static <V> V b(Future<V> future) {
        cyg.a(future);
        try {
            return (V) dcj.a(future);
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause instanceof Error) {
                throw new day((Error) cause);
            }
            throw new zzecj(cause);
        }
    }
}
