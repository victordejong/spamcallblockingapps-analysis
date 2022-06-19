package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dse.class */
public final class dse {

    /* renamed from: a */
    private int f15545a;

    /* renamed from: b */
    private long[] f15546b;

    public dse() {
        this(32);
    }

    private dse(int i) {
        this.f15546b = new long[32];
    }

    /* renamed from: a */
    public final int m8757a() {
        return this.f15545a;
    }

    /* renamed from: a */
    public final long m8756a(int i) {
        if (i < 0 || i >= this.f15545a) {
            throw new IndexOutOfBoundsException(new StringBuilder(46).append("Invalid index ").append(i).append(", size is ").append(this.f15545a).toString());
        }
        return this.f15546b[i];
    }

    /* renamed from: a */
    public final void m8755a(long j) {
        if (this.f15545a == this.f15546b.length) {
            this.f15546b = Arrays.copyOf(this.f15546b, this.f15545a << 1);
        }
        long[] jArr = this.f15546b;
        int i = this.f15545a;
        this.f15545a = i + 1;
        jArr[i] = j;
    }
}
