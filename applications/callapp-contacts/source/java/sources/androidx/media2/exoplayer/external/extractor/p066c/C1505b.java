package androidx.media2.exoplayer.external.extractor.p066c;

import android.util.Pair;
import androidx.media2.exoplayer.external.C1446c;
import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.extractor.C1640p;
import androidx.media2.exoplayer.external.extractor.p066c.C1506c;
import androidx.media2.exoplayer.external.util.C1996ac;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.exoplayer.external.extractor.c.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/c/b.class */
public final class C1505b implements C1506c.AbstractC1507a {

    /* renamed from: a */
    private final long[] f5788a;

    /* renamed from: b */
    private final long[] f5789b;

    /* renamed from: c */
    private final long f5790c;

    public C1505b(long[] jArr, long[] jArr2) {
        this.f5788a = jArr;
        this.f5789b = jArr2;
        this.f5790c = C1446c.m42893b(jArr2[jArr2.length - 1]);
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [double] */
    /* renamed from: a */
    private static Pair<Long, Long> m42784a(long j, long[] jArr, long[] jArr2) {
        int m41645a = C1996ac.m41645a(jArr, j, true);
        long j2 = jArr[m41645a];
        long j3 = jArr2[m41645a];
        int i = m41645a + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((j4 == j2 ? (char) 0 : (j - j2) / (j4 - j2)) * (jArr2[i] - j3))) + j3));
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: a */
    public final AbstractC1637o.C1638a mo42504a(long j) {
        Pair<Long, Long> m42784a = m42784a(C1446c.m42894a(C1996ac.m41671a(j, 0L, this.f5790c)), this.f5789b, this.f5788a);
        return new AbstractC1637o.C1638a(new C1640p(C1446c.m42893b(((Long) m42784a.first).longValue()), ((Long) m42784a.second).longValue()));
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: b */
    public final long mo42503b() {
        return this.f5790c;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p066c.C1506c.AbstractC1507a
    /* renamed from: c */
    public final long mo42774c() {
        return -1L;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p066c.C1506c.AbstractC1507a
    /* renamed from: c */
    public final long mo42773c(long j) {
        return C1446c.m42893b(((Long) m42784a(j, this.f5788a, this.f5789b).second).longValue());
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: j_ */
    public final boolean mo42502j_() {
        return true;
    }
}
