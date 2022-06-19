package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.o */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/o.class */
final class RunnableC14192o implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC14185h f52154a;

    /* renamed from: b */
    final /* synthetic */ C14193p f52155b;

    public RunnableC14192o(C14193p c14193p, AbstractC14185h abstractC14185h) {
        this.f52155b = c14193p;
        this.f52154a = abstractC14185h;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f52154a.mo11476c()) {
            this.f52155b.f52157b.m11496f();
            return;
        }
        try {
            this.f52155b.f52157b.m11499a((C14176ah<TContinuationResult>) this.f52155b.f52156a.then(this.f52154a));
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.f52155b.f52157b.m11500a((Exception) e.getCause());
            } else {
                this.f52155b.f52157b.m11500a(e);
            }
        } catch (Exception e2) {
            this.f52155b.f52157b.m11500a(e2);
        }
    }
}
