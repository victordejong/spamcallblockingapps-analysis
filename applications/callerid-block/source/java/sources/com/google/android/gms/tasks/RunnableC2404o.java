package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/o.class */
final class RunnableC2404o implements Runnable {

    /* renamed from: b */
    private final /* synthetic */ p f10550b;

    RunnableC2404o(p pVar) {
        this.f10550b = pVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (p.a(this.f10550b)) {
            if (p.b(this.f10550b) != null) {
                p.b(this.f10550b).mo3262c();
            }
        }
    }
}
