package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.o;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/k.class */
public final class k {
    private k() {
    }

    public static <TResult> h<TResult> a(Exception exc) {
        ah ahVar = new ah();
        ahVar.a(exc);
        return ahVar;
    }

    public static <TResult> h<TResult> a(TResult tresult) {
        ah ahVar = new ah();
        ahVar.a((ah) tresult);
        return ahVar;
    }

    public static h<Void> a(Collection<? extends h<?>> collection) {
        if (collection == null || collection.isEmpty()) {
            return a((Object) null);
        }
        Iterator<? extends h<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            Objects.requireNonNull((h) it2.next(), "null tasks are not accepted");
        }
        ah ahVar = new ah();
        n nVar = new n(collection.size(), ahVar);
        Iterator<? extends h<?>> it3 = collection.iterator();
        while (it3.hasNext()) {
            a((h) it3.next(), nVar);
        }
        return ahVar;
    }

    @Deprecated
    public static <TResult> h<TResult> a(Executor executor, Callable<TResult> callable) {
        o.a(executor, "Executor must not be null");
        o.a(callable, "Callback must not be null");
        ah ahVar = new ah();
        executor.execute(new ai(ahVar, callable));
        return ahVar;
    }

    public static h<Void> a(h<?>... hVarArr) {
        return a((Collection<? extends h<?>>) Arrays.asList(hVarArr));
    }

    public static <TResult> TResult a(h<TResult> hVar) throws ExecutionException, InterruptedException {
        o.c("Must not be called on the main application thread");
        o.a(hVar, "Task must not be null");
        if (hVar.a()) {
            return (TResult) b(hVar);
        }
        l lVar = new l(null);
        a(hVar, lVar);
        lVar.f30017a.await();
        return (TResult) b(hVar);
    }

    public static <TResult> TResult a(h<TResult> hVar, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        o.c("Must not be called on the main application thread");
        o.a(hVar, "Task must not be null");
        o.a(timeUnit, "TimeUnit must not be null");
        if (hVar.a()) {
            return (TResult) b(hVar);
        }
        l lVar = new l(null);
        a(hVar, lVar);
        if (lVar.a(j, timeUnit)) {
            return (TResult) b(hVar);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    private static <T> void a(h<T> hVar, m<? super T> mVar) {
        hVar.a(j.f30016b, (f<? super T>) mVar);
        hVar.a(j.f30016b, (e) mVar);
        hVar.a(j.f30016b, (c) mVar);
    }

    public static h<List<h<?>>> b(Collection<? extends h<?>> collection) {
        if (collection == null || collection.isEmpty()) {
            return a(Collections.emptyList());
        }
        return a(collection).b(j.f30015a, new aj(collection));
    }

    public static h<List<h<?>>> b(h<?>... hVarArr) {
        return b(Arrays.asList(hVarArr));
    }

    private static <TResult> TResult b(h<TResult> hVar) throws ExecutionException {
        if (hVar.b()) {
            return hVar.d();
        }
        if (hVar.c()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(hVar.e());
    }
}
