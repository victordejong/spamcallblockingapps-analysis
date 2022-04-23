package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/s.class */
final class RunnableC2406s implements Runnable {

    /* renamed from: b */
    private final /* synthetic */ AbstractC2397g f10553b;

    /* renamed from: c */
    private final /* synthetic */ t f10554c;

    RunnableC2406s(t tVar, AbstractC2397g gVar) {
        this.f10554c = tVar;
        this.f10553b = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (t.a(this.f10554c)) {
            if (t.b(this.f10554c) != null) {
                t.b(this.f10554c).mo3263b(this.f10553b.m3777j());
            }
        }
    }
}
