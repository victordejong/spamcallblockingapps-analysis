package com.huawei.hmf.tasks;

import com.huawei.hmf.tasks.a.i;
import com.huawei.hmf.tasks.p083a.C2243j;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes3-dex2jar.jar:com/huawei/hmf/tasks/Tasks.class */
public class Tasks {
    private static C2243j IMPL = new C2243j();

    public static Task<List<Task<?>>> allOf(Collection<? extends Task<?>> collection) {
        return C2243j.m38197a(collection);
    }

    public static Task<List<Task<?>>> allOf(Task<?>... taskArr) {
        return C2243j.m38197a((Collection<? extends Task<?>>) Arrays.asList(taskArr));
    }

    public static <TResult> TResult await(Task<TResult> task) throws ExecutionException, InterruptedException {
        C2243j.m38198a("await must not be called on the UI thread");
        if (task.isComplete()) {
            return (TResult) C2243j.m38200a((Task<Object>) task);
        }
        OnFailureListener aVar = new C2243j.a();
        task.addOnSuccessListener(aVar).addOnFailureListener(aVar);
        ((C2243j.a) aVar).a.await();
        return (TResult) C2243j.m38200a((Task<Object>) task);
    }

    public static <TResult> TResult await(Task<TResult> task, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        C2243j.m38198a("await must not be called on the UI thread");
        if (!task.isComplete()) {
            OnFailureListener aVar = new C2243j.a();
            task.addOnSuccessListener(aVar).addOnFailureListener(aVar);
            if (!((C2243j.a) aVar).a.await(j, timeUnit)) {
                throw new TimeoutException("Timed out waiting for Task");
            }
        }
        return (TResult) C2243j.m38200a((Task<Object>) task);
    }

    public static <TResult> Task<TResult> call(Callable<TResult> callable) {
        return IMPL.m38196a(TaskExecutors.immediate(), callable);
    }

    public static <TResult> Task<TResult> callInBackground(Callable<TResult> callable) {
        return IMPL.m38196a(TaskExecutors.background(), callable);
    }

    public static <TResult> Task<TResult> callInBackground(Executor executor, Callable<TResult> callable) {
        return IMPL.m38196a(executor, callable);
    }

    public static <TResult> Task<TResult> fromCanceled() {
        i iVar = new i();
        iVar.a();
        return iVar;
    }

    public static <TResult> Task<TResult> fromException(Exception exc) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        taskCompletionSource.setException(exc);
        return taskCompletionSource.getTask();
    }

    public static <TResult> Task<TResult> fromResult(TResult tresult) {
        return C2243j.m38199a(tresult);
    }

    public static Task<Void> join(Collection<? extends Task<?>> collection) {
        return C2243j.m38194c(collection);
    }

    public static Task<Void> join(Task<?>... taskArr) {
        return C2243j.m38194c(Arrays.asList(taskArr));
    }

    public static <TResult> Task<List<TResult>> successOf(Collection<? extends Task<TResult>> collection) {
        return C2243j.m38195b(collection);
    }

    public static <TResult> Task<List<TResult>> successOf(Task<?>... taskArr) {
        return C2243j.m38195b(Arrays.asList(taskArr));
    }
}
