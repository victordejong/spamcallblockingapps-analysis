package com.google.android.exoplayer2.util;

import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.util.p */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/p.class */
public final class C5527p {

    /* renamed from: a */
    private int f17911a;

    /* renamed from: b */
    private long[] f17912b;

    public C5527p() {
        this(32);
    }

    public C5527p(int i) {
        this.f17912b = new long[i];
    }

    /* renamed from: a */
    public void m18740a(long j) {
        int i = this.f17911a;
        long[] jArr = this.f17912b;
        if (i == jArr.length) {
            this.f17912b = Arrays.copyOf(jArr, i * 2);
        }
        long[] jArr2 = this.f17912b;
        int i2 = this.f17911a;
        this.f17911a = i2 + 1;
        jArr2[i2] = j;
    }

    /* renamed from: b */
    public long m18739b(int i) {
        if (i < 0 || i >= this.f17911a) {
            throw new IndexOutOfBoundsException("Invalid index " + i + ", size is " + this.f17911a);
        }
        return this.f17912b[i];
    }

    /* renamed from: c */
    public int m18738c() {
        return this.f17911a;
    }

    /* renamed from: d */
    public long[] m18737d() {
        return Arrays.copyOf(this.f17912b, this.f17911a);
    }
}
