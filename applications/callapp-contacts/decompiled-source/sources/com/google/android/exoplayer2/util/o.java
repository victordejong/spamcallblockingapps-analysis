package com.google.android.exoplayer2.util;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/o.class */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public int f22310a;

    /* renamed from: b  reason: collision with root package name */
    public long[] f22311b;

    public o() {
        this(32);
    }

    public o(int i) {
        this.f22311b = new long[i];
    }

    public final long a(int i) {
        if (i >= 0 && i < this.f22310a) {
            return this.f22311b[i];
        }
        throw new IndexOutOfBoundsException("Invalid index " + i + ", size is " + this.f22310a);
    }

    public final void a(long j) {
        int i = this.f22310a;
        long[] jArr = this.f22311b;
        if (i == jArr.length) {
            this.f22311b = Arrays.copyOf(jArr, i * 2);
        }
        long[] jArr2 = this.f22311b;
        int i2 = this.f22310a;
        this.f22310a = i2 + 1;
        jArr2[i2] = j;
    }
}
