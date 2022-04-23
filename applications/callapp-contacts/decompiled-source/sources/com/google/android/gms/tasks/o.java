package com.google.android.gms.tasks;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/o.class */
final class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ h f30022a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ p f30023b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(p pVar, h hVar) {
        this.f30023b = pVar;
        this.f30022a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f30022a.c()) {
            this.f30023b.f30025b.f();
            return;
        }
        try {
            this.f30023b.f30025b.a((ah<TContinuationResult>) this.f30023b.f30024a.then(this.f30022a));
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.f30023b.f30025b.a((Exception) e.getCause());
            } else {
                this.f30023b.f30025b.a(e);
            }
        } catch (Exception e2) {
            this.f30023b.f30025b.a(e2);
        }
    }
}
