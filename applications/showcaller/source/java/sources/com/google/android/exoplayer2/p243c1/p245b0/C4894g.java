package com.google.android.exoplayer2.p243c1.p245b0;

import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.C4990r;
import com.google.android.exoplayer2.p243c1.C4995u;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.b0.g */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/b0/g.class */
final class C4894g implements AbstractC4892f {

    /* renamed from: a */
    private final long[] f15010a;

    /* renamed from: b */
    private final long[] f15011b;

    /* renamed from: c */
    private final long f15012c;

    /* renamed from: d */
    private final long f15013d;

    private C4894g(long[] jArr, long[] jArr2, long j, long j2) {
        this.f15010a = jArr;
        this.f15011b = jArr2;
        this.f15012c = j;
        this.f15013d = j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* renamed from: b */
    public static C4894g m21257b(long j, long j2, C4990r c4990r, C5536v c5536v) {
        int i;
        c5536v.m18679N(10);
        int m18668k = c5536v.m18668k();
        if (m18668k <= 0) {
            return null;
        }
        int i2 = c4990r.f15513k;
        long m18822l0 = C5515h0.m18822l0(m18668k, 1000000 * (i2 >= 32000 ? 1152 : 576), i2);
        int m18687F = c5536v.m18687F();
        int m18687F2 = c5536v.m18687F();
        int m18687F3 = c5536v.m18687F();
        c5536v.m18679N(2);
        long j3 = j2 + c4990r.f15512j;
        long[] jArr = new long[m18687F];
        long[] jArr2 = new long[m18687F];
        char c = j2;
        for (int i3 = 0; i3 < m18687F; i3++) {
            jArr[i3] = (i3 * m18822l0) / m18687F;
            jArr2[i3] = Math.max((long) c, j3);
            if (m18687F3 == 1) {
                i = c5536v.m18653z();
            } else if (m18687F3 == 2) {
                i = c5536v.m18687F();
            } else if (m18687F3 == 3) {
                i = c5536v.m18690C();
            } else if (m18687F3 != 4) {
                return null;
            } else {
                i = c5536v.m18689D();
            }
            c += i * m18687F2;
        }
        if (j != -1 && j != c) {
            C5526o.m18742f("VbriSeeker", "VBRI data size mismatch: " + j + ", " + ((long) c));
        }
        return new C4894g(jArr, jArr2, m18822l0, c);
    }

    @Override // com.google.android.exoplayer2.p243c1.p245b0.AbstractC4892f
    /* renamed from: a */
    public long mo21256a() {
        return this.f15013d;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: d */
    public boolean mo20622d() {
        return true;
    }

    @Override // com.google.android.exoplayer2.p243c1.p245b0.AbstractC4892f
    /* renamed from: e */
    public long mo21253e(long j) {
        return this.f15010a[C5515h0.m18835f(this.f15011b, j, true, true)];
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: i */
    public AbstractC4992t.C4993a mo20621i(long j) {
        int m18835f = C5515h0.m18835f(this.f15010a, j, true, true);
        C4995u c4995u = new C4995u(this.f15010a[m18835f], this.f15011b[m18835f]);
        if (c4995u.f15523b >= j || m18835f == this.f15010a.length - 1) {
            return new AbstractC4992t.C4993a(c4995u);
        }
        int i = m18835f + 1;
        return new AbstractC4992t.C4993a(c4995u, new C4995u(this.f15010a[i], this.f15011b[i]));
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: j */
    public long mo20620j() {
        return this.f15012c;
    }
}
