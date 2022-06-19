package com.google.android.exoplayer2.p243c1.p245b0;

import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.C4990r;
import com.google.android.exoplayer2.p243c1.C4995u;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.b0.h */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/b0/h.class */
final class C4895h implements AbstractC4892f {

    /* renamed from: a */
    private final long f15014a;

    /* renamed from: b */
    private final int f15015b;

    /* renamed from: c */
    private final long f15016c;

    /* renamed from: d */
    private final long f15017d;

    /* renamed from: e */
    private final long f15018e;

    /* renamed from: f */
    private final long[] f15019f;

    private C4895h(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    private C4895h(long j, int i, long j2, long j3, long[] jArr) {
        this.f15014a = j;
        this.f15015b = i;
        this.f15016c = j2;
        this.f15019f = jArr;
        this.f15017d = j3;
        this.f15018e = j3 == -1 ? (char) 65535 : j + j3;
    }

    /* renamed from: b */
    public static C4895h m21255b(long j, long j2, C4990r c4990r, C5536v c5536v) {
        int m18689D;
        int i = c4990r.f15516n;
        int i2 = c4990r.f15513k;
        int m18668k = c5536v.m18668k();
        if ((m18668k & 1) != 1 || (m18689D = c5536v.m18689D()) == 0) {
            return null;
        }
        long m18822l0 = C5515h0.m18822l0(m18689D, i * 1000000, i2);
        if ((m18668k & 6) != 6) {
            return new C4895h(j2, c4990r.f15512j, m18822l0);
        }
        long m18689D2 = c5536v.m18689D();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            jArr[i3] = c5536v.m18653z();
        }
        if (j != -1) {
            long j3 = j2 + m18689D2;
            if (j != j3) {
                C5526o.m18742f("XingSeeker", "XING data size mismatch: " + j + ", " + j3);
            }
        }
        return new C4895h(j2, c4990r.f15512j, m18822l0, m18689D2, jArr);
    }

    /* renamed from: c */
    private long m21254c(int i) {
        return (this.f15016c * i) / 100;
    }

    @Override // com.google.android.exoplayer2.p243c1.p245b0.AbstractC4892f
    /* renamed from: a */
    public long mo21256a() {
        return this.f15018e;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: d */
    public boolean mo20622d() {
        return this.f15019f != null;
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [double] */
    /* JADX WARN: Type inference failed for: r0v36 */
    @Override // com.google.android.exoplayer2.p243c1.p245b0.AbstractC4892f
    /* renamed from: e */
    public long mo21253e(long j) {
        long j2 = j - this.f15014a;
        if (!mo20622d() || j2 <= this.f15015b) {
            return 0L;
        }
        long[] jArr = (long[]) C5508e.m18911e(this.f15019f);
        double d = (j2 * 256.0d) / this.f15017d;
        int m18835f = C5515h0.m18835f(jArr, (long) d, true, true);
        long m21254c = m21254c(m18835f);
        long j3 = jArr[m18835f];
        int i = m18835f + 1;
        long m21254c2 = m21254c(i);
        char c = m18835f == 99 ? (char) 256 : jArr[i];
        return m21254c + Math.round((j3 == c ? (char) 0 : (d - j3) / (c - j3)) * (m21254c2 - m21254c));
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [double] */
    /* JADX WARN: Type inference failed for: r0v33, types: [double] */
    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: i */
    public AbstractC4992t.C4993a mo20621i(long j) {
        long[] jArr;
        if (!mo20622d()) {
            return new AbstractC4992t.C4993a(new C4995u(0L, this.f15014a + this.f15015b));
        }
        long m18817o = C5515h0.m18817o(j, 0L, this.f15016c);
        double d = (m18817o * 100.0d) / this.f15016c;
        char c = 0;
        if (d > 0.0d) {
            if (d >= 100.0d) {
                c = 0;
            } else {
                int i = (int) d;
                double d2 = ((long[]) C5508e.m18911e(this.f15019f))[i];
                c = d2 + ((d - i) * ((i == 99 ? (char) 0 : jArr[i + 1]) - d2));
            }
        }
        return new AbstractC4992t.C4993a(new C4995u(m18817o, this.f15014a + C5515h0.m18817o(Math.round((c / 0) * this.f15017d), this.f15015b, this.f15017d - 1)));
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: j */
    public long mo20620j() {
        return this.f15016c;
    }
}
