package p081h.p203i.p204a.p224e.p285m.p287b;
/* renamed from: h.i.a.e.m.b.t4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/t4.class */
public final class RunnableC9063t4 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC9041q1 f20675a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC9056s4 f20676b;

    public RunnableC9063t4(AbstractC9056s4 s4Var, AbstractC9041q1 q1Var) {
        this.f20676b = s4Var;
        this.f20675a = q1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f20675a.mo16187b();
        if (C8996i4.m16551a()) {
            this.f20675a.mo16214a().m16364a(this);
            return;
        }
        boolean d = this.f20676b.m16216d();
        this.f20676b.f20639c = 0L;
        if (d) {
            this.f20676b.mo16217c();
        }
    }
}
