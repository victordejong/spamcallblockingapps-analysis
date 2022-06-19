package com.huawei.hmf.tasks.p083a;

import android.os.Looper;
import com.huawei.hmf.tasks.OnCanceledListener;
import com.huawei.hmf.tasks.OnFailureListener;
import com.huawei.hmf.tasks.OnSuccessListener;
import com.huawei.hmf.tasks.Task;
import com.huawei.hmf.tasks.TaskCompletionSource;
import com.huawei.hmf.tasks.TaskExecutors;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* renamed from: com.huawei.hmf.tasks.a.j */
/* loaded from: classes3-dex2jar.jar:com/huawei/hmf/tasks/a/j.class */
public final class C2243j {
    /* renamed from: a */
    public static <TResult> Task<TResult> m38199a(TResult tresult) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        taskCompletionSource.setResult(tresult);
        return taskCompletionSource.getTask();
    }

    /* renamed from: a */
    public static Task<List<Task<?>>> m38197a(Collection<? extends Task<?>> collection) {
        return m38194c(collection).continueWith(new 2(collection));
    }

    /* renamed from: a */
    public static <TResult> TResult m38200a(Task<TResult> task) throws ExecutionException {
        if (task.isSuccessful()) {
            return task.getResult();
        }
        throw new ExecutionException(task.getException());
    }

    /* renamed from: a */
    public static void m38198a(String str) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return;
        }
        throw new IllegalStateException(str);
    }

    /* renamed from: b */
    public static <TResult> Task<List<TResult>> m38195b(Collection<? extends Task<?>> collection) {
        return (Task<List<TResult>>) m38194c(collection).continueWith(new 3(collection));
    }

    /* renamed from: c */
    public static Task<Void> m38194c(Collection<? extends Task<?>> collection) {
        if (collection.isEmpty()) {
            return m38199a((Object) null);
        }
        for (Task<?> task : collection) {
            Objects.requireNonNull(task, "task can not is null");
        }
        i iVar = new i();
        e eVar = new e(collection.size(), iVar);
        for (Task<?> task2 : collection) {
            task2.addOnSuccessListener(TaskExecutors.immediate(), (OnSuccessListener<?>) eVar);
            task2.addOnFailureListener(TaskExecutors.immediate(), (OnFailureListener) eVar);
            task2.addOnCanceledListener(TaskExecutors.immediate(), (OnCanceledListener) eVar);
        }
        return iVar;
    }

    /* renamed from: a */
    public final <TResult> Task<TResult> m38196a(Executor executor, final Callable<TResult> callable) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        try {
            executor.execute(new Runnable() { // from class: com.huawei.hmf.tasks.a.j.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        taskCompletionSource.setResult(callable.call());
                    } catch (Exception e) {
                        taskCompletionSource.setException(e);
                    }
                }
            });
        } catch (Exception e) {
            taskCompletionSource.setException(e);
        }
        return taskCompletionSource.getTask();
    }
}
