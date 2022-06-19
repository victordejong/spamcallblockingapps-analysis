package p193e.p1577m.p1578a.p1596c.p1602g1.p1604b0;

import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24421r;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.g1.b0.f */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/b0/f.class */
public final class C24313f implements AbstractC24311e {

    /* renamed from: a */
    public final long[] f67508a;

    /* renamed from: b */
    public final long[] f67509b;

    /* renamed from: c */
    public final long f67510c;

    /* renamed from: d */
    public final long f67511d;

    public C24313f(long[] jArr, long[] jArr2, long j, long j2) {
        this.f67508a = jArr;
        this.f67509b = jArr2;
        this.f67510c = j;
        this.f67511d = j2;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: b */
    public AbstractC24418q.C24419a mo5144b(long j) {
        int m4621c = C24773d0.m4621c(this.f67508a, j, true, true);
        long[] jArr = this.f67508a;
        long j2 = jArr[m4621c];
        long[] jArr2 = this.f67509b;
        C24421r c24421r = new C24421r(j2, jArr2[m4621c]);
        if (j2 >= j || m4621c == jArr.length - 1) {
            return new AbstractC24418q.C24419a(c24421r);
        }
        int i = m4621c + 1;
        return new AbstractC24418q.C24419a(c24421r, new C24421r(jArr[i], jArr2[i]));
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: c */
    public boolean mo5143c() {
        return true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1604b0.AbstractC24311e
    /* renamed from: e */
    public long mo5268e() {
        return this.f67511d;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1604b0.AbstractC24311e
    /* renamed from: f */
    public long mo5267f(long j) {
        return this.f67508a[C24773d0.m4621c(this.f67509b, j, true, true)];
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: g */
    public long mo5142g() {
        return this.f67510c;
    }
}
