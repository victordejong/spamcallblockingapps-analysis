package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.crn;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/crg.class */
public final class crg extends cro {
    @SafeVarargs
    /* renamed from: a */
    public static <V> crm<V> m10775a(crt<? extends V>... crtVarArr) {
        return new crm<>(false, cpc.m10897a((Object[]) crtVarArr), null);
    }

    /* renamed from: a */
    public static <O> crt<O> m10785a(cqr<O> cqrVar, Executor executor) {
        csh cshVar = new csh(cqrVar);
        executor.execute(cshVar);
        return cshVar;
    }

    /* renamed from: a */
    public static <V> crt<V> m10784a(crt<V> crtVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        if (!crtVar.isDone()) {
            crtVar = csd.m10751a(crtVar, j, timeUnit, scheduledExecutorService);
        }
        return crtVar;
    }

    /* renamed from: a */
    public static <I, O> crt<O> m10783a(crt<I> crtVar, coe<? super I, ? extends O> coeVar, Executor executor) {
        return cqh.m10824a(crtVar, coeVar, executor);
    }

    /* renamed from: a */
    public static <I, O> crt<O> m10782a(crt<I> crtVar, cqt<? super I, ? extends O> cqtVar, Executor executor) {
        return cqh.m10823a(crtVar, cqtVar, executor);
    }

    /* renamed from: a */
    public static <V, X extends Throwable> crt<V> m10780a(crt<? extends V> crtVar, Class<X> cls, cqt<? super X, ? extends V> cqtVar, Executor executor) {
        return cqe.m10854a(crtVar, cls, cqtVar, executor);
    }

    /* renamed from: a */
    public static <V> crt<List<V>> m10779a(Iterable<? extends crt<? extends V>> iterable) {
        return new cqv(cpc.m10899a((Iterable) iterable), true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <V> crt<V> m10778a(@NullableDecl V v) {
        return v == null ? crn.f13613a : new crn(v);
    }

    /* renamed from: a */
    public static <V> crt<V> m10777a(Throwable th) {
        cor.m10936a(th);
        return new crn.C2894a(th);
    }

    /* renamed from: a */
    public static <V> V m10776a(Future<V> future) {
        if (!future.isDone()) {
            throw new IllegalStateException(cos.m10929a("Future was expected to be done: %s", future));
        }
        return (V) csl.m10738a(future);
    }

    /* renamed from: a */
    public static <V> void m10781a(crt<V> crtVar, crh<? super V> crhVar, Executor executor) {
        cor.m10936a(crhVar);
        crtVar.mo6734a(new cri(crtVar, crhVar), executor);
    }

    /* renamed from: b */
    public static <V> crm<V> m10774b(Iterable<? extends crt<? extends V>> iterable) {
        return new crm<>(false, cpc.m10899a((Iterable) iterable), null);
    }

    @SafeVarargs
    /* renamed from: b */
    public static <V> crm<V> m10772b(crt<? extends V>... crtVarArr) {
        return new crm<>(true, cpc.m10897a((Object[]) crtVarArr), null);
    }

    /* renamed from: b */
    public static <V> V m10773b(Future<V> future) {
        cor.m10936a(future);
        try {
            return (V) csl.m10738a(future);
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (!(cause instanceof Error)) {
                throw new zzdrx(cause);
            }
            throw new cqy((Error) cause);
        }
    }

    /* renamed from: c */
    public static <V> crm<V> m10771c(Iterable<? extends crt<? extends V>> iterable) {
        return new crm<>(true, cpc.m10899a((Iterable) iterable), null);
    }
}
