package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
/* renamed from: androidx.media2.exoplayer.external.extractor.mp4.o */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/o.class */
final class C1635o {

    /* renamed from: a */
    public final C1632l f6492a;

    /* renamed from: b */
    public final int f6493b;

    /* renamed from: c */
    public final long[] f6494c;

    /* renamed from: d */
    public final int[] f6495d;

    /* renamed from: e */
    public final int f6496e;

    /* renamed from: f */
    public final long[] f6497f;

    /* renamed from: g */
    public final int[] f6498g;

    /* renamed from: h */
    public final long f6499h;

    public C1635o(C1632l c1632l, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        C1993a.m41688a(iArr.length == jArr2.length);
        C1993a.m41688a(jArr.length == jArr2.length);
        C1993a.m41688a(iArr2.length == jArr2.length);
        this.f6492a = c1632l;
        this.f6494c = jArr;
        this.f6495d = iArr;
        this.f6496e = i;
        this.f6497f = jArr2;
        this.f6498g = iArr2;
        this.f6499h = j;
        this.f6493b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    /* renamed from: a */
    public final int m42506a(long j) {
        for (int m41645a = C1996ac.m41645a(this.f6497f, j, false); m41645a >= 0; m41645a--) {
            if ((this.f6498g[m41645a] & 1) != 0) {
                return m41645a;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public final int m42505b(long j) {
        for (int m41644a = C1996ac.m41644a(this.f6497f, j, true, false); m41644a < this.f6497f.length; m41644a++) {
            if ((this.f6498g[m41644a] & 1) != 0) {
                return m41644a;
            }
        }
        return -1;
    }
}
