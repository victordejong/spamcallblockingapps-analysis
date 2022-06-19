package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.media2.exoplayer.external.Format;
/* renamed from: androidx.media2.exoplayer.external.extractor.mp4.l */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/l.class */
public final class C1632l {

    /* renamed from: a */
    public final int f6457a;

    /* renamed from: b */
    public final int f6458b;

    /* renamed from: c */
    public final long f6459c;

    /* renamed from: d */
    public final long f6460d;

    /* renamed from: e */
    public final long f6461e;

    /* renamed from: f */
    public final Format f6462f;

    /* renamed from: g */
    public final int f6463g;

    /* renamed from: h */
    public final long[] f6464h;

    /* renamed from: i */
    public final long[] f6465i;

    /* renamed from: j */
    public final int f6466j;

    /* renamed from: k */
    private final C1633m[] f6467k;

    public C1632l(int i, int i2, long j, long j2, long j3, Format format, int i3, C1633m[] c1633mArr, int i4, long[] jArr, long[] jArr2) {
        this.f6457a = i;
        this.f6458b = i2;
        this.f6459c = j;
        this.f6460d = j2;
        this.f6461e = j3;
        this.f6462f = format;
        this.f6463g = i3;
        this.f6467k = c1633mArr;
        this.f6466j = i4;
        this.f6464h = jArr;
        this.f6465i = jArr2;
    }

    /* renamed from: a */
    public final C1633m m42513a(int i) {
        C1633m[] c1633mArr = this.f6467k;
        if (c1633mArr == null) {
            return null;
        }
        return c1633mArr[i];
    }
}
