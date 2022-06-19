package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/r.class */
final class RunnableC2405r implements Runnable {

    /* renamed from: b */
    private final /* synthetic */ AbstractC2397g f10551b;

    /* renamed from: c */
    private final /* synthetic */ q f10552c;

    RunnableC2405r(q qVar, AbstractC2397g abstractC2397g) {
        this.f10552c = qVar;
        this.f10551b = abstractC2397g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (q.a(this.f10552c)) {
            if (q.b(this.f10552c) != null) {
                q.b(this.f10552c).m3790a(this.f10551b);
            }
        }
    }
}
