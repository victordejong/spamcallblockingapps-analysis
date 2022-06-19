package com.google.android.exoplayer2.extractor.p331e;

import android.util.Pair;
import com.google.android.exoplayer2.C11158f;
import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.extractor.C11149w;
import com.google.android.exoplayer2.util.C11599af;
/* renamed from: com.google.android.exoplayer2.extractor.e.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/e/c.class */
final class C11014c implements AbstractC11016e {

    /* renamed from: a */
    private final long[] f35746a;

    /* renamed from: b */
    private final long[] f35747b;

    /* renamed from: c */
    private final long f35748c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    public C11014c(long[] jArr, long[] jArr2, long j) {
        this.f35746a = jArr;
        this.f35747b = jArr2;
        this.f35748c = j == -9223372036854775807L ? C11158f.m21372b(jArr2[jArr2.length - 1]) : j;
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [double] */
    /* renamed from: a */
    private static Pair<Long, Long> m21701a(long j, long[] jArr, long[] jArr2) {
        int m19956a = C11599af.m19956a(jArr, j, true);
        long j2 = jArr[m19956a];
        long j3 = jArr2[m19956a];
        int i = m19956a + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((j4 == j2 ? (char) 0 : (j - j2) / (j4 - j2)) * (jArr2[i] - j3))) + j3));
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final AbstractC11146v.C11147a mo21388a(long j) {
        Pair<Long, Long> m21701a = m21701a(C11158f.m21374a(C11599af.m19993a(j, 0L, this.f35748c)), this.f35747b, this.f35746a);
        return new AbstractC11146v.C11147a(new C11149w(C11158f.m21372b(((Long) m21701a.first).longValue()), ((Long) m21701a.second).longValue()));
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final boolean mo21389a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: b */
    public final long mo21387b() {
        return this.f35748c;
    }

    @Override // com.google.android.exoplayer2.extractor.p331e.AbstractC11016e
    /* renamed from: c */
    public final long mo21688c() {
        return -1L;
    }

    @Override // com.google.android.exoplayer2.extractor.p331e.AbstractC11016e
    /* renamed from: c */
    public final long mo21687c(long j) {
        return C11158f.m21372b(((Long) m21701a(j, this.f35746a, this.f35747b).second).longValue());
    }
}
