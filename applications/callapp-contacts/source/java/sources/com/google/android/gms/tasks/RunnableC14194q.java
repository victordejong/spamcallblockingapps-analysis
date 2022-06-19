package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.q */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/q.class */
final class RunnableC14194q implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC14185h f52159a;

    /* renamed from: b */
    final /* synthetic */ C14195r f52160b;

    public RunnableC14194q(C14195r c14195r, AbstractC14185h abstractC14185h) {
        this.f52160b = c14195r;
        this.f52159a = abstractC14185h;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C14176ah c14176ah;
        C14176ah c14176ah2;
        C14176ah c14176ah3;
        AbstractC14179b abstractC14179b;
        try {
            abstractC14179b = this.f52160b.f52162b;
            AbstractC14185h abstractC14185h = (AbstractC14185h) abstractC14179b.then(this.f52159a);
            if (abstractC14185h == null) {
                this.f52160b.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            abstractC14185h.mo11480a(C14187j.f52144b, (AbstractC14183f) this.f52160b);
            abstractC14185h.mo11481a(C14187j.f52144b, (AbstractC14182e) this.f52160b);
            abstractC14185h.mo11483a(C14187j.f52144b, (AbstractC14180c) this.f52160b);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                c14176ah2 = this.f52160b.f52163c;
                c14176ah2.m11500a((Exception) e.getCause());
                return;
            }
            c14176ah = this.f52160b.f52163c;
            c14176ah.m11500a((Exception) e);
        } catch (Exception e2) {
            c14176ah3 = this.f52160b.f52163c;
            c14176ah3.m11500a(e2);
        }
    }
}
