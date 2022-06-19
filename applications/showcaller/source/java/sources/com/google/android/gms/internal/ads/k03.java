package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k03.class */
public final class k03 extends m03 {
    /* renamed from: a */
    public static <V> r03<V> m14003a(V v) {
        return v == null ? (r03<V>) o03.f27389d : new o03(v);
    }

    /* renamed from: b */
    public static r03<Void> m14002b() {
        return o03.f27389d;
    }

    /* renamed from: c */
    public static <V> r03<V> m14001c(Throwable th) {
        Objects.requireNonNull(th);
        return new n03(th);
    }

    /* renamed from: d */
    public static <O> r03<O> m14000d(Callable<O> callable, Executor executor) {
        e13 e13Var = new e13(callable);
        executor.execute(e13Var);
        return e13Var;
    }

    /* renamed from: e */
    public static <O> r03<O> m13999e(tz2<O> tz2Var, Executor executor) {
        e13 e13Var = new e13(tz2Var);
        executor.execute(e13Var);
        return e13Var;
    }

    /* renamed from: f */
    public static <V, X extends Throwable> r03<V> m13998f(r03<? extends V> r03Var, Class<X> cls, nu2<? super X, ? extends V> nu2Var, Executor executor) {
        sy2 sy2Var = new sy2(r03Var, cls, nu2Var);
        r03Var.mo10015d(sy2Var, y03.m9005c(executor, sy2Var));
        return sy2Var;
    }

    /* renamed from: g */
    public static <V, X extends Throwable> r03<V> m13997g(r03<? extends V> r03Var, Class<X> cls, uz2<? super X, ? extends V> uz2Var, Executor executor) {
        ry2 ry2Var = new ry2(r03Var, cls, uz2Var);
        r03Var.mo10015d(ry2Var, y03.m9005c(executor, ry2Var));
        return ry2Var;
    }

    /* renamed from: h */
    public static <V> r03<V> m13996h(r03<V> r03Var, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return r03Var.isDone() ? r03Var : c13.m16134I(r03Var, j, timeUnit, scheduledExecutorService);
    }

    /* renamed from: i */
    public static <I, O> r03<O> m13995i(r03<I> r03Var, uz2<? super I, ? extends O> uz2Var, Executor executor) {
        int i = kz2.f25899k;
        Objects.requireNonNull(executor);
        hz2 hz2Var = new hz2(r03Var, uz2Var);
        r03Var.mo10015d(hz2Var, y03.m9005c(executor, hz2Var));
        return hz2Var;
    }

    /* renamed from: j */
    public static <I, O> r03<O> m13994j(r03<I> r03Var, nu2<? super I, ? extends O> nu2Var, Executor executor) {
        int i = kz2.f25899k;
        Objects.requireNonNull(nu2Var);
        iz2 iz2Var = new iz2(r03Var, nu2Var);
        r03Var.mo10015d(iz2Var, y03.m9005c(executor, iz2Var));
        return iz2Var;
    }

    /* renamed from: k */
    public static <V> r03<List<V>> m13993k(Iterable<? extends r03<? extends V>> iterable) {
        return new vz2(zzfoj.zzo(iterable), true);
    }

    @SafeVarargs
    /* renamed from: l */
    public static <V> i03<V> m13992l(r03<? extends V>... r03VarArr) {
        return new i03<>(false, zzfoj.zzq(r03VarArr), null);
    }

    /* renamed from: m */
    public static <V> i03<V> m13991m(Iterable<? extends r03<? extends V>> iterable) {
        return new i03<>(false, zzfoj.zzo(iterable), null);
    }

    @SafeVarargs
    /* renamed from: n */
    public static <V> i03<V> m13990n(r03<? extends V>... r03VarArr) {
        return new i03<>(true, zzfoj.zzq(r03VarArr), null);
    }

    /* renamed from: o */
    public static <V> i03<V> m13989o(Iterable<? extends r03<? extends V>> iterable) {
        return new i03<>(true, zzfoj.zzo(iterable), null);
    }

    /* renamed from: p */
    public static <V> void m13988p(r03<V> r03Var, f03<? super V> f03Var, Executor executor) {
        Objects.requireNonNull(f03Var);
        r03Var.mo10015d(new h03(r03Var, f03Var), executor);
    }

    /* renamed from: q */
    public static <V> V m13987q(Future<V> future) {
        if (future.isDone()) {
            return (V) f13.m15326a(future);
        }
        throw new IllegalStateException(iv2.m14267d("Future was expected to be done: %s", future));
    }

    /* renamed from: r */
    public static <V> V m13986r(Future<V> future) {
        try {
            return (V) f13.m15326a(future);
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (!(cause instanceof Error)) {
                throw new zzftc(cause);
            }
            throw new zzfrs((Error) cause);
        }
    }
}
