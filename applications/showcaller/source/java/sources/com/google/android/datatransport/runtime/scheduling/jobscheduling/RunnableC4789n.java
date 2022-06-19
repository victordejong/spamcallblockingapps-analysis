package com.google.android.datatransport.runtime.scheduling.jobscheduling;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.n */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/n.class */
public final /* synthetic */ class RunnableC4789n implements Runnable {

    /* renamed from: d */
    private final C4791p f14436d;

    private RunnableC4789n(C4791p c4791p) {
        this.f14436d = c4791p;
    }

    /* renamed from: a */
    public static Runnable m21772a(C4791p c4791p) {
        return new RunnableC4789n(c4791p);
    }

    @Override // java.lang.Runnable
    public void run() {
        r0.f14441d.mo21762a(C4790o.m21771a(this.f14436d));
    }
}
