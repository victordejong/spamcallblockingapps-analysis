package p081h.p203i.p204a.p224e.p285m.p287b;
/* renamed from: h.i.a.e.m.b.a3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/a3.class */
public final class RunnableC8946a3 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC8973f f20222a;

    /* renamed from: b */
    public final /* synthetic */ ServiceConnectionC9085x2 f20223b;

    public RunnableC8946a3(ServiceConnectionC9085x2 x2Var, AbstractC8973f fVar) {
        this.f20223b = x2Var;
        this.f20222a = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f20223b) {
            this.f20223b.f20760a = false;
            if (!this.f20223b.f20762c.m16546B()) {
                this.f20223b.f20762c.mo16178c().m16368z().m16338a("Connected to remote service");
                this.f20223b.f20762c.m16532a(this.f20222a);
            }
        }
    }
}
