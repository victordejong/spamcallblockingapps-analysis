package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.s */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/s.class */
final class RunnableC14196s implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C14197t f52164a;

    public RunnableC14196s(C14197t c14197t) {
        this.f52164a = c14197t;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f52164a.f52165a) {
            if (this.f52164a.f52166b != null) {
                this.f52164a.f52166b.mo8074a();
            }
        }
    }
}
