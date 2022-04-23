package p131c.p161d.p170b.p188c.p208u0;
/* renamed from: c.d.b.c.u0.a */
/* loaded from: classes-dex2jar.jar:c/d/b/c/u0/a.class */
public abstract class AbstractC3011a {

    /* renamed from: a */
    public int f10885a;

    /* renamed from: a */
    public void mo28136a() {
        this.f10885a = 0;
    }

    /* renamed from: a */
    public final void m28148a(int i) {
        this.f10885a = i | this.f10885a;
    }

    /* renamed from: b */
    public final boolean m28147b() {
        return m28146b(268435456);
    }

    /* renamed from: b */
    public final boolean m28146b(int i) {
        return (this.f10885a & i) == i;
    }

    /* renamed from: c */
    public final void m28144c(int i) {
        this.f10885a = i;
    }

    /* renamed from: c */
    public final boolean m28145c() {
        return m28146b(Integer.MIN_VALUE);
    }

    /* renamed from: d */
    public final boolean m28143d() {
        return m28146b(4);
    }

    /* renamed from: e */
    public final boolean m28142e() {
        return m28146b(1);
    }
}
