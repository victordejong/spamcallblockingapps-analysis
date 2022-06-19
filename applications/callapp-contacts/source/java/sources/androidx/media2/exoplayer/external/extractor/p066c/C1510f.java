package androidx.media2.exoplayer.external.extractor.p066c;

import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.extractor.C1605m;
import androidx.media2.exoplayer.external.extractor.C1640p;
import androidx.media2.exoplayer.external.extractor.p066c.C1506c;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2018p;
/* renamed from: androidx.media2.exoplayer.external.extractor.c.f */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/c/f.class */
final class C1510f implements C1506c.AbstractC1507a {

    /* renamed from: a */
    private final long[] f5810a;

    /* renamed from: b */
    private final long[] f5811b;

    /* renamed from: c */
    private final long f5812c;

    /* renamed from: d */
    private final long f5813d;

    private C1510f(long[] jArr, long[] jArr2, long j, long j2) {
        this.f5810a = jArr;
        this.f5811b = jArr2;
        this.f5812c = j;
        this.f5813d = j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* renamed from: a */
    public static C1510f m42776a(long j, long j2, C1605m c1605m, C2018p c2018p) {
        int i;
        c2018p.m41531d(10);
        int m41524i = c2018p.m41524i();
        if (m41524i <= 0) {
            return null;
        }
        int i2 = c1605m.f6329d;
        long m41634b = C1996ac.m41634b(m41524i, 1000000 * (i2 >= 32000 ? 1152 : 576), i2);
        int m41532d = c2018p.m41532d();
        int m41532d2 = c2018p.m41532d();
        int m41532d3 = c2018p.m41532d();
        c2018p.m41531d(2);
        long j3 = j2 + c1605m.f6328c;
        long[] jArr = new long[m41532d];
        long[] jArr2 = new long[m41532d];
        char c = j2;
        for (int i3 = 0; i3 < m41532d; i3++) {
            jArr[i3] = (i3 * m41634b) / m41532d;
            jArr2[i3] = Math.max((long) c, j3);
            if (m41532d3 == 1) {
                i = c2018p.m41534c();
            } else if (m41532d3 == 2) {
                i = c2018p.m41532d();
            } else if (m41532d3 == 3) {
                i = c2018p.m41528f();
            } else if (m41532d3 != 4) {
                return null;
            } else {
                i = c2018p.m41519n();
            }
            c += i * m41532d2;
        }
        if (j != -1 && j != c) {
            StringBuilder sb = new StringBuilder(67);
            sb.append("VBRI data size mismatch: ");
            sb.append(j);
            sb.append(", ");
            sb.append((long) c);
            C2009j.m41584a("VbriSeeker", sb.toString());
        }
        return new C1510f(jArr, jArr2, m41634b, c);
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: a */
    public final AbstractC1637o.C1638a mo42504a(long j) {
        int m41645a = C1996ac.m41645a(this.f5810a, j, true);
        C1640p c1640p = new C1640p(this.f5810a[m41645a], this.f5811b[m41645a]);
        if (c1640p.f6506b >= j || m41645a == this.f5810a.length - 1) {
            return new AbstractC1637o.C1638a(c1640p);
        }
        int i = m41645a + 1;
        return new AbstractC1637o.C1638a(c1640p, new C1640p(this.f5810a[i], this.f5811b[i]));
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: b */
    public final long mo42503b() {
        return this.f5812c;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p066c.C1506c.AbstractC1507a
    /* renamed from: c */
    public final long mo42774c() {
        return this.f5813d;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p066c.C1506c.AbstractC1507a
    /* renamed from: c */
    public final long mo42773c(long j) {
        return this.f5810a[C1996ac.m41645a(this.f5811b, j, true)];
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: j_ */
    public final boolean mo42502j_() {
        return true;
    }
}
