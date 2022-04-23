package com.google.android.exoplayer2.extractor.f;

import com.google.android.exoplayer2.Format;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final int f21075a;

    /* renamed from: b  reason: collision with root package name */
    public final int f21076b;

    /* renamed from: c  reason: collision with root package name */
    public final long f21077c;

    /* renamed from: d  reason: collision with root package name */
    public final long f21078d;
    public final long e;
    public final Format f;
    public final int g;
    public final long[] h;
    public final long[] i;
    public final int j;
    private final l[] k;

    public k(int i, int i2, long j, long j2, long j3, Format format, int i3, l[] lVarArr, int i4, long[] jArr, long[] jArr2) {
        this.f21075a = i;
        this.f21076b = i2;
        this.f21077c = j;
        this.f21078d = j2;
        this.e = j3;
        this.f = format;
        this.g = i3;
        this.k = lVarArr;
        this.j = i4;
        this.h = jArr;
        this.i = jArr2;
    }

    public final l a(int i) {
        l[] lVarArr = this.k;
        if (lVarArr == null) {
            return null;
        }
        return lVarArr[i];
    }
}
