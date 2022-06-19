package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.C12045o;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.gms.tasks.k */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/k.class */
public final class C14188k {
    private C14188k() {
    }

    /* renamed from: a */
    public static <TResult> AbstractC14185h<TResult> m11465a(Exception exc) {
        C14176ah c14176ah = new C14176ah();
        c14176ah.m11500a(exc);
        return c14176ah;
    }

    /* renamed from: a */
    public static <TResult> AbstractC14185h<TResult> m11464a(TResult tresult) {
        C14176ah c14176ah = new C14176ah();
        c14176ah.m11499a((C14176ah) tresult);
        return c14176ah;
    }

    /* renamed from: a */
    public static AbstractC14185h<Void> m11463a(Collection<? extends AbstractC14185h<?>> collection) {
        if (collection == null || collection.isEmpty()) {
            return m11464a((Object) null);
        }
        for (AbstractC14185h<?> abstractC14185h : collection) {
            Objects.requireNonNull(abstractC14185h, "null tasks are not accepted");
        }
        C14176ah c14176ah = new C14176ah();
        C14191n c14191n = new C14191n(collection.size(), c14176ah);
        for (AbstractC14185h<?> abstractC14185h2 : collection) {
            m11466a(abstractC14185h2, c14191n);
        }
        return c14176ah;
    }

    @Deprecated
    /* renamed from: a */
    public static <TResult> AbstractC14185h<TResult> m11462a(Executor executor, Callable<TResult> callable) {
        C12045o.m19161a(executor, "Executor must not be null");
        C12045o.m19161a(callable, "Callback must not be null");
        C14176ah c14176ah = new C14176ah();
        executor.execute(new RunnableC14177ai(c14176ah, callable));
        return c14176ah;
    }

    /* renamed from: a */
    public static AbstractC14185h<Void> m11461a(AbstractC14185h<?>... abstractC14185hArr) {
        return m11463a((Collection<? extends AbstractC14185h<?>>) Arrays.asList(abstractC14185hArr));
    }

    /* renamed from: a */
    public static <TResult> TResult m11468a(AbstractC14185h<TResult> abstractC14185h) throws ExecutionException, InterruptedException {
        C12045o.m19152c("Must not be called on the main application thread");
        C12045o.m19161a(abstractC14185h, "Task must not be null");
        if (abstractC14185h.mo11491a()) {
            return (TResult) m11460b(abstractC14185h);
        }
        C14189l c14189l = new C14189l(null);
        m11466a(abstractC14185h, c14189l);
        c14189l.f52145a.await();
        return (TResult) m11460b(abstractC14185h);
    }

    /* renamed from: a */
    public static <TResult> TResult m11467a(AbstractC14185h<TResult> abstractC14185h, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        C12045o.m19152c("Must not be called on the main application thread");
        C12045o.m19161a(abstractC14185h, "Task must not be null");
        C12045o.m19161a(timeUnit, "TimeUnit must not be null");
        if (abstractC14185h.mo11491a()) {
            return (TResult) m11460b(abstractC14185h);
        }
        C14189l c14189l = new C14189l(null);
        m11466a(abstractC14185h, c14189l);
        if (!c14189l.m11457a(j, timeUnit)) {
            throw new TimeoutException("Timed out waiting for Task");
        }
        return (TResult) m11460b(abstractC14185h);
    }

    /* renamed from: a */
    private static <T> void m11466a(AbstractC14185h<T> abstractC14185h, AbstractC14190m<? super T> abstractC14190m) {
        abstractC14185h.mo11480a(C14187j.f52144b, (AbstractC14183f<? super T>) abstractC14190m);
        abstractC14185h.mo11481a(C14187j.f52144b, (AbstractC14182e) abstractC14190m);
        abstractC14185h.mo11483a(C14187j.f52144b, (AbstractC14180c) abstractC14190m);
    }

    /* renamed from: b */
    public static AbstractC14185h<List<AbstractC14185h<?>>> m11459b(Collection<? extends AbstractC14185h<?>> collection) {
        if (collection == null || collection.isEmpty()) {
            return m11464a(Collections.emptyList());
        }
        return m11463a(collection).mo11477b(C14187j.f52143a, new C14178aj(collection));
    }

    /* renamed from: b */
    public static AbstractC14185h<List<AbstractC14185h<?>>> m11458b(AbstractC14185h<?>... abstractC14185hArr) {
        return m11459b(Arrays.asList(abstractC14185hArr));
    }

    /* renamed from: b */
    private static <TResult> TResult m11460b(AbstractC14185h<TResult> abstractC14185h) throws ExecutionException {
        if (abstractC14185h.mo11478b()) {
            return abstractC14185h.mo11475d();
        }
        if (!abstractC14185h.mo11476c()) {
            throw new ExecutionException(abstractC14185h.mo11474e());
        }
        throw new CancellationException("Task is already canceled");
    }
}
