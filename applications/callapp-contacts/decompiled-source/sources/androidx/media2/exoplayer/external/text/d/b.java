package androidx.media2.exoplayer.external.text.d;

import androidx.media2.exoplayer.external.text.a;
import androidx.media2.exoplayer.external.text.d;
import androidx.media2.exoplayer.external.util.ac;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/d/b.class */
final class b implements d {

    /* renamed from: a  reason: collision with root package name */
    private final a[] f3867a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f3868b;

    public b(a[] aVarArr, long[] jArr) {
        this.f3867a = aVarArr;
        this.f3868b = jArr;
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final int a(long j) {
        int a2 = ac.a(this.f3868b, j, false, false);
        if (a2 < this.f3868b.length) {
            return a2;
        }
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final long a_(int i) {
        boolean z = true;
        androidx.media2.exoplayer.external.util.a.a(i >= 0);
        if (i >= this.f3868b.length) {
            z = false;
        }
        androidx.media2.exoplayer.external.util.a.a(z);
        return this.f3868b[i];
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final int b() {
        return this.f3868b.length;
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final List<a> b(long j) {
        int a2 = ac.a(this.f3868b, j, false);
        return (a2 == -1 || this.f3867a[a2] == a.f3785a) ? Collections.emptyList() : Collections.singletonList(this.f3867a[a2]);
    }
}
