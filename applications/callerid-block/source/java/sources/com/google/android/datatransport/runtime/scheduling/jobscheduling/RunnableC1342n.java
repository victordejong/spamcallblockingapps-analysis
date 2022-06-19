package com.google.android.datatransport.runtime.scheduling.jobscheduling;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.n */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/n.class */
final /* synthetic */ class RunnableC1342n implements Runnable {

    /* renamed from: b */
    private final C1343p f5426b;

    private RunnableC1342n(C1343p c1343p) {
        this.f5426b = c1343p;
    }

    /* renamed from: a */
    public static Runnable m9074a(C1343p c1343p) {
        return new RunnableC1342n(c1343p);
    }

    @Override // java.lang.Runnable
    public void run() {
        r0.f5430d.m9068a(o.a(this.f5426b));
    }
}
