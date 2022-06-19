package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer.class */
public class WorkInitializer {
    private final Executor executor;
    private final SynchronizationGuard guard;
    private final WorkScheduler scheduler;
    private final EventStore store;

    public WorkInitializer(Executor executor, EventStore eventStore, WorkScheduler workScheduler, SynchronizationGuard synchronizationGuard) {
        this.executor = executor;
        this.store = eventStore;
        this.scheduler = workScheduler;
        this.guard = synchronizationGuard;
    }

    public static /* synthetic */ Object lambda$ensureContextsScheduled$0(WorkInitializer workInitializer) {
        for (TransportContext transportContext : workInitializer.store.loadActiveContexts()) {
            workInitializer.scheduler.schedule(transportContext, 1);
        }
        return null;
    }

    public void ensureContextsScheduled() {
        this.executor.execute(WorkInitializer$$Lambda$1.lambdaFactory$(this));
    }
}
