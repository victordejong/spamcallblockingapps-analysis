package p1727n3.p1874y.p1908e;
/* renamed from: n3.y.e.k$b */
/* loaded from: classes-dex2jar.jar:n3/y/e/k$b.class */
public class k$b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ k f77538a;

    public k$b(k kVar) {
        this.f77538a = kVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        k kVar = this.f77538a;
        int i = kVar.p;
        if (i == 1) {
            kVar.G0.start();
        } else if (i == 2) {
            kVar.H0.start();
        } else if (i == 3) {
            kVar.z = true;
        }
        if (this.f77538a.d.m133m()) {
            k kVar2 = this.f77538a;
            kVar2.n(kVar2.N0, kVar2.r);
        }
    }
}
