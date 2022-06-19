package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1890x;

import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27189o;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.q0.x.b */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/x/b.class */
public final class C27299b implements AbstractC27186n {

    /* renamed from: a */
    public final int f76797a;

    /* renamed from: b */
    public final int f76798b;

    /* renamed from: c */
    public final int f76799c;

    /* renamed from: d */
    public final int f76800d;

    /* renamed from: e */
    public final int f76801e;

    /* renamed from: f */
    public final int f76802f;

    /* renamed from: g */
    public int f76803g = -1;

    /* renamed from: h */
    public long f76804h = -1;

    public C27299b(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f76797a = i;
        this.f76798b = i2;
        this.f76799c = i3;
        this.f76800d = i4;
        this.f76801e = i5;
        this.f76802f = i6;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
    /* renamed from: b */
    public AbstractC27186n.C27187a mo602b(long j) {
        long j2 = this.f76804h - this.f76803g;
        long j3 = (this.f76799c * j) / 1000000;
        int i = this.f76800d;
        long m279h = C27445x.m279h((j3 / i) * i, 0L, j2 - i);
        long j4 = this.f76803g + m279h;
        long m600f = m600f(j4);
        C27189o c27189o = new C27189o(m600f, j4);
        if (m600f < j) {
            int i2 = this.f76800d;
            if (m279h != j2 - i2) {
                long j5 = j4 + i2;
                return new AbstractC27186n.C27187a(c27189o, new C27189o(m600f(j5), j5));
            }
        }
        return new AbstractC27186n.C27187a(c27189o);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
    /* renamed from: c */
    public boolean mo601c() {
        return true;
    }

    /* renamed from: f */
    public long m600f(long j) {
        return (Math.max(0L, j - this.f76803g) * 1000000) / this.f76799c;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
    /* renamed from: g */
    public long mo599g() {
        return (((this.f76804h - this.f76803g) / this.f76800d) * 1000000) / this.f76798b;
    }
}
