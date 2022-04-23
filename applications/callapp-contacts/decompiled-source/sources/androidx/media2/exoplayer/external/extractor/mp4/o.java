package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.ac;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/o.class */
final class o {

    /* renamed from: a  reason: collision with root package name */
    public final l f3382a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3383b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f3384c;

    /* renamed from: d  reason: collision with root package name */
    public final int[] f3385d;
    public final int e;
    public final long[] f;
    public final int[] g;
    public final long h;

    public o(l lVar, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        boolean z = false;
        a.a(iArr.length == jArr2.length);
        a.a(jArr.length == jArr2.length);
        a.a(iArr2.length == jArr2.length ? true : z);
        this.f3382a = lVar;
        this.f3384c = jArr;
        this.f3385d = iArr;
        this.e = i;
        this.f = jArr2;
        this.g = iArr2;
        this.h = j;
        this.f3383b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    public final int a(long j) {
        for (int a2 = ac.a(this.f, j, false); a2 >= 0; a2--) {
            if ((this.g[a2] & 1) != 0) {
                return a2;
            }
        }
        return -1;
    }

    public final int b(long j) {
        for (int a2 = ac.a(this.f, j, true, false); a2 < this.f.length; a2++) {
            if ((this.g[a2] & 1) != 0) {
                return a2;
            }
        }
        return -1;
    }
}
