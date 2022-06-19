package com.google.android.exoplayer2.extractor.p332f;

import com.google.android.exoplayer2.Format;
/* renamed from: com.google.android.exoplayer2.extractor.f.k */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/k.class */
public final class C11046k {

    /* renamed from: a */
    public final int f35927a;

    /* renamed from: b */
    public final int f35928b;

    /* renamed from: c */
    public final long f35929c;

    /* renamed from: d */
    public final long f35930d;

    /* renamed from: e */
    public final long f35931e;

    /* renamed from: f */
    public final Format f35932f;

    /* renamed from: g */
    public final int f35933g;

    /* renamed from: h */
    public final long[] f35934h;

    /* renamed from: i */
    public final long[] f35935i;

    /* renamed from: j */
    public final int f35936j;

    /* renamed from: k */
    private final C11047l[] f35937k;

    public C11046k(int i, int i2, long j, long j2, long j3, Format format, int i3, C11047l[] c11047lArr, int i4, long[] jArr, long[] jArr2) {
        this.f35927a = i;
        this.f35928b = i2;
        this.f35929c = j;
        this.f35930d = j2;
        this.f35931e = j3;
        this.f35932f = format;
        this.f35933g = i3;
        this.f35937k = c11047lArr;
        this.f35936j = i4;
        this.f35934h = jArr;
        this.f35935i = jArr2;
    }

    /* renamed from: a */
    public final C11047l m21597a(int i) {
        C11047l[] c11047lArr = this.f35937k;
        if (c11047lArr == null) {
            return null;
        }
        return c11047lArr[i];
    }
}
