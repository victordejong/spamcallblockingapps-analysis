package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.u */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/u.class */
final class RunnableC14198u implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC14185h f52168a;

    /* renamed from: b */
    final /* synthetic */ C14199v f52169b;

    public RunnableC14198u(C14199v c14199v, AbstractC14185h abstractC14185h) {
        this.f52169b = c14199v;
        this.f52168a = abstractC14185h;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f52169b.f52170a) {
            if (this.f52169b.f52171b != null) {
                this.f52169b.f52171b.onComplete(this.f52168a);
            }
        }
    }
}
