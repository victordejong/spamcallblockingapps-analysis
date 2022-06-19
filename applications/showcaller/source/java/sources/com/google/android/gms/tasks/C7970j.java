package com.google.android.gms.tasks;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C6155o;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.gms.tasks.j */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/j.class */
public final class C7970j {
    @RecentlyNonNull
    /* renamed from: a */
    public static <TResult> TResult m5802a(@RecentlyNonNull AbstractC7966g<TResult> abstractC7966g) {
        C6155o.m17020h();
        C6155o.m17017k(abstractC7966g, "Task must not be null");
        if (abstractC7966g.mo5811p()) {
            return (TResult) m5795h(abstractC7966g);
        }
        C7971k c7971k = new C7971k(null);
        m5794i(abstractC7966g, c7971k);
        c7971k.m5793b();
        return (TResult) m5795h(abstractC7966g);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static <TResult> TResult m5801b(@RecentlyNonNull AbstractC7966g<TResult> abstractC7966g, long j, @RecentlyNonNull TimeUnit timeUnit) {
        C6155o.m17020h();
        C6155o.m17017k(abstractC7966g, "Task must not be null");
        C6155o.m17017k(timeUnit, "TimeUnit must not be null");
        if (abstractC7966g.mo5811p()) {
            return (TResult) m5795h(abstractC7966g);
        }
        C7971k c7971k = new C7971k(null);
        m5794i(abstractC7966g, c7971k);
        if (!c7971k.m5792d(j, timeUnit)) {
            throw new TimeoutException("Timed out waiting for Task");
        }
        return (TResult) m5795h(abstractC7966g);
    }

    @Deprecated
    /* renamed from: c */
    public static <TResult> AbstractC7966g<TResult> m5800c(@RecentlyNonNull Executor executor, @RecentlyNonNull Callable<TResult> callable) {
        C6155o.m17017k(executor, "Executor must not be null");
        C6155o.m17017k(callable, "Callback must not be null");
        C7965f0 c7965f0 = new C7965f0();
        executor.execute(new RunnableC7967g0(c7965f0, callable));
        return c7965f0;
    }

    /* renamed from: d */
    public static <TResult> AbstractC7966g<TResult> m5799d(@RecentlyNonNull Exception exc) {
        C7965f0 c7965f0 = new C7965f0();
        c7965f0.m5831v(exc);
        return c7965f0;
    }

    /* renamed from: e */
    public static <TResult> AbstractC7966g<TResult> m5798e(@RecentlyNonNull TResult tresult) {
        C7965f0 c7965f0 = new C7965f0();
        c7965f0.m5833t(tresult);
        return c7965f0;
    }

    /* renamed from: f */
    public static AbstractC7966g<Void> m5797f(Collection<? extends AbstractC7966g<?>> collection) {
        if (collection == null || collection.isEmpty()) {
            return m5798e(null);
        }
        for (AbstractC7966g<?> abstractC7966g : collection) {
            Objects.requireNonNull(abstractC7966g, "null tasks are not accepted");
        }
        C7965f0 c7965f0 = new C7965f0();
        C7973m c7973m = new C7973m(collection.size(), c7965f0);
        for (AbstractC7966g<?> abstractC7966g2 : collection) {
            m5794i(abstractC7966g2, c7973m);
        }
        return c7965f0;
    }

    /* renamed from: g */
    public static AbstractC7966g<Void> m5796g(AbstractC7966g<?>... abstractC7966gArr) {
        return (abstractC7966gArr == null || abstractC7966gArr.length == 0) ? m5798e(null) : m5797f(Arrays.asList(abstractC7966gArr));
    }

    /* renamed from: h */
    private static <TResult> TResult m5795h(AbstractC7966g<TResult> abstractC7966g) {
        if (abstractC7966g.mo5810q()) {
            return abstractC7966g.mo5814m();
        }
        if (!abstractC7966g.mo5812o()) {
            throw new ExecutionException(abstractC7966g.mo5815l());
        }
        throw new CancellationException("Task is already canceled");
    }

    /* renamed from: i */
    private static <T> void m5794i(AbstractC7966g<T> abstractC7966g, AbstractC7972l<? super T> abstractC7972l) {
        Executor executor = C7969i.f35953b;
        abstractC7966g.mo5820g(executor, abstractC7972l);
        abstractC7966g.mo5822e(executor, abstractC7972l);
        abstractC7966g.mo5826a(executor, abstractC7972l);
    }
}
