package com.google.android.play.core.tasks;
/* renamed from: com.google.android.play.core.tasks.l */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/l.class */
final class RunnableC15188l implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC15180d f55017a;

    /* renamed from: b */
    final /* synthetic */ C15189m f55018b;

    public RunnableC15188l(C15189m c15189m, AbstractC15180d abstractC15180d) {
        this.f55018b = c15189m;
        this.f55017a = abstractC15180d;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f55018b.f55019a) {
            if (this.f55018b.f55020b != null) {
                this.f55018b.f55020b.onSuccess(this.f55017a.mo9310c());
            }
        }
    }
}
