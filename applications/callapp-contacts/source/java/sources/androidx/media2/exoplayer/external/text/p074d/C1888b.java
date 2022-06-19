package androidx.media2.exoplayer.external.text.p074d;

import androidx.media2.exoplayer.external.text.AbstractC1886d;
import androidx.media2.exoplayer.external.text.C1856a;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.text.d.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/d/b.class */
final class C1888b implements AbstractC1886d {

    /* renamed from: a */
    private final C1856a[] f7585a;

    /* renamed from: b */
    private final long[] f7586b;

    public C1888b(C1856a[] c1856aArr, long[] jArr) {
        this.f7585a = c1856aArr;
        this.f7586b = jArr;
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: a */
    public final int mo41884a(long j) {
        int m41644a = C1996ac.m41644a(this.f7586b, j, false, false);
        if (m41644a < this.f7586b.length) {
            return m41644a;
        }
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: a_ */
    public final long mo41883a_(int i) {
        C1993a.m41688a(i >= 0);
        C1993a.m41688a(i < this.f7586b.length);
        return this.f7586b[i];
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: b */
    public final int mo41882b() {
        return this.f7586b.length;
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: b */
    public final List<C1856a> mo41881b(long j) {
        int m41645a = C1996ac.m41645a(this.f7586b, j, false);
        return (m41645a == -1 || this.f7585a[m41645a] == C1856a.f7399a) ? Collections.emptyList() : Collections.singletonList(this.f7585a[m41645a]);
    }
}
