package androidx.media2.exoplayer.external.extractor.p069f;

import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.extractor.C1640p;
import androidx.media2.exoplayer.external.util.C1996ac;
/* renamed from: androidx.media2.exoplayer.external.extractor.f.c */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/f/c.class */
final class C1591c implements AbstractC1637o {

    /* renamed from: a */
    final int f6275a;

    /* renamed from: b */
    final int f6276b;

    /* renamed from: c */
    final int f6277c;

    /* renamed from: d */
    final int f6278d;

    /* renamed from: e */
    final int f6279e;

    /* renamed from: f */
    int f6280f = -1;

    /* renamed from: g */
    long f6281g = -1;

    /* renamed from: h */
    private final int f6282h;

    public C1591c(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f6275a = i;
        this.f6276b = i2;
        this.f6282h = i3;
        this.f6277c = i4;
        this.f6278d = i5;
        this.f6279e = i6;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: a */
    public final AbstractC1637o.C1638a mo42504a(long j) {
        long j2 = this.f6281g - this.f6280f;
        long j3 = (this.f6282h * j) / 1000000;
        int i = this.f6277c;
        long m41671a = C1996ac.m41671a((j3 / i) * i, 0L, j2 - i);
        long j4 = this.f6280f + m41671a;
        long m42629b = m42629b(j4);
        C1640p c1640p = new C1640p(m42629b, j4);
        if (m42629b < j) {
            int i2 = this.f6277c;
            if (m41671a != j2 - i2) {
                long j5 = j4 + i2;
                return new AbstractC1637o.C1638a(c1640p, new C1640p(m42629b(j5), j5));
            }
        }
        return new AbstractC1637o.C1638a(c1640p);
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: b */
    public final long mo42503b() {
        return (((this.f6281g - this.f6280f) / this.f6277c) * 1000000) / this.f6276b;
    }

    /* renamed from: b */
    public final long m42629b(long j) {
        return (Math.max(0L, j - this.f6280f) * 1000000) / this.f6282h;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: j_ */
    public final boolean mo42502j_() {
        return true;
    }
}
