package com.google.android.datatransport.runtime.scheduling.jobscheduling;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/b.class */
final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final b f20550a = new b();

    private b() {
    }

    public static Runnable a() {
        return f20550a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlarmManagerSchedulerBroadcastReceiver.a();
    }
}
