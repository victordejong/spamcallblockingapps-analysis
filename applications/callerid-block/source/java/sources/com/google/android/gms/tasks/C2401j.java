package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.C1581h;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.gms.tasks.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/j.class */
public final class C2401j {
    /* renamed from: a */
    public static <TResult> TResult m3764a(AbstractC2397g<TResult> abstractC2397g) {
        C1581h.m8349f();
        C1581h.m8346i(abstractC2397g, "Task must not be null");
        if (abstractC2397g.m3773n()) {
            return (TResult) m3755j(abstractC2397g);
        }
        b bVar = new b((RunnableC2396f0) null);
        m3754k(abstractC2397g, bVar);
        bVar.d();
        return (TResult) m3755j(abstractC2397g);
    }

    /* renamed from: b */
    public static <TResult> TResult m3763b(AbstractC2397g<TResult> abstractC2397g, long j, TimeUnit timeUnit) {
        C1581h.m8349f();
        C1581h.m8346i(abstractC2397g, "Task must not be null");
        C1581h.m8346i(timeUnit, "TimeUnit must not be null");
        if (abstractC2397g.m3773n()) {
            return (TResult) m3755j(abstractC2397g);
        }
        b bVar = new b((RunnableC2396f0) null);
        m3754k(abstractC2397g, bVar);
        if (!bVar.e(j, timeUnit)) {
            throw new TimeoutException("Timed out waiting for Task");
        }
        return (TResult) m3755j(abstractC2397g);
    }

    /* renamed from: c */
    public static <TResult> AbstractC2397g<TResult> m3762c(Executor executor, Callable<TResult> callable) {
        C1581h.m8346i(executor, "Executor must not be null");
        C1581h.m8346i(callable, "Callback must not be null");
        b0 b0Var = new b0();
        executor.execute(new RunnableC2396f0(b0Var, callable));
        return b0Var;
    }

    /* renamed from: d */
    public static <TResult> AbstractC2397g<TResult> m3761d(Exception exc) {
        b0 b0Var = new b0();
        b0Var.r(exc);
        return b0Var;
    }

    /* renamed from: e */
    public static <TResult> AbstractC2397g<TResult> m3760e(TResult tresult) {
        b0 b0Var = new b0();
        b0Var.s(tresult);
        return b0Var;
    }

    /* renamed from: f */
    public static AbstractC2397g<Void> m3759f(Collection<? extends AbstractC2397g<?>> collection) {
        if (collection == null || collection.isEmpty()) {
            return m3760e(null);
        }
        for (AbstractC2397g<?> abstractC2397g : collection) {
            if (abstractC2397g == null) {
                throw new NullPointerException("null tasks are not accepted");
            }
        }
        b0 b0Var = new b0();
        c cVar = new c(collection.size(), b0Var);
        for (AbstractC2397g<?> abstractC2397g2 : collection) {
            m3754k(abstractC2397g2, cVar);
        }
        return b0Var;
    }

    /* renamed from: g */
    public static AbstractC2397g<Void> m3758g(AbstractC2397g<?>... abstractC2397gArr) {
        return (abstractC2397gArr == null || abstractC2397gArr.length == 0) ? m3760e(null) : m3759f(Arrays.asList(abstractC2397gArr));
    }

    /* renamed from: h */
    public static AbstractC2397g<List<AbstractC2397g<?>>> m3757h(Collection<? extends AbstractC2397g<?>> collection) {
        return (collection == null || collection.isEmpty()) ? m3760e(Collections.emptyList()) : m3759f(collection).m3779h(new g0(collection));
    }

    /* renamed from: i */
    public static AbstractC2397g<List<AbstractC2397g<?>>> m3756i(AbstractC2397g<?>... abstractC2397gArr) {
        return (abstractC2397gArr == null || abstractC2397gArr.length == 0) ? m3760e(Collections.emptyList()) : m3757h(Arrays.asList(abstractC2397gArr));
    }

    /* renamed from: j */
    private static <TResult> TResult m3755j(AbstractC2397g<TResult> abstractC2397g) {
        if (abstractC2397g.m3772o()) {
            return abstractC2397g.m3776k();
        }
        if (!abstractC2397g.m3774m()) {
            throw new ExecutionException(abstractC2397g.m3777j());
        }
        throw new CancellationException("Task is already canceled");
    }

    /* renamed from: k */
    private static void m3754k(AbstractC2397g<?> abstractC2397g, a aVar) {
        Executor executor = C2399i.f10544b;
        abstractC2397g.m3782e(executor, aVar);
        abstractC2397g.m3783d(executor, aVar);
        abstractC2397g.m3786a(executor, aVar);
    }
}
