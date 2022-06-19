package p193e.p1577m.p1578a.p1596c.p1602g1;

import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.g1.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/c.class */
public final class C24315c implements AbstractC24418q {

    /* renamed from: a */
    public final int f67518a;

    /* renamed from: b */
    public final int[] f67519b;

    /* renamed from: c */
    public final long[] f67520c;

    /* renamed from: d */
    public final long[] f67521d;

    /* renamed from: e */
    public final long[] f67522e;

    /* renamed from: f */
    public final long f67523f;

    public C24315c(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f67519b = iArr;
        this.f67520c = jArr;
        this.f67521d = jArr2;
        this.f67522e = jArr3;
        int length = iArr.length;
        this.f67518a = length;
        if (length > 0) {
            this.f67523f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f67523f = 0L;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: b */
    public AbstractC24418q.C24419a mo5144b(long j) {
        int m4621c = C24773d0.m4621c(this.f67522e, j, true, true);
        long[] jArr = this.f67522e;
        long j2 = jArr[m4621c];
        long[] jArr2 = this.f67520c;
        C24421r c24421r = new C24421r(j2, jArr2[m4621c]);
        if (j2 >= j || m4621c == this.f67518a - 1) {
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

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: g */
    public long mo5142g() {
        return this.f67523f;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ChunkIndex(length=");
        m8728C.append(this.f67518a);
        m8728C.append(", sizes=");
        m8728C.append(Arrays.toString(this.f67519b));
        m8728C.append(", offsets=");
        m8728C.append(Arrays.toString(this.f67520c));
        m8728C.append(", timeUs=");
        m8728C.append(Arrays.toString(this.f67522e));
        m8728C.append(", durationsUs=");
        m8728C.append(Arrays.toString(this.f67521d));
        m8728C.append(")");
        return m8728C.toString();
    }
}
