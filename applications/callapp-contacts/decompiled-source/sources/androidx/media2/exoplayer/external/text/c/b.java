package androidx.media2.exoplayer.external.text.c;

import androidx.media2.exoplayer.external.text.a;
import androidx.media2.exoplayer.external.text.d;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/c/b.class */
final class b implements d {

    /* renamed from: a  reason: collision with root package name */
    private final List<a> f3862a;

    public b(List<a> list) {
        this.f3862a = list;
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final int a(long j) {
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final long a_(int i) {
        return 0L;
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final int b() {
        return 1;
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final List<a> b(long j) {
        return this.f3862a;
    }
}
