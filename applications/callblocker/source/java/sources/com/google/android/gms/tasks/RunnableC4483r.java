package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/r.class */
final class RunnableC4483r implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC4469g f19530a;

    /* renamed from: b */
    private final /* synthetic */ C4482q f19531b;

    public RunnableC4483r(C4482q c4482q, AbstractC4469g abstractC4469g) {
        this.f19531b = c4482q;
        this.f19530a = abstractC4469g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC4465c abstractC4465c;
        AbstractC4465c abstractC4465c2;
        obj = this.f19531b.f19528b;
        synchronized (obj) {
            abstractC4465c = this.f19531b.f19529c;
            if (abstractC4465c != null) {
                abstractC4465c2 = this.f19531b.f19529c;
                abstractC4465c2.mo1947a(this.f19530a);
            }
        }
    }
}
