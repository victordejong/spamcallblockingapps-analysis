package androidx.media2.exoplayer.external.extractor.c;

import androidx.media2.exoplayer.external.extractor.c.c;
import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.extractor.p;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.ac;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/c/g.class */
final class g implements c.a {

    /* renamed from: a  reason: collision with root package name */
    private final long f3072a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3073b;

    /* renamed from: c  reason: collision with root package name */
    private final long f3074c;

    /* renamed from: d  reason: collision with root package name */
    private final long f3075d;
    private final long e;
    private final long[] f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(long j, int i, long j2, long j3, long[] jArr) {
        this.f3072a = j;
        this.f3073b = i;
        this.f3074c = j2;
        this.f = jArr;
        this.f3075d = j3;
        long j4 = -1;
        if (j3 != -1) {
            j4 = j + j3;
        }
        this.e = j4;
    }

    private long a(int i) {
        return (this.f3074c * i) / 100;
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final o.a a(long j) {
        long[] jArr;
        if (!j_()) {
            return new o.a(new p(0L, this.f3072a + this.f3073b));
        }
        long a2 = ac.a(j, 0L, this.f3074c);
        double d2 = (a2 * 100.0d) / this.f3074c;
        double d3 = 0.0d;
        if (d2 > 0.0d) {
            if (d2 >= 100.0d) {
                d3 = 256.0d;
            } else {
                int i = (int) d2;
                double d4 = ((long[]) a.a(this.f))[i];
                d3 = d4 + ((d2 - i) * ((i == 99 ? 256.0d : jArr[i + 1]) - d4));
            }
        }
        return new o.a(new p(a2, this.f3072a + ac.a(Math.round((d3 / 256.0d) * this.f3075d), this.f3073b, this.f3075d - 1)));
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final long b() {
        return this.f3074c;
    }

    @Override // androidx.media2.exoplayer.external.extractor.c.c.a
    public final long c() {
        return this.e;
    }

    @Override // androidx.media2.exoplayer.external.extractor.c.c.a
    public final long c(long j) {
        long j2 = j - this.f3072a;
        if (!j_() || j2 <= this.f3073b) {
            return 0L;
        }
        long[] jArr = (long[]) a.a(this.f);
        double d2 = (j2 * 256.0d) / this.f3075d;
        int a2 = ac.a(jArr, (long) d2, true);
        long a3 = a(a2);
        long j3 = jArr[a2];
        int i = a2 + 1;
        long a4 = a(i);
        long j4 = a2 == 99 ? 256L : jArr[i];
        return a3 + Math.round((j3 == j4 ? 0.0d : (d2 - j3) / (j4 - j3)) * (a4 - a3));
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final boolean j_() {
        return this.f != null;
    }
}
