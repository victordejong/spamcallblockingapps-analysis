package androidx.media2.exoplayer.external.text.b;

import androidx.media2.exoplayer.external.text.a;
import androidx.media2.exoplayer.external.text.d;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/c.class */
final class c implements d {

    /* renamed from: a  reason: collision with root package name */
    private final List<a> f3852a;

    public c(List<a> list) {
        this.f3852a = list;
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
        return this.f3852a;
    }
}
