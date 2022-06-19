package com.google.android.play.core.tasks;
/* renamed from: com.google.android.play.core.tasks.g */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/g.class */
final class RunnableC15183g implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC15180d f55007a;

    /* renamed from: b */
    final /* synthetic */ C15184h f55008b;

    public RunnableC15183g(C15184h c15184h, AbstractC15180d abstractC15180d) {
        this.f55008b = c15184h;
        this.f55007a = abstractC15180d;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f55008b.f55009a) {
            if (this.f55008b.f55010b != null) {
                this.f55008b.f55010b.onComplete(this.f55007a);
            }
        }
    }
}
