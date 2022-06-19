package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/p.class */
final class RunnableC4481p implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4480o f19526a;

    public RunnableC4481p(C4480o c4480o) {
        this.f19526a = c4480o;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC4464b abstractC4464b;
        AbstractC4464b abstractC4464b2;
        obj = this.f19526a.f19524b;
        synchronized (obj) {
            abstractC4464b = this.f19526a.f19525c;
            if (abstractC4464b != null) {
                abstractC4464b2 = this.f19526a.f19525c;
                abstractC4464b2.mo3861y_();
            }
        }
    }
}
