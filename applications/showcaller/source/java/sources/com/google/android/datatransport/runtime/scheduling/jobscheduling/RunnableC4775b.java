package com.google.android.datatransport.runtime.scheduling.jobscheduling;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.b */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/b.class */
final /* synthetic */ class RunnableC4775b implements Runnable {

    /* renamed from: d */
    private static final RunnableC4775b f14393d = new RunnableC4775b();

    private RunnableC4775b() {
    }

    /* renamed from: a */
    public static Runnable m21800a() {
        return f14393d;
    }

    @Override // java.lang.Runnable
    public void run() {
        AlarmManagerSchedulerBroadcastReceiver.m21815a();
    }
}
