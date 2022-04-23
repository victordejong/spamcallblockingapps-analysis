package androidx.fragment.app;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$a.class */
class b$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ b f1867b;

    b$a(b bVar) {
        this.f1867b = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        b bVar = this.f1867b;
        bVar.a0.onDismiss(bVar.g0);
    }
}
