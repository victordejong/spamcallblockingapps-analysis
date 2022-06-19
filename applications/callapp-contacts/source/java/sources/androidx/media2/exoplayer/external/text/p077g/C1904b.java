package androidx.media2.exoplayer.external.text.p077g;

import androidx.media2.exoplayer.external.text.AbstractC1886d;
import androidx.media2.exoplayer.external.text.C1856a;
import androidx.media2.exoplayer.external.util.C1993a;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.text.g.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/g/b.class */
final class C1904b implements AbstractC1886d {

    /* renamed from: a */
    public static final C1904b f7658a = new C1904b();

    /* renamed from: b */
    private final List<C1856a> f7659b;

    private C1904b() {
        this.f7659b = Collections.emptyList();
    }

    public C1904b(C1856a c1856a) {
        this.f7659b = Collections.singletonList(c1856a);
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: a */
    public final int mo41884a(long j) {
        return j < 0 ? 0 : -1;
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: a_ */
    public final long mo41883a_(int i) {
        C1993a.m41688a(i == 0);
        return 0L;
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: b */
    public final int mo41882b() {
        return 1;
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: b */
    public final List<C1856a> mo41881b(long j) {
        return j >= 0 ? this.f7659b : Collections.emptyList();
    }
}
