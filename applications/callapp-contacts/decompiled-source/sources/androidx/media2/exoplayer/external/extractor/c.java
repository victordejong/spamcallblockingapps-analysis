package androidx.media2.exoplayer.external.extractor;

import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.util.ac;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/c.class */
public class c implements o {

    /* renamed from: a  reason: collision with root package name */
    private final long f3055a;

    /* renamed from: b  reason: collision with root package name */
    private final long f3056b;

    /* renamed from: c  reason: collision with root package name */
    private final int f3057c;

    /* renamed from: d  reason: collision with root package name */
    private final long f3058d;
    private final int e;
    private final long f;

    public c(long j, long j2, int i, int i2) {
        this.f3055a = j;
        this.f3056b = j2;
        this.f3057c = i2 == -1 ? 1 : i2;
        this.e = i;
        if (j == -1) {
            this.f3058d = -1L;
            this.f = -9223372036854775807L;
            return;
        }
        this.f3058d = j - j2;
        this.f = a(j, j2, i);
    }

    private static long a(long j, long j2, int i) {
        return ((Math.max(0L, j - j2) * 8) * 1000000) / i;
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final o.a a(long j) {
        long j2 = this.f3058d;
        if (j2 == -1) {
            return new o.a(new p(0L, this.f3056b));
        }
        long j3 = (this.e * j) / 8000000;
        int i = this.f3057c;
        long a2 = this.f3056b + ac.a((j3 / i) * i, 0L, j2 - i);
        long b2 = b(a2);
        p pVar = new p(b2, a2);
        if (b2 < j) {
            int i2 = this.f3057c;
            if (i2 + a2 < this.f3055a) {
                long j4 = a2 + i2;
                return new o.a(pVar, new p(b(j4), j4));
            }
        }
        return new o.a(pVar);
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final long b() {
        return this.f;
    }

    public final long b(long j) {
        return a(j, this.f3056b, this.e);
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final boolean j_() {
        return this.f3058d != -1;
    }
}
