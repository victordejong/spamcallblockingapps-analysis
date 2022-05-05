package p081h.p203i.p204a.p224e.p259j.p266g;
/* renamed from: h.i.a.e.j.g.f0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/f0.class */
public final class C7582f0 {

    /* renamed from: a */
    public final AbstractC7639m0 f17834a;

    /* renamed from: b */
    public final byte[] f17835b;

    public C7582f0(int i) {
        this.f17835b = new byte[i];
        this.f17834a = AbstractC7639m0.m20056a(this.f17835b);
    }

    public /* synthetic */ C7582f0(int i, C7551b0 b0Var) {
        this(i);
    }

    /* renamed from: a */
    public final AbstractC7539a0 m20176a() {
        if (this.f17834a.mo19988b() == 0) {
            return new C7601h0(this.f17835b);
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    /* renamed from: b */
    public final AbstractC7639m0 m20175b() {
        return this.f17834a;
    }
}
