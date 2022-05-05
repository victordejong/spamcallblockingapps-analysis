package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer$$Lambda$2.class */
final /* synthetic */ class WorkInitializer$$Lambda$2 implements SynchronizationGuard.CriticalSection {

    /* renamed from: a */
    private final WorkInitializer f6763a;

    private WorkInitializer$$Lambda$2(WorkInitializer workInitializer) {
        this.f6763a = workInitializer;
    }

    /* renamed from: a */
    public static SynchronizationGuard.CriticalSection m15307a(WorkInitializer workInitializer) {
        return new WorkInitializer$$Lambda$2(workInitializer);
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
    public Object execute() {
        return WorkInitializer.m15310b(this.f6763a);
    }
}
