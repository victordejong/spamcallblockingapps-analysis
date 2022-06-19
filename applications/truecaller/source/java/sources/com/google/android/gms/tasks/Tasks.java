package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;
import e.m.a.f.q.b0;
import e.m.a.f.q.c;
import e.m.a.f.q.d;
import e.m.a.f.q.e;
import e.m.a.f.q.f;
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
import p193e.p1577m.p1578a.p1642f.p1670q.RunnableC25135c0;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/tasks/Tasks.class */
public final class Tasks {
    private Tasks() {
    }

    /* renamed from: a */
    public static <TResult> TResult m38514a(Task<TResult> task) throws ExecutionException, InterruptedException {
        Preconditions.m38899i("Must not be called on the main application thread");
        Preconditions.m38897k(task, "Task must not be null");
        if (task.m38520r()) {
            return (TResult) m38506i(task);
        }
        d dVar = new d((zzac) null);
        m38505j(task, dVar);
        dVar.a.await();
        return (TResult) m38506i(task);
    }

    /* renamed from: b */
    public static <TResult> TResult m38513b(Task<TResult> task, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        Preconditions.m38899i("Must not be called on the main application thread");
        Preconditions.m38897k(task, "Task must not be null");
        Preconditions.m38897k(timeUnit, "TimeUnit must not be null");
        if (task.m38520r()) {
            return (TResult) m38506i(task);
        }
        d dVar = new d((zzac) null);
        m38505j(task, dVar);
        if (!dVar.a.await(j, timeUnit)) {
            throw new TimeoutException("Timed out waiting for Task");
        }
        return (TResult) m38506i(task);
    }

    @Deprecated
    /* renamed from: c */
    public static <TResult> Task<TResult> m38512c(Executor executor, Callable<TResult> callable) {
        Preconditions.m38897k(executor, "Executor must not be null");
        Preconditions.m38897k(callable, "Callback must not be null");
        b0 b0Var = new b0();
        executor.execute(new RunnableC25135c0(b0Var, callable));
        return b0Var;
    }

    /* renamed from: d */
    public static <TResult> Task<TResult> m38511d() {
        b0 b0Var = new b0();
        b0Var.x();
        return b0Var;
    }

    /* renamed from: e */
    public static <TResult> Task<TResult> m38510e(Exception exc) {
        b0 b0Var = new b0();
        b0Var.v(exc);
        return b0Var;
    }

    /* renamed from: f */
    public static <TResult> Task<TResult> m38509f(TResult tresult) {
        b0 b0Var = new b0();
        b0Var.w(tresult);
        return b0Var;
    }

    /* renamed from: g */
    public static Task<Void> m38508g(Collection<? extends Task<?>> collection) {
        if (collection == null || collection.isEmpty()) {
            return m38509f(null);
        }
        for (Task<?> task : collection) {
            Objects.requireNonNull(task, "null tasks are not accepted");
        }
        b0 b0Var = new b0();
        f fVar = new f(collection.size(), b0Var);
        for (Task<?> task2 : collection) {
            m38505j(task2, fVar);
        }
        return b0Var;
    }

    /* renamed from: h */
    public static Task<List<Task<?>>> m38507h(Task<?>... taskArr) {
        Task<List<Task<?>>> task;
        if (taskArr.length == 0) {
            return m38509f(Collections.emptyList());
        }
        List asList = Arrays.asList(taskArr);
        if (asList == null || asList.isEmpty()) {
            task = m38509f(Collections.emptyList());
        } else {
            task = m38508g(asList).m38525m(TaskExecutors.f6494a, new c(asList));
        }
        return task;
    }

    /* renamed from: i */
    public static <TResult> TResult m38506i(Task<TResult> task) throws ExecutionException {
        if (task.m38519s()) {
            return task.m38523o();
        }
        if (!task.m38521q()) {
            throw new ExecutionException(task.m38524n());
        }
        throw new CancellationException("Task is already canceled");
    }

    /* renamed from: j */
    public static <T> void m38505j(Task<T> task, e<? super T> eVar) {
        Executor executor = TaskExecutors.f6495b;
        task.m38529i(executor, eVar);
        task.m38532f(executor, eVar);
        task.m38536b(executor, eVar);
    }
}
