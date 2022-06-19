package p193e.p1577m.p1578a.p1596c.p1622m1.p1627q;

import java.util.Collections;
import java.util.List;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24562b;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.m1.q.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/q/b.class */
public final class C24607b implements AbstractC24565e {

    /* renamed from: a */
    public final C24562b[] f68876a;

    /* renamed from: b */
    public final long[] f68877b;

    public C24607b(C24562b[] c24562bArr, long[] jArr) {
        this.f68876a = c24562bArr;
        this.f68877b = jArr;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: a */
    public long mo4813a(int i) {
        C26232y.m2310r(i >= 0);
        C26232y.m2310r(i < this.f68877b.length);
        return this.f68877b[i];
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: c */
    public int mo4812c() {
        return this.f68877b.length;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: d */
    public int mo4811d(long j) {
        int m4622b = C24773d0.m4622b(this.f68877b, j, false, false);
        if (m4622b >= this.f68877b.length) {
            m4622b = -1;
        }
        return m4622b;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: e */
    public List<C24562b> mo4810e(long j) {
        int m4621c = C24773d0.m4621c(this.f68877b, j, true, false);
        if (m4621c != -1) {
            C24562b[] c24562bArr = this.f68876a;
            if (c24562bArr[m4621c] != C24562b.f68658o) {
                return Collections.singletonList(c24562bArr[m4621c]);
            }
        }
        return Collections.emptyList();
    }
}
