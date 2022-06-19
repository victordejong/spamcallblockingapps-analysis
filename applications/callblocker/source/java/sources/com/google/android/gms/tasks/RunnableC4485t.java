package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/t.class */
final class RunnableC4485t implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC4469g f19535a;

    /* renamed from: b */
    private final /* synthetic */ C4484s f19536b;

    public RunnableC4485t(C4484s c4484s, AbstractC4469g abstractC4469g) {
        this.f19536b = c4484s;
        this.f19535a = abstractC4469g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC4466d abstractC4466d;
        AbstractC4466d abstractC4466d2;
        obj = this.f19536b.f19533b;
        synchronized (obj) {
            abstractC4466d = this.f19536b.f19534c;
            if (abstractC4466d != null) {
                abstractC4466d2 = this.f19536b.f19534c;
                abstractC4466d2.mo3862a(this.f19535a.mo3890e());
            }
        }
    }
}
