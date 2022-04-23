package androidx.media2.exoplayer.external.extractor.c;

import androidx.media2.exoplayer.external.extractor.c.c;
import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.extractor.p;
import androidx.media2.exoplayer.external.util.ac;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/c/f.class */
final class f implements c.a {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f3068a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f3069b;

    /* renamed from: c  reason: collision with root package name */
    private final long f3070c;

    /* renamed from: d  reason: collision with root package name */
    private final long f3071d;

    private f(long[] jArr, long[] jArr2, long j, long j2) {
        this.f3068a = jArr;
        this.f3069b = jArr2;
        this.f3070c = j;
        this.f3071d = j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.extractor.c.f a(long r9, long r11, androidx.media2.exoplayer.external.extractor.m r13, androidx.media2.exoplayer.external.util.p r14) {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.c.f.a(long, long, androidx.media2.exoplayer.external.extractor.m, androidx.media2.exoplayer.external.util.p):androidx.media2.exoplayer.external.extractor.c.f");
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final o.a a(long j) {
        int a2 = ac.a(this.f3068a, j, true);
        p pVar = new p(this.f3068a[a2], this.f3069b[a2]);
        if (pVar.f3392b >= j || a2 == this.f3068a.length - 1) {
            return new o.a(pVar);
        }
        int i = a2 + 1;
        return new o.a(pVar, new p(this.f3068a[i], this.f3069b[i]));
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final long b() {
        return this.f3070c;
    }

    @Override // androidx.media2.exoplayer.external.extractor.c.c.a
    public final long c() {
        return this.f3071d;
    }

    @Override // androidx.media2.exoplayer.external.extractor.c.c.a
    public final long c(long j) {
        return this.f3068a[ac.a(this.f3069b, j, true)];
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final boolean j_() {
        return true;
    }
}
