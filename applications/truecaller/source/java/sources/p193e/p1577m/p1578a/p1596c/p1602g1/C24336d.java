package p193e.p1577m.p1578a.p1596c.p1602g1;

import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.g1.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/d.class */
public class C24336d implements AbstractC24418q {

    /* renamed from: a */
    public final long f67657a;

    /* renamed from: b */
    public final long f67658b;

    /* renamed from: c */
    public final int f67659c;

    /* renamed from: d */
    public final long f67660d;

    /* renamed from: e */
    public final int f67661e;

    /* renamed from: f */
    public final long f67662f;

    public C24336d(long j, long j2, int i, int i2) {
        this.f67657a = j;
        this.f67658b = j2;
        this.f67659c = i2 == -1 ? 1 : i2;
        this.f67661e = i;
        if (j == -1) {
            this.f67660d = -1L;
            this.f67662f = -9223372036854775807L;
            return;
        }
        this.f67660d = j - j2;
        this.f67662f = m5230d(j, j2, i);
    }

    /* renamed from: d */
    public static long m5230d(long j, long j2, int i) {
        return ((Math.max(0L, j - j2) * 8) * 1000000) / i;
    }

    /* renamed from: a */
    public long m5231a(long j) {
        return m5230d(j, this.f67658b, this.f67661e);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: b */
    public AbstractC24418q.C24419a mo5144b(long j) {
        long j2 = this.f67660d;
        if (j2 == -1) {
            return new AbstractC24418q.C24419a(new C24421r(0L, this.f67658b));
        }
        long j3 = this.f67659c;
        long m4617g = this.f67658b + C24773d0.m4617g((((this.f67661e * j) / 8000000) / j3) * j3, 0L, j2 - j3);
        long m5231a = m5231a(m4617g);
        C24421r c24421r = new C24421r(m5231a, m4617g);
        if (m5231a < j) {
            int i = this.f67659c;
            if (i + m4617g < this.f67657a) {
                long j4 = m4617g + i;
                return new AbstractC24418q.C24419a(c24421r, new C24421r(m5231a(j4), j4));
            }
        }
        return new AbstractC24418q.C24419a(c24421r);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: c */
    public boolean mo5143c() {
        return this.f67660d != -1;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: g */
    public long mo5142g() {
        return this.f67662f;
    }
}
