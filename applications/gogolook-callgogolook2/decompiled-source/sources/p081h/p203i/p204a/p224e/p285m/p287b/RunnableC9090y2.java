package p081h.p203i.p204a.p224e.p285m.p287b;
/* renamed from: h.i.a.e.m.b.y2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/y2.class */
public final class RunnableC9090y2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC8973f f20771a;

    /* renamed from: b */
    public final /* synthetic */ ServiceConnectionC9085x2 f20772b;

    public RunnableC9090y2(ServiceConnectionC9085x2 x2Var, AbstractC8973f fVar) {
        this.f20772b = x2Var;
        this.f20771a = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f20772b) {
            this.f20772b.f20760a = false;
            if (!this.f20772b.f20762c.m16546B()) {
                this.f20772b.f20762c.mo16178c().m16389A().m16338a("Connected to service");
                this.f20772b.f20762c.m16532a(this.f20771a);
            }
        }
    }
}
