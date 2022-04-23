package com.google.android.exoplayer2.extractor.f;

import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/n.class */
final class n {

    /* renamed from: a  reason: collision with root package name */
    public final k f21087a;

    /* renamed from: b  reason: collision with root package name */
    public final int f21088b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f21089c;

    /* renamed from: d  reason: collision with root package name */
    public final int[] f21090d;
    public final int e;
    public final long[] f;
    public final int[] g;
    public final long h;

    public n(k kVar, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        boolean z = false;
        a.a(iArr.length == jArr2.length);
        a.a(jArr.length == jArr2.length);
        a.a(iArr2.length == jArr2.length ? true : z);
        this.f21087a = kVar;
        this.f21089c = jArr;
        this.f21090d = iArr;
        this.e = i;
        this.f = jArr2;
        this.g = iArr2;
        this.h = j;
        this.f21088b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    public final int a(long j) {
        for (int a2 = af.a(this.f, j, false); a2 >= 0; a2--) {
            if ((this.g[a2] & 1) != 0) {
                return a2;
            }
        }
        return -1;
    }

    public final int b(long j) {
        for (int b2 = af.b(this.f, j, true); b2 < this.f.length; b2++) {
            if ((this.g[b2] & 1) != 0) {
                return b2;
            }
        }
        return -1;
    }
}
