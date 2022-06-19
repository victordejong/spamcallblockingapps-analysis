package com.google.android.exoplayer2.p243c1;

import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5522l;
/* renamed from: com.google.android.exoplayer2.c1.o */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/o.class */
public final class C4987o implements AbstractC4992t {

    /* renamed from: a */
    private final C5522l f15497a;

    /* renamed from: b */
    private final long f15498b;

    public C4987o(C5522l c5522l, long j) {
        this.f15497a = c5522l;
        this.f15498b = j;
    }

    /* renamed from: b */
    private C4995u m20976b(long j, long j2) {
        return new C4995u((j * 1000000) / this.f15497a.f17899e, this.f15498b + j2);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: d */
    public boolean mo20622d() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v9, types: [long[]] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r1v4, types: [long] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r4v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.android.exoplayer2.c1.o] */
    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: i */
    public AbstractC4992t.C4993a mo20621i(long j) {
        C5508e.m18911e(this.f15497a.f17905k);
        C5522l c5522l = this.f15497a;
        C5522l.C5523a c5523a = c5522l.f17905k;
        ?? r0 = c5523a.f17907a;
        ?? r02 = c5523a.f17908b;
        int m18835f = C5515h0.m18835f(r0, c5522l.m18766k(j), true, false);
        ?? r16 = false;
        ?? r18 = m18835f == -1 ? (char) 0 : r0[m18835f];
        if (m18835f != -1) {
            r16 = r02[m18835f];
        }
        C4995u m20976b = m20976b(r18, r16 == true ? 1L : 0L);
        if (m20976b.f15523b == j || m18835f == r0.length - 1) {
            return new AbstractC4992t.C4993a(m20976b);
        }
        int i = m18835f + 1;
        return new AbstractC4992t.C4993a(m20976b, m20976b(r0[i], r02[i]));
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: j */
    public long mo20620j() {
        return this.f15497a.m18769h();
    }
}
