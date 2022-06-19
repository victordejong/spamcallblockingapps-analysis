package androidx.media2.exoplayer.external.extractor.p066c;

import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.extractor.C1640p;
import androidx.media2.exoplayer.external.extractor.p066c.C1506c;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
/* renamed from: androidx.media2.exoplayer.external.extractor.c.g */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/c/g.class */
final class C1511g implements C1506c.AbstractC1507a {

    /* renamed from: a */
    private final long f5814a;

    /* renamed from: b */
    private final int f5815b;

    /* renamed from: c */
    private final long f5816c;

    /* renamed from: d */
    private final long f5817d;

    /* renamed from: e */
    private final long f5818e;

    /* renamed from: f */
    private final long[] f5819f;

    public C1511g(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    public C1511g(long j, int i, long j2, long j3, long[] jArr) {
        this.f5814a = j;
        this.f5815b = i;
        this.f5816c = j2;
        this.f5819f = jArr;
        this.f5817d = j3;
        this.f5818e = j3 == -1 ? (char) 65535 : j + j3;
    }

    /* renamed from: a */
    private long m42775a(int i) {
        return (this.f5816c * i) / 100;
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [double] */
    /* JADX WARN: Type inference failed for: r0v33, types: [double] */
    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: a */
    public final AbstractC1637o.C1638a mo42504a(long j) {
        long[] jArr;
        if (!mo42502j_()) {
            return new AbstractC1637o.C1638a(new C1640p(0L, this.f5814a + this.f5815b));
        }
        long m41671a = C1996ac.m41671a(j, 0L, this.f5816c);
        double d = (m41671a * 100.0d) / this.f5816c;
        char c = 0;
        if (d > 0.0d) {
            if (d >= 100.0d) {
                c = 0;
            } else {
                int i = (int) d;
                double d2 = ((long[]) C1993a.m41690a(this.f5819f))[i];
                c = d2 + ((d - i) * ((i == 99 ? (char) 0 : jArr[i + 1]) - d2));
            }
        }
        return new AbstractC1637o.C1638a(new C1640p(m41671a, this.f5814a + C1996ac.m41671a(Math.round((c / 0) * this.f5817d), this.f5815b, this.f5817d - 1)));
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: b */
    public final long mo42503b() {
        return this.f5816c;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p066c.C1506c.AbstractC1507a
    /* renamed from: c */
    public final long mo42774c() {
        return this.f5818e;
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [double] */
    /* JADX WARN: Type inference failed for: r0v36 */
    @Override // androidx.media2.exoplayer.external.extractor.p066c.C1506c.AbstractC1507a
    /* renamed from: c */
    public final long mo42773c(long j) {
        long j2 = j - this.f5814a;
        if (!mo42502j_() || j2 <= this.f5815b) {
            return 0L;
        }
        long[] jArr = (long[]) C1993a.m41690a(this.f5819f);
        double d = (j2 * 256.0d) / this.f5817d;
        int m41645a = C1996ac.m41645a(jArr, (long) d, true);
        long m42775a = m42775a(m41645a);
        long j3 = jArr[m41645a];
        int i = m41645a + 1;
        long m42775a2 = m42775a(i);
        char c = m41645a == 99 ? (char) 256 : jArr[i];
        return m42775a + Math.round((j3 == c ? (char) 0 : (d - j3) / (c - j3)) * (m42775a2 - m42775a));
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: j_ */
    public final boolean mo42502j_() {
        return this.f5819f != null;
    }
}
