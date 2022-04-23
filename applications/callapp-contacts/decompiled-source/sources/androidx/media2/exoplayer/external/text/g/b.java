package androidx.media2.exoplayer.external.text.g;

import androidx.media2.exoplayer.external.text.a;
import androidx.media2.exoplayer.external.text.d;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/g/b.class */
final class b implements d {

    /* renamed from: a  reason: collision with root package name */
    public static final b f3907a = new b();

    /* renamed from: b  reason: collision with root package name */
    private final List<a> f3908b;

    private b() {
        this.f3908b = Collections.emptyList();
    }

    public b(a aVar) {
        this.f3908b = Collections.singletonList(aVar);
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
        return j >= 0 ? this.f3908b : Collections.emptyList();
    }
}
