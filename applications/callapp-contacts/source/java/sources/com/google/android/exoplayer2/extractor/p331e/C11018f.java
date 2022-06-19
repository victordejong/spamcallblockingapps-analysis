package com.google.android.exoplayer2.extractor.p331e;

import com.google.android.exoplayer2.audio.C10907o;
import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.extractor.C11149w;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11628u;
/* renamed from: com.google.android.exoplayer2.extractor.e.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/e/f.class */
final class C11018f implements AbstractC11016e {

    /* renamed from: a */
    private final long[] f35771a;

    /* renamed from: b */
    private final long[] f35772b;

    /* renamed from: c */
    private final long f35773c;

    /* renamed from: d */
    private final long f35774d;

    private C11018f(long[] jArr, long[] jArr2, long j, long j2) {
        this.f35771a = jArr;
        this.f35772b = jArr2;
        this.f35773c = j;
        this.f35774d = j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* renamed from: a */
    public static C11018f m21690a(long j, long j2, C10907o.C10908a c10908a, C11628u c11628u) {
        int i;
        c11628u.m19799e(10);
        int m19792j = c11628u.m19792j();
        if (m19792j <= 0) {
            return null;
        }
        int i2 = c10908a.f35234d;
        long m19946b = C11599af.m19946b(m19792j, 1000000 * (i2 >= 32000 ? 1152 : 576), i2);
        int m19802d = c11628u.m19802d();
        int m19802d2 = c11628u.m19802d();
        int m19802d3 = c11628u.m19802d();
        c11628u.m19799e(2);
        long j3 = j2 + c10908a.f35233c;
        long[] jArr = new long[m19802d];
        long[] jArr2 = new long[m19802d];
        char c = j2;
        for (int i3 = 0; i3 < m19802d; i3++) {
            jArr[i3] = (i3 * m19946b) / m19802d;
            jArr2[i3] = Math.max((long) c, j3);
            if (m19802d3 == 1) {
                i = c11628u.m19804c();
            } else if (m19802d3 == 2) {
                i = c11628u.m19802d();
            } else if (m19802d3 == 3) {
                i = c11628u.m19796g();
            } else if (m19802d3 != 4) {
                return null;
            } else {
                i = c11628u.m19787o();
            }
            c += i * m19802d2;
        }
        if (j != -1 && j != c) {
            C11617n.m19863a("VbriSeeker", "VBRI data size mismatch: " + j + ", " + ((long) c));
        }
        return new C11018f(jArr, jArr2, m19946b, c);
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final AbstractC11146v.C11147a mo21388a(long j) {
        int m19956a = C11599af.m19956a(this.f35771a, j, true);
        C11149w c11149w = new C11149w(this.f35771a[m19956a], this.f35772b[m19956a]);
        if (c11149w.f36507b < j) {
            long[] jArr = this.f35771a;
            if (m19956a != jArr.length - 1) {
                int i = m19956a + 1;
                return new AbstractC11146v.C11147a(c11149w, new C11149w(jArr[i], this.f35772b[i]));
            }
        }
        return new AbstractC11146v.C11147a(c11149w);
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final boolean mo21389a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: b */
    public final long mo21387b() {
        return this.f35773c;
    }

    @Override // com.google.android.exoplayer2.extractor.p331e.AbstractC11016e
    /* renamed from: c */
    public final long mo21688c() {
        return this.f35774d;
    }

    @Override // com.google.android.exoplayer2.extractor.p331e.AbstractC11016e
    /* renamed from: c */
    public final long mo21687c(long j) {
        return this.f35771a[C11599af.m19956a(this.f35772b, j, true)];
    }
}
