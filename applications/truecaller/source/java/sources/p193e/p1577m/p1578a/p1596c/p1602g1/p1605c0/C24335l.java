package p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0;

import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.g1.c0.l */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/c0/l.class */
public final class C24335l {

    /* renamed from: a */
    public final C24332i f67649a;

    /* renamed from: b */
    public final int f67650b;

    /* renamed from: c */
    public final long[] f67651c;

    /* renamed from: d */
    public final int[] f67652d;

    /* renamed from: e */
    public final int f67653e;

    /* renamed from: f */
    public final long[] f67654f;

    /* renamed from: g */
    public final int[] f67655g;

    /* renamed from: h */
    public final long f67656h;

    public C24335l(C24332i c24332i, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        C26232y.m2310r(iArr.length == jArr2.length);
        C26232y.m2310r(jArr.length == jArr2.length);
        C26232y.m2310r(iArr2.length == jArr2.length);
        this.f67649a = c24332i;
        this.f67651c = jArr;
        this.f67652d = iArr;
        this.f67653e = i;
        this.f67654f = jArr2;
        this.f67655g = iArr2;
        this.f67656h = j;
        this.f67650b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    /* renamed from: a */
    public int m5233a(long j) {
        for (int m4621c = C24773d0.m4621c(this.f67654f, j, true, false); m4621c >= 0; m4621c--) {
            if ((this.f67655g[m4621c] & 1) != 0) {
                return m4621c;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public int m5232b(long j) {
        for (int m4622b = C24773d0.m4622b(this.f67654f, j, true, false); m4622b < this.f67654f.length; m4622b++) {
            if ((this.f67655g[m4622b] & 1) != 0) {
                return m4622b;
            }
        }
        return -1;
    }
}
