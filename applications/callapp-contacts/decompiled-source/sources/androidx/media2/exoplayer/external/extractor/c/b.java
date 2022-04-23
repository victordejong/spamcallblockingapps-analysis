package androidx.media2.exoplayer.external.extractor.c;

import android.util.Pair;
import androidx.media2.exoplayer.external.extractor.c.c;
import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.extractor.p;
import androidx.media2.exoplayer.external.util.ac;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/c/b.class */
final class b implements c.a {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f3059a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f3060b;

    /* renamed from: c  reason: collision with root package name */
    private final long f3061c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(long[] jArr, long[] jArr2) {
        this.f3059a = jArr;
        this.f3060b = jArr2;
        this.f3061c = androidx.media2.exoplayer.external.c.b(jArr2[jArr2.length - 1]);
    }

    private static Pair<Long, Long> a(long j, long[] jArr, long[] jArr2) {
        int a2 = ac.a(jArr, j, true);
        long j2 = jArr[a2];
        long j3 = jArr2[a2];
        int i = a2 + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((j4 == j2 ? 0.0d : (j - j2) / (j4 - j2)) * (jArr2[i] - j3))) + j3));
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final o.a a(long j) {
        Pair<Long, Long> a2 = a(androidx.media2.exoplayer.external.c.a(ac.a(j, 0L, this.f3061c)), this.f3060b, this.f3059a);
        return new o.a(new p(androidx.media2.exoplayer.external.c.b(((Long) a2.first).longValue()), ((Long) a2.second).longValue()));
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final long b() {
        return this.f3061c;
    }

    @Override // androidx.media2.exoplayer.external.extractor.c.c.a
    public final long c() {
        return -1L;
    }

    @Override // androidx.media2.exoplayer.external.extractor.c.c.a
    public final long c(long j) {
        return androidx.media2.exoplayer.external.c.b(((Long) a(j, this.f3059a, this.f3060b).second).longValue());
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final boolean j_() {
        return true;
    }
}
