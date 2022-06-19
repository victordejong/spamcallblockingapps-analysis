package p193e.p1577m.p1578a.p1596c.p1602g1.p1608f0;

import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24421r;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.g1.f0.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/f0/d.class */
public final class C24406d implements AbstractC24418q {

    /* renamed from: a */
    public final C24404b f68090a;

    /* renamed from: b */
    public final int f68091b;

    /* renamed from: c */
    public final long f68092c;

    /* renamed from: d */
    public final long f68093d;

    /* renamed from: e */
    public final long f68094e;

    public C24406d(C24404b c24404b, int i, long j, long j2) {
        this.f68090a = c24404b;
        this.f68091b = i;
        this.f68092c = j;
        long j3 = (j2 - j) / c24404b.f68085d;
        this.f68093d = j3;
        this.f68094e = m5157a(j3);
    }

    /* renamed from: a */
    public final long m5157a(long j) {
        return C24773d0.m4598z(j * this.f68091b, 1000000L, this.f68090a.f68084c);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: b */
    public AbstractC24418q.C24419a mo5144b(long j) {
        long m4617g = C24773d0.m4617g((this.f68090a.f68084c * j) / (this.f68091b * 1000000), 0L, this.f68093d - 1);
        long j2 = this.f68092c;
        long j3 = this.f68090a.f68085d;
        long m5157a = m5157a(m4617g);
        C24421r c24421r = new C24421r(m5157a, (j3 * m4617g) + j2);
        if (m5157a >= j || m4617g == this.f68093d - 1) {
            return new AbstractC24418q.C24419a(c24421r);
        }
        long j4 = m4617g + 1;
        return new AbstractC24418q.C24419a(c24421r, new C24421r(m5157a(j4), (this.f68090a.f68085d * j4) + this.f68092c));
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: c */
    public boolean mo5143c() {
        return true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: g */
    public long mo5142g() {
        return this.f68094e;
    }
}
