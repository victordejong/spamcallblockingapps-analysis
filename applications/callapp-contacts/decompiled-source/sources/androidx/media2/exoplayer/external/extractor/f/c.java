package androidx.media2.exoplayer.external.extractor.f;

import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.extractor.p;
import androidx.media2.exoplayer.external.util.ac;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/f/c.class */
final class c implements o {

    /* renamed from: a  reason: collision with root package name */
    final int f3286a;

    /* renamed from: b  reason: collision with root package name */
    final int f3287b;

    /* renamed from: c  reason: collision with root package name */
    final int f3288c;

    /* renamed from: d  reason: collision with root package name */
    final int f3289d;
    final int e;
    int f = -1;
    long g = -1;
    private final int h;

    public c(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f3286a = i;
        this.f3287b = i2;
        this.h = i3;
        this.f3288c = i4;
        this.f3289d = i5;
        this.e = i6;
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final o.a a(long j) {
        long j2 = this.g - this.f;
        long j3 = (this.h * j) / 1000000;
        int i = this.f3288c;
        long a2 = ac.a((j3 / i) * i, 0L, j2 - i);
        long j4 = this.f + a2;
        long b2 = b(j4);
        p pVar = new p(b2, j4);
        if (b2 < j) {
            int i2 = this.f3288c;
            if (a2 != j2 - i2) {
                long j5 = j4 + i2;
                return new o.a(pVar, new p(b(j5), j5));
            }
        }
        return new o.a(pVar);
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final long b() {
        return (((this.g - this.f) / this.f3288c) * 1000000) / this.f3287b;
    }

    public final long b(long j) {
        return (Math.max(0L, j - this.f) * 1000000) / this.h;
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final boolean j_() {
        return true;
    }
}
