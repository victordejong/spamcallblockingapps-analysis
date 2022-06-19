package androidx.media2.exoplayer.external.text.p071a;

import androidx.media2.exoplayer.external.text.AbstractC1886d;
import androidx.media2.exoplayer.external.text.C1856a;
import androidx.media2.exoplayer.external.util.C1993a;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.text.a.e */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/e.class */
final class C1868e implements AbstractC1886d {

    /* renamed from: a */
    private final List<C1856a> f7504a;

    public C1868e(List<C1856a> list) {
        this.f7504a = list;
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
        return j >= 0 ? this.f7504a : Collections.emptyList();
    }
}
