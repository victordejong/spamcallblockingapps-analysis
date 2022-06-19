package com.google.android.exoplayer2.extractor.p331e;

import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.extractor.C11149w;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
/* renamed from: com.google.android.exoplayer2.extractor.e.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/e/g.class */
final class C11019g implements AbstractC11016e {

    /* renamed from: a */
    private final long f35775a;

    /* renamed from: b */
    private final int f35776b;

    /* renamed from: c */
    private final long f35777c;

    /* renamed from: d */
    private final long f35778d;

    /* renamed from: e */
    private final long f35779e;

    /* renamed from: f */
    private final long[] f35780f;

    public C11019g(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    public C11019g(long j, int i, long j2, long j3, long[] jArr) {
        this.f35775a = j;
        this.f35776b = i;
        this.f35777c = j2;
        this.f35780f = jArr;
        this.f35778d = j3;
        this.f35779e = j3 == -1 ? (char) 65535 : j + j3;
    }

    /* renamed from: a */
    private long m21689a(int i) {
        return (this.f35777c * i) / 100;
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [double] */
    /* JADX WARN: Type inference failed for: r0v33, types: [double] */
    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final AbstractC11146v.C11147a mo21388a(long j) {
        long[] jArr;
        if (!mo21389a()) {
            return new AbstractC11146v.C11147a(new C11149w(0L, this.f35775a + this.f35776b));
        }
        long m19993a = C11599af.m19993a(j, 0L, this.f35777c);
        double d = (m19993a * 100.0d) / this.f35777c;
        char c = 0;
        if (d > 0.0d) {
            if (d >= 100.0d) {
                c = 0;
            } else {
                int i = (int) d;
                double d2 = ((long[]) C11593a.m20024a(this.f35780f))[i];
                c = d2 + ((d - i) * ((i == 99 ? (char) 0 : jArr[i + 1]) - d2));
            }
        }
        return new AbstractC11146v.C11147a(new C11149w(m19993a, this.f35775a + C11599af.m19993a(Math.round((c / 0) * this.f35778d), this.f35776b, this.f35778d - 1)));
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final boolean mo21389a() {
        return this.f35780f != null;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: b */
    public final long mo21387b() {
        return this.f35777c;
    }

    @Override // com.google.android.exoplayer2.extractor.p331e.AbstractC11016e
    /* renamed from: c */
    public final long mo21688c() {
        return this.f35779e;
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [double] */
    /* JADX WARN: Type inference failed for: r0v36 */
    @Override // com.google.android.exoplayer2.extractor.p331e.AbstractC11016e
    /* renamed from: c */
    public final long mo21687c(long j) {
        long j2 = j - this.f35775a;
        if (!mo21389a() || j2 <= this.f35776b) {
            return 0L;
        }
        long[] jArr = (long[]) C11593a.m20024a(this.f35780f);
        double d = (j2 * 256.0d) / this.f35778d;
        int m19956a = C11599af.m19956a(jArr, (long) d, true);
        long m21689a = m21689a(m19956a);
        long j3 = jArr[m19956a];
        int i = m19956a + 1;
        long m21689a2 = m21689a(i);
        char c = m19956a == 99 ? (char) 256 : jArr[i];
        return m21689a + Math.round((j3 == c ? (char) 0 : (d - j3) / (c - j3)) * (m21689a2 - m21689a));
    }
}
