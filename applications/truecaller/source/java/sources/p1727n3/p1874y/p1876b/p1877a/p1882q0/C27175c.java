package p1727n3.p1874y.p1876b.p1877a.p1882q0;

import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.q0.c */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/c.class */
public class C27175c implements AbstractC27186n {

    /* renamed from: a */
    public final long f76022a;

    /* renamed from: b */
    public final long f76023b;

    /* renamed from: c */
    public final int f76024c;

    /* renamed from: d */
    public final long f76025d;

    /* renamed from: e */
    public final int f76026e;

    /* renamed from: f */
    public final long f76027f;

    public C27175c(long j, long j2, int i, int i2) {
        this.f76022a = j;
        this.f76023b = j2;
        this.f76024c = i2 == -1 ? 1 : i2;
        this.f76026e = i;
        if (j == -1) {
            this.f76025d = -1L;
            this.f76027f = -9223372036854775807L;
            return;
        }
        this.f76025d = j - j2;
        this.f76027f = m761d(j, j2, i);
    }

    /* renamed from: d */
    public static long m761d(long j, long j2, int i) {
        return ((Math.max(0L, j - j2) * 8) * 1000000) / i;
    }

    /* renamed from: a */
    public long m762a(long j) {
        return m761d(j, this.f76023b, this.f76026e);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
    /* renamed from: b */
    public AbstractC27186n.C27187a mo602b(long j) {
        long j2 = this.f76025d;
        if (j2 == -1) {
            return new AbstractC27186n.C27187a(new C27189o(0L, this.f76023b));
        }
        long j3 = this.f76024c;
        long m279h = this.f76023b + C27445x.m279h((((this.f76026e * j) / 8000000) / j3) * j3, 0L, j2 - j3);
        long m762a = m762a(m279h);
        C27189o c27189o = new C27189o(m762a, m279h);
        if (m762a < j) {
            int i = this.f76024c;
            if (i + m279h < this.f76022a) {
                long j4 = m279h + i;
                return new AbstractC27186n.C27187a(c27189o, new C27189o(m762a(j4), j4));
            }
        }
        return new AbstractC27186n.C27187a(c27189o);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
    /* renamed from: c */
    public boolean mo601c() {
        return this.f76025d != -1;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
    /* renamed from: g */
    public long mo599g() {
        return this.f76027f;
    }
}
