package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/v.class */
final class RunnableC4487v implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC4469g f19540a;

    /* renamed from: b */
    private final /* synthetic */ C4486u f19541b;

    public RunnableC4487v(C4486u c4486u, AbstractC4469g abstractC4469g) {
        this.f19541b = c4486u;
        this.f19540a = abstractC4469g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC4467e abstractC4467e;
        AbstractC4467e abstractC4467e2;
        obj = this.f19541b.f19538b;
        synchronized (obj) {
            abstractC4467e = this.f19541b.f19539c;
            if (abstractC4467e != null) {
                abstractC4467e2 = this.f19541b.f19539c;
                abstractC4467e2.mo1147a(this.f19540a.mo3891d());
            }
        }
    }
}
