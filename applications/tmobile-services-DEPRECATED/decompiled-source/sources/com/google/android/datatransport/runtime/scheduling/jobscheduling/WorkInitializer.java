package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.concurrent.Executor;
import javax.inject.Inject;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer.class */
public class WorkInitializer {

    /* renamed from: a */
    private final Executor f6758a;

    /* renamed from: b */
    private final EventStore f6759b;

    /* renamed from: c */
    private final WorkScheduler f6760c;

    /* renamed from: d */
    private final SynchronizationGuard f6761d;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Inject
    public WorkInitializer(Executor executor, EventStore eventStore, WorkScheduler workScheduler, SynchronizationGuard synchronizationGuard) {
        this.f6758a = executor;
        this.f6759b = eventStore;
        this.f6760c = workScheduler;
        this.f6761d = synchronizationGuard;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ Object m15310b(WorkInitializer workInitializer) {
        for (TransportContext transportContext : workInitializer.f6759b.mo15274C()) {
            workInitializer.f6760c.mo15304a(transportContext, 1);
        }
        return null;
    }

    /* renamed from: a */
    public void m15311a() {
        this.f6758a.execute(WorkInitializer$$Lambda$1.m15308a(this));
    }
}
