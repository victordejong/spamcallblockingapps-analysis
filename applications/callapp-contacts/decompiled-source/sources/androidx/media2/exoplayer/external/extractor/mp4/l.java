package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.media2.exoplayer.external.Format;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final int f3370a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3371b;

    /* renamed from: c  reason: collision with root package name */
    public final long f3372c;

    /* renamed from: d  reason: collision with root package name */
    public final long f3373d;
    public final long e;
    public final Format f;
    public final int g;
    public final long[] h;
    public final long[] i;
    public final int j;
    private final m[] k;

    public l(int i, int i2, long j, long j2, long j3, Format format, int i3, m[] mVarArr, int i4, long[] jArr, long[] jArr2) {
        this.f3370a = i;
        this.f3371b = i2;
        this.f3372c = j;
        this.f3373d = j2;
        this.e = j3;
        this.f = format;
        this.g = i3;
        this.k = mVarArr;
        this.j = i4;
        this.h = jArr;
        this.i = jArr2;
    }

    public final m a(int i) {
        m[] mVarArr = this.k;
        if (mVarArr == null) {
            return null;
        }
        return mVarArr[i];
    }
}
