package p078c.p084c.p085a.p096b.p108x;
/* renamed from: c.c.a.b.x.g */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/x/g.class */
public final class C1937g extends C1936f {

    /* renamed from: a */
    private final float f6904a;

    public C1937g(float f) {
        this.f6904a = f - 0.001f;
    }

    @Override // p078c.p084c.p085a.p096b.p108x.C1936f
    /* renamed from: a */
    public boolean mo28578a() {
        return true;
    }

    @Override // p078c.p084c.p085a.p096b.p108x.C1936f
    /* renamed from: b */
    public void mo5514b(float f, float f2, float f3, C1954o c1954o) {
        float sqrt = (float) ((this.f6904a * Math.sqrt(2.0d)) / 2.0d);
        float sqrt2 = (float) Math.sqrt(Math.pow(this.f6904a, 2.0d) - Math.pow(sqrt, 2.0d));
        c1954o.m28484n(f2 - sqrt, ((float) (-((this.f6904a * Math.sqrt(2.0d)) - this.f6904a))) + sqrt2);
        c1954o.m28485m(f2, (float) (-((this.f6904a * Math.sqrt(2.0d)) - this.f6904a)));
        c1954o.m28485m(f2 + sqrt, ((float) (-((this.f6904a * Math.sqrt(2.0d)) - this.f6904a))) + sqrt2);
    }
}
