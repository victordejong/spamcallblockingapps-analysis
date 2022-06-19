package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;
/* renamed from: e.m.a.f.e.a.a.u0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/u0.class */
public final class RunnableC24948u0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C24954x0 f69874a;

    public RunnableC24948u0(C24954x0 c24954x0) {
        this.f69874a = c24954x0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f69874a.f69893m.lock();
        try {
            C24954x0.m4259q(this.f69874a);
        } finally {
            this.f69874a.f69893m.unlock();
        }
    }
}
