package com.google.android.exoplayer2.p243c1.p245b0;

import android.util.Pair;
import com.google.android.exoplayer2.C5543v;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.C4995u;
import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.c1.b0.d */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/b0/d.class */
final class C4890d implements AbstractC4892f {

    /* renamed from: a */
    private final long[] f14989a;

    /* renamed from: b */
    private final long[] f14990b;

    /* renamed from: c */
    private final long f14991c;

    private C4890d(long[] jArr, long[] jArr2) {
        this.f14989a = jArr;
        this.f14990b = jArr2;
        this.f14991c = C5543v.m18630a(jArr2[jArr2.length - 1]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* renamed from: b */
    public static C4890d m21270b(long j, MlltFrame mlltFrame) {
        int length = mlltFrame.f16161h.length;
        int i = length + 1;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        jArr[0] = j;
        jArr2[0] = 0;
        int i2 = 1;
        boolean z = j;
        boolean z2 = false;
        while (i2 <= length) {
            int i3 = mlltFrame.f16159f;
            int[] iArr = mlltFrame.f16161h;
            int i4 = i2 - 1;
            char c = z == true ? 1 : 0;
            boolean z3 = z == true ? 1 : 0;
            boolean z4 = c + i3 + iArr[i4];
            char c2 = z2 ? 1 : 0;
            boolean z5 = z2 ? 1 : 0;
            boolean z6 = c2 + mlltFrame.f16160g + mlltFrame.f16162i[i4];
            long j2 = z4 ? 1 : 0;
            long j3 = z4 ? 1 : 0;
            jArr[i2] = j2;
            long j4 = z6 ? 1 : 0;
            long j5 = z6 ? 1 : 0;
            jArr2[i2] = j4;
            i2++;
            z2 = z6;
            z = z4;
        }
        return new C4890d(jArr, jArr2);
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [double] */
    /* renamed from: c */
    private static Pair<Long, Long> m21269c(long j, long[] jArr, long[] jArr2) {
        int m18835f = C5515h0.m18835f(jArr, j, true, true);
        long j2 = jArr[m18835f];
        long j3 = jArr2[m18835f];
        int i = m18835f + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((j4 == j2 ? (char) 0 : (j - j2) / (j4 - j2)) * (jArr2[i] - j3))) + j3));
    }

    @Override // com.google.android.exoplayer2.p243c1.p245b0.AbstractC4892f
    /* renamed from: a */
    public long mo21256a() {
        return -1L;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: d */
    public boolean mo20622d() {
        return true;
    }

    @Override // com.google.android.exoplayer2.p243c1.p245b0.AbstractC4892f
    /* renamed from: e */
    public long mo21253e(long j) {
        return C5543v.m18630a(((Long) m21269c(j, this.f14989a, this.f14990b).second).longValue());
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: i */
    public AbstractC4992t.C4993a mo20621i(long j) {
        Pair<Long, Long> m21269c = m21269c(C5543v.m18629b(C5515h0.m18817o(j, 0L, this.f14991c)), this.f14990b, this.f14989a);
        return new AbstractC4992t.C4993a(new C4995u(C5543v.m18630a(((Long) m21269c.first).longValue()), ((Long) m21269c.second).longValue()));
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: j */
    public long mo20620j() {
        return this.f14991c;
    }
}
