package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.r */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/r.class */
final class RunnableC7978r implements Runnable {

    /* renamed from: d */
    final /* synthetic */ C7979s f35973d;

    public RunnableC7978r(C7979s c7979s) {
        this.f35973d = c7979s;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC7956b abstractC7956b;
        AbstractC7956b abstractC7956b2;
        obj = this.f35973d.f35975b;
        synchronized (obj) {
            abstractC7956b = this.f35973d.f35976c;
            if (abstractC7956b != null) {
                abstractC7956b2 = this.f35973d.f35976c;
                abstractC7956b2.mo5787c();
            }
        }
    }
}
