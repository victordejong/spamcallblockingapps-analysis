package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.c20;
import p131c.p161d.p170b.p224d.p252g.p253a.d20;
import p131c.p161d.p170b.p224d.p252g.p253a.j10;
import p131c.p161d.p170b.p224d.p252g.p253a.n10;
import p131c.p161d.p170b.p224d.p252g.p253a.o20;
import p131c.p161d.p170b.p224d.p252g.p253a.q20;
import p131c.p161d.p170b.p224d.p252g.p253a.t10;
import p131c.p161d.p170b.p224d.p252g.p253a.z10;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdyq.class */
public final class zzdyq extends d20 {
    @SafeVarargs
    /* renamed from: a */
    public static <V> zzdyv<V> m12985a(zzdzc<? extends V>... zzdzcVarArr) {
        return new zzdyv<>(false, zzdwp.zzb(zzdzcVarArr), null);
    }

    /* renamed from: a */
    public static <O> zzdzc<O> m12995a(zzdyb<O> zzdybVar, Executor executor) {
        q20 q20Var = new q20(zzdybVar);
        executor.execute(q20Var);
        return q20Var;
    }

    /* renamed from: a */
    public static <V> zzdzc<V> m12994a(zzdzc<V> zzdzcVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return zzdzcVar.isDone() ? zzdzcVar : o20.m26608a(zzdzcVar, j, timeUnit, scheduledExecutorService);
    }

    /* renamed from: a */
    public static <I, O> zzdzc<O> m12993a(zzdzc<I> zzdzcVar, zzdvu<? super I, ? extends O> zzdvuVar, Executor executor) {
        return n10.m26624a(zzdzcVar, zzdvuVar, executor);
    }

    /* renamed from: a */
    public static <I, O> zzdzc<O> m12992a(zzdzc<I> zzdzcVar, zzdya<? super I, ? extends O> zzdyaVar, Executor executor) {
        return n10.m26623a(zzdzcVar, zzdyaVar, executor);
    }

    /* renamed from: a */
    public static <V, X extends Throwable> zzdzc<V> m12990a(zzdzc<? extends V> zzdzcVar, Class<X> cls, zzdya<? super X, ? extends V> zzdyaVar, Executor executor) {
        return j10.m26800a(zzdzcVar, cls, zzdyaVar, executor);
    }

    /* renamed from: a */
    public static <V> zzdzc<List<V>> m12989a(Iterable<? extends zzdzc<? extends V>> iterable) {
        return new t10(zzdwp.zzh(iterable), true);
    }

    /* renamed from: a */
    public static <V> zzdzc<V> m12988a(V v) {
        return v == null ? (zzdzc<V>) c20.f12516b : new c20(v);
    }

    /* renamed from: a */
    public static <V> zzdzc<V> m12987a(Throwable th) {
        zzdwd.m13096a(th);
        return new c20.C3419a(th);
    }

    /* renamed from: a */
    public static <V> V m12986a(Future<V> future) throws ExecutionException {
        if (future.isDone()) {
            return (V) zzdzu.m12968a(future);
        }
        throw new IllegalStateException(zzdwf.m13089a("Future was expected to be done: %s", future));
    }

    /* renamed from: a */
    public static <V> void m12991a(zzdzc<V> zzdzcVar, zzdyr<? super V> zzdyrVar, Executor executor) {
        zzdwd.m13096a(zzdyrVar);
        zzdzcVar.mo12976a(new z10(zzdzcVar, zzdyrVar), executor);
    }

    /* renamed from: b */
    public static <V> zzdyv<V> m12984b(Iterable<? extends zzdzc<? extends V>> iterable) {
        return new zzdyv<>(false, zzdwp.zzh(iterable), null);
    }

    @SafeVarargs
    /* renamed from: b */
    public static <V> zzdyv<V> m12982b(zzdzc<? extends V>... zzdzcVarArr) {
        return new zzdyv<>(true, zzdwp.zzb(zzdzcVarArr), null);
    }

    /* renamed from: b */
    public static <V> V m12983b(Future<V> future) {
        zzdwd.m13096a(future);
        try {
            return (V) zzdzu.m12968a(future);
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause instanceof Error) {
                throw new zzdyi((Error) cause);
            }
            throw new zzdzr(cause);
        }
    }

    /* renamed from: c */
    public static <V> zzdyv<V> m12981c(Iterable<? extends zzdzc<? extends V>> iterable) {
        return new zzdyv<>(true, zzdwp.zzh(iterable), null);
    }
}
