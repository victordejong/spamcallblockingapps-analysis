package p1727n3.p1874y.p1908e;
/* renamed from: n3.y.e.k$a */
/* loaded from: classes-dex2jar.jar:n3/y/e/k$a.class */
public class k$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ k f77537a;

    public k$a(k kVar) {
        this.f77537a = kVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        C27544x c27544x;
        boolean z = this.f77537a.getVisibility() == 0;
        k kVar = this.f77537a;
        if (kVar.u || !z || (c27544x = kVar.d) == null || !c27544x.m133m()) {
            return;
        }
        long q = this.f77537a.q();
        k kVar2 = this.f77537a;
        kVar2.n(kVar2.K0, 1000 - (q % 1000));
    }
}
