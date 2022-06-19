package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.Format;
/* renamed from: com.google.android.exoplayer2.extractor.mp4.l */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/l.class */
public final class C5085l {

    /* renamed from: a */
    public final int f15884a;

    /* renamed from: b */
    public final int f15885b;

    /* renamed from: c */
    public final long f15886c;

    /* renamed from: d */
    public final long f15887d;

    /* renamed from: e */
    public final long f15888e;

    /* renamed from: f */
    public final Format f15889f;

    /* renamed from: g */
    public final int f15890g;

    /* renamed from: h */
    public final long[] f15891h;

    /* renamed from: i */
    public final long[] f15892i;

    /* renamed from: j */
    public final int f15893j;

    /* renamed from: k */
    private final C5086m[] f15894k;

    public C5085l(int i, int i2, long j, long j2, long j3, Format format, int i3, C5086m[] c5086mArr, int i4, long[] jArr, long[] jArr2) {
        this.f15884a = i;
        this.f15885b = i2;
        this.f15886c = j;
        this.f15887d = j2;
        this.f15888e = j3;
        this.f15889f = format;
        this.f15890g = i3;
        this.f15894k = c5086mArr;
        this.f15893j = i4;
        this.f15891h = jArr;
        this.f15892i = jArr2;
    }

    /* renamed from: a */
    public C5086m m20594a(int i) {
        C5086m[] c5086mArr = this.f15894k;
        return c5086mArr == null ? null : c5086mArr[i];
    }
}
