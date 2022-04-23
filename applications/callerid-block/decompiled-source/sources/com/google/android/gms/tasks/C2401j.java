package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.C1581h;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
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
    public static <TResult> TResult m3764a(AbstractC2397g<TResult> gVar) {
        C1581h.m8349f();
        C1581h.m8346i(gVar, "Task must not be null");
        if (gVar.m3773n()) {
            return (TResult) m3755j(gVar);
        }
        b bVar = new b((RunnableC2396f0) null);
        m3754k(gVar, bVar);
        bVar.d();
        return (TResult) m3755j(gVar);
    }

    /* renamed from: b */
    public static <TResult> TResult m3763b(AbstractC2397g<TResult> gVar, long j, TimeUnit timeUnit) {
        C1581h.m8349f();
        C1581h.m8346i(gVar, "Task must not be null");
        C1581h.m8346i(timeUnit, "TimeUnit must not be null");
        if (gVar.m3773n()) {
            return (TResult) m3755j(gVar);
        }
        b bVar = new b((RunnableC2396f0) null);
        m3754k(gVar, bVar);
        if (bVar.e(j, timeUnit)) {
            return (TResult) m3755j(gVar);
        }
        throw new TimeoutException("Timed out waiting for Task");
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
        Iterator<? extends AbstractC2397g<?>> it = collection.iterator();
        while (it.hasNext()) {
            if (((AbstractC2397g) it.next()) == null) {
                throw new NullPointerException("null tasks are not accepted");
            }
        }
        b0 b0Var = new b0();
        c cVar = new c(collection.size(), b0Var);
        Iterator<? extends AbstractC2397g<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            m3754k((AbstractC2397g) it2.next(), cVar);
        }
        return b0Var;
    }

    /* renamed from: g */
    public static AbstractC2397g<Void> m3758g(AbstractC2397g<?>... gVarArr) {
        return (gVarArr == null || gVarArr.length == 0) ? m3760e(null) : m3759f(Arrays.asList(gVarArr));
    }

    /* renamed from: h */
    public static AbstractC2397g<List<AbstractC2397g<?>>> m3757h(Collection<? extends AbstractC2397g<?>> collection) {
        return (collection == null || collection.isEmpty()) ? m3760e(Collections.emptyList()) : m3759f(collection).m3779h(new g0(collection));
    }

    /* renamed from: i */
    public static AbstractC2397g<List<AbstractC2397g<?>>> m3756i(AbstractC2397g<?>... gVarArr) {
        return (gVarArr == null || gVarArr.length == 0) ? m3760e(Collections.emptyList()) : m3757h(Arrays.asList(gVarArr));
    }

    /* renamed from: j */
    private static <TResult> TResult m3755j(AbstractC2397g<TResult> gVar) {
        if (gVar.m3772o()) {
            return gVar.m3776k();
        }
        if (gVar.m3774m()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(gVar.m3777j());
    }

    /* renamed from: k */
    private static void m3754k(AbstractC2397g<?> gVar, a aVar) {
        Executor executor = C2399i.f10544b;
        gVar.m3782e(executor, aVar);
        gVar.m3783d(executor, aVar);
        gVar.m3786a(executor, aVar);
    }
}
