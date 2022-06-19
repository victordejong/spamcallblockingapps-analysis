package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.extractor.mp4.o */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/o.class */
final class C5088o {

    /* renamed from: a */
    public final C5085l f15919a;

    /* renamed from: b */
    public final int f15920b;

    /* renamed from: c */
    public final long[] f15921c;

    /* renamed from: d */
    public final int[] f15922d;

    /* renamed from: e */
    public final int f15923e;

    /* renamed from: f */
    public final long[] f15924f;

    /* renamed from: g */
    public final int[] f15925g;

    /* renamed from: h */
    public final long f15926h;

    public C5088o(C5085l c5085l, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        C5508e.m18915a(iArr.length == jArr2.length);
        C5508e.m18915a(jArr.length == jArr2.length);
        C5508e.m18915a(iArr2.length == jArr2.length);
        this.f15919a = c5085l;
        this.f15921c = jArr;
        this.f15922d = iArr;
        this.f15923e = i;
        this.f15924f = jArr2;
        this.f15925g = iArr2;
        this.f15926h = j;
        this.f15920b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    /* renamed from: a */
    public int m20585a(long j) {
        for (int m18835f = C5515h0.m18835f(this.f15924f, j, true, false); m18835f >= 0; m18835f--) {
            if ((this.f15925g[m18835f] & 1) != 0) {
                return m18835f;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public int m20584b(long j) {
        for (int m18839d = C5515h0.m18839d(this.f15924f, j, true, false); m18839d < this.f15924f.length; m18839d++) {
            if ((this.f15925g[m18839d] & 1) != 0) {
                return m18839d;
            }
        }
        return -1;
    }
}
