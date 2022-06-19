package com.google.android.datatransport.runtime.scheduling.jobscheduling;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.b */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/b.class */
final /* synthetic */ class RunnableC1338b implements Runnable {

    /* renamed from: b */
    private static final RunnableC1338b f5412b = new RunnableC1338b();

    private RunnableC1338b() {
    }

    /* renamed from: a */
    public static Runnable m9084a() {
        return f5412b;
    }

    @Override // java.lang.Runnable
    public void run() {
        AlarmManagerSchedulerBroadcastReceiver.m9107a();
    }
}
