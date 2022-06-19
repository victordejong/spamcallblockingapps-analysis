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
    /* renamed from: a */
    public static <V> dbm<V> m16896a(dbt<? extends V>... dbtVarArr) {
        return new dbm<>(true, cyz.m17034a((Object[]) dbtVarArr), null);
    }

    /* renamed from: a */
    public static <O> dbt<O> m16903a(dar<O> darVar, Executor executor) {
        dcf dcfVar = new dcf(darVar);
        executor.execute(dcfVar);
        return dcfVar;
    }

    /* renamed from: a */
    public static <V> dbt<V> m16902a(dbt<V> dbtVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return dbtVar.isDone() ? dbtVar : dcb.m16886a(dbtVar, j, timeUnit, scheduledExecutorService);
    }

    /* renamed from: a */
    public static <V> dbt<List<V>> m16900a(Iterable<? extends dbt<? extends V>> iterable) {
        return new das(cyz.m17037a((Iterable) iterable), true);
    }

    /* renamed from: a */
    public static <V> dbt<V> m16899a(V v) {
        return v == null ? (dbt<V>) dbn.f46920a : new dbn(v);
    }

    /* renamed from: a */
    public static <V> dbt<V> m16898a(Throwable th) {
        cyg.m17060a(th);
        return new dbn.C12319a(th);
    }

    /* renamed from: a */
    public static <V> V m16897a(Future<V> future) throws ExecutionException {
        if (future.isDone()) {
            return (V) dcj.m16871a(future);
        }
        throw new IllegalStateException(cyo.m17048a("Future was expected to be done: %s", future));
    }

    /* renamed from: a */
    public static <V> void m16901a(dbt<V> dbtVar, dbi<? super V> dbiVar, Executor executor) {
        cyg.m17060a(dbiVar);
        dbtVar.addListener(new dbj(dbtVar, dbiVar), executor);
    }

    /* renamed from: b */
    public static <V> dbm<V> m16895b(Iterable<? extends dbt<? extends V>> iterable) {
        return new dbm<>(true, cyz.m17037a((Iterable) iterable), null);
    }

    /* renamed from: b */
    public static <V> V m16894b(Future<V> future) {
        cyg.m17060a(future);
        try {
            return (V) dcj.m16871a(future);
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (!(cause instanceof Error)) {
                throw new zzecj(cause);
            }
            throw new day((Error) cause);
        }
    }
}
