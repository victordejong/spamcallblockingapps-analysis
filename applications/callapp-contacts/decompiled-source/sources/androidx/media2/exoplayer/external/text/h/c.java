package androidx.media2.exoplayer.external.text.h;

import androidx.media2.exoplayer.external.text.a;
import androidx.media2.exoplayer.external.text.d;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/c.class */
final class c implements d {

    /* renamed from: a  reason: collision with root package name */
    private final List<a> f3915a;

    public c(List<a> list) {
        this.f3915a = Collections.unmodifiableList(list);
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final int a(long j) {
        return j < 0 ? 0 : -1;
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final long a_(int i) {
        androidx.media2.exoplayer.external.util.a.a(i == 0);
        return 0L;
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final int b() {
        return 1;
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final List<a> b(long j) {
        return j >= 0 ? this.f3915a : Collections.emptyList();
    }
}
