package com.google.android.exoplayer2.util;

import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.util.o */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/o.class */
public final class C11618o {

    /* renamed from: a */
    public int f38699a;

    /* renamed from: b */
    public long[] f38700b;

    public C11618o() {
        this(32);
    }

    public C11618o(int i) {
        this.f38700b = new long[i];
    }

    /* renamed from: a */
    public final long m19856a(int i) {
        if (i < 0 || i >= this.f38699a) {
            throw new IndexOutOfBoundsException("Invalid index " + i + ", size is " + this.f38699a);
        }
        return this.f38700b[i];
    }

    /* renamed from: a */
    public final void m19855a(long j) {
        int i = this.f38699a;
        long[] jArr = this.f38700b;
        if (i == jArr.length) {
            this.f38700b = Arrays.copyOf(jArr, i * 2);
        }
        long[] jArr2 = this.f38700b;
        int i2 = this.f38699a;
        this.f38699a = i2 + 1;
        jArr2[i2] = j;
    }
}
