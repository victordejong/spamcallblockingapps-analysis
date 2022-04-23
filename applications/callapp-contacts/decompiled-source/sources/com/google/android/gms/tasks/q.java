package com.google.android.gms.tasks;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/q.class */
final class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ h f30027a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ r f30028b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(r rVar, h hVar) {
        this.f30028b = rVar;
        this.f30027a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah ahVar;
        ah ahVar2;
        ah ahVar3;
        b bVar;
        try {
            bVar = this.f30028b.f30030b;
            h hVar = (h) bVar.then(this.f30027a);
            if (hVar == null) {
                this.f30028b.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            hVar.a(j.f30016b, (f) this.f30028b);
            hVar.a(j.f30016b, (e) this.f30028b);
            hVar.a(j.f30016b, (c) this.f30028b);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                ahVar2 = this.f30028b.f30031c;
                ahVar2.a((Exception) e.getCause());
                return;
            }
            ahVar = this.f30028b.f30031c;
            ahVar.a((Exception) e);
        } catch (Exception e2) {
            ahVar3 = this.f30028b.f30031c;
            ahVar3.a(e2);
        }
    }
}
