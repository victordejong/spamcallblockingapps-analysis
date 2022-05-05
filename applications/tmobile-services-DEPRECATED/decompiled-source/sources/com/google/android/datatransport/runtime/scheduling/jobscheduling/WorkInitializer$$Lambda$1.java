package com.google.android.datatransport.runtime.scheduling.jobscheduling;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer$$Lambda$1.class */
public final /* synthetic */ class WorkInitializer$$Lambda$1 implements Runnable {

    /* renamed from: f */
    private final WorkInitializer f6762f;

    private WorkInitializer$$Lambda$1(WorkInitializer workInitializer) {
        this.f6762f = workInitializer;
    }

    /* renamed from: a */
    public static Runnable m15308a(WorkInitializer workInitializer) {
        return new WorkInitializer$$Lambda$1(workInitializer);
    }

    @Override // java.lang.Runnable
    public void run() {
        r0.f6761d.mo15197a(WorkInitializer$$Lambda$2.m15307a(this.f6762f));
    }
}
