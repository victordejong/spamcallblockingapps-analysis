package p081h.p203i.p204a.p224e.p285m.p287b;
/* renamed from: h.i.a.e.m.b.d2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/d2.class */
public final class RunnableC8963d2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ boolean f20271a;

    /* renamed from: b */
    public final /* synthetic */ C9053s1 f20272b;

    public RunnableC8963d2(C9053s1 s1Var, boolean z) {
        this.f20272b = s1Var;
        this.f20271a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean d = this.f20272b.f20541a.m16288d();
        boolean E = this.f20272b.f20541a.m16302E();
        this.f20272b.f20541a.m16292a(this.f20271a);
        if (E == this.f20271a) {
            this.f20272b.f20541a.mo16178c().m16389A().m16337a("Default data collection state already set to", Boolean.valueOf(this.f20271a));
        }
        if (this.f20272b.f20541a.m16288d() == d || this.f20272b.f20541a.m16288d() != this.f20272b.f20541a.m16302E()) {
            this.f20272b.f20541a.mo16178c().m16370x().m16336a("Default data collection is different than actual status", Boolean.valueOf(this.f20271a), Boolean.valueOf(d));
        }
        this.f20272b.m16262E();
    }
}
