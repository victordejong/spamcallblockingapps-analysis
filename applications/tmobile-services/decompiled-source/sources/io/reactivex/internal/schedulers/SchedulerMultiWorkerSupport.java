package io.reactivex.internal.schedulers;

import io.reactivex.Scheduler;
import io.reactivex.annotations.NonNull;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerMultiWorkerSupport.class */
public interface SchedulerMultiWorkerSupport {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback.class */
    public interface WorkerCallback {
        /* renamed from: a */
        void mo3512a(int i, @NonNull Scheduler.Worker worker);
    }

    /* renamed from: a */
    void mo3513a(int i, @NonNull WorkerCallback workerCallback);
}
