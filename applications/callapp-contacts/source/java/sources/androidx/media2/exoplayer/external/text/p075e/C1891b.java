package androidx.media2.exoplayer.external.text.p075e;

import androidx.media2.exoplayer.external.text.AbstractC1886d;
import androidx.media2.exoplayer.external.text.C1856a;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.text.e.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/e/b.class */
final class C1891b implements AbstractC1886d {

    /* renamed from: a */
    private final C1856a[] f7591a;

    /* renamed from: b */
    private final long[] f7592b;

    public C1891b(C1856a[] c1856aArr, long[] jArr) {
        this.f7591a = c1856aArr;
        this.f7592b = jArr;
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: a */
    public final int mo41884a(long j) {
        int m41644a = C1996ac.m41644a(this.f7592b, j, false, false);
        if (m41644a < this.f7592b.length) {
            return m41644a;
        }
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: a_ */
    public final long mo41883a_(int i) {
        C1993a.m41688a(i >= 0);
        C1993a.m41688a(i < this.f7592b.length);
        return this.f7592b[i];
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: b */
    public final int mo41882b() {
        return this.f7592b.length;
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: b */
    public final List<C1856a> mo41881b(long j) {
        int m41645a = C1996ac.m41645a(this.f7592b, j, false);
        return (m41645a == -1 || this.f7591a[m41645a] == C1856a.f7399a) ? Collections.emptyList() : Collections.singletonList(this.f7591a[m41645a]);
    }
}
