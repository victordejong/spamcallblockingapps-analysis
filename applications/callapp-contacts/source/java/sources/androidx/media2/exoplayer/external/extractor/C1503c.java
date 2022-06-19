package androidx.media2.exoplayer.external.extractor;

import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.util.C1996ac;
/* renamed from: androidx.media2.exoplayer.external.extractor.c */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/c.class */
public class C1503c implements AbstractC1637o {

    /* renamed from: a */
    private final long f5782a;

    /* renamed from: b */
    private final long f5783b;

    /* renamed from: c */
    private final int f5784c;

    /* renamed from: d */
    private final long f5785d;

    /* renamed from: e */
    private final int f5786e;

    /* renamed from: f */
    private final long f5787f;

    public C1503c(long j, long j2, int i, int i2) {
        this.f5782a = j;
        this.f5783b = j2;
        this.f5784c = i2 == -1 ? 1 : i2;
        this.f5786e = i;
        if (j == -1) {
            this.f5785d = -1L;
            this.f5787f = -9223372036854775807L;
            return;
        }
        this.f5785d = j - j2;
        this.f5787f = m42786a(j, j2, i);
    }

    /* renamed from: a */
    private static long m42786a(long j, long j2, int i) {
        return ((Math.max(0L, j - j2) * 8) * 1000000) / i;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: a */
    public final AbstractC1637o.C1638a mo42504a(long j) {
        long j2 = this.f5785d;
        if (j2 == -1) {
            return new AbstractC1637o.C1638a(new C1640p(0L, this.f5783b));
        }
        long j3 = (this.f5786e * j) / 8000000;
        int i = this.f5784c;
        long m41671a = this.f5783b + C1996ac.m41671a((j3 / i) * i, 0L, j2 - i);
        long m42785b = m42785b(m41671a);
        C1640p c1640p = new C1640p(m42785b, m41671a);
        if (m42785b < j) {
            int i2 = this.f5784c;
            if (i2 + m41671a < this.f5782a) {
                long j4 = m41671a + i2;
                return new AbstractC1637o.C1638a(c1640p, new C1640p(m42785b(j4), j4));
            }
        }
        return new AbstractC1637o.C1638a(c1640p);
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: b */
    public final long mo42503b() {
        return this.f5787f;
    }

    /* renamed from: b */
    public final long m42785b(long j) {
        return m42786a(j, this.f5783b, this.f5786e);
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: j_ */
    public final boolean mo42502j_() {
        return this.f5785d != -1;
    }
}
