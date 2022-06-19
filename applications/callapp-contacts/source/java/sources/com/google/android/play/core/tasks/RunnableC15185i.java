package com.google.android.play.core.tasks;
/* renamed from: com.google.android.play.core.tasks.i */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/i.class */
final class RunnableC15185i implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC15180d f55012a;

    /* renamed from: b */
    final /* synthetic */ C15187k f55013b;

    public RunnableC15185i(C15187k c15187k, AbstractC15180d abstractC15180d) {
        this.f55013b = c15187k;
        this.f55012a = abstractC15180d;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f55013b.f55014a) {
            if (this.f55013b.f55015b != null) {
                this.f55013b.f55015b.onFailure(this.f55012a.mo9309d());
            }
        }
    }
}
