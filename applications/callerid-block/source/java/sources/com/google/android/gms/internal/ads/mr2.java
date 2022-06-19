package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mr2.class */
public final class mr2 {

    /* renamed from: a */
    private int f7626a;

    /* renamed from: b */
    private long[] f7627b = new long[32];

    public mr2(int i) {
    }

    /* renamed from: a */
    public final void m6514a(long j) {
        int i = this.f7626a;
        long[] jArr = this.f7627b;
        if (i == jArr.length) {
            this.f7627b = Arrays.copyOf(jArr, i + i);
        }
        long[] jArr2 = this.f7627b;
        int i2 = this.f7626a;
        this.f7626a = i2 + 1;
        jArr2[i2] = j;
    }

    /* renamed from: b */
    public final long m6513b(int i) {
        if (i < 0 || i >= this.f7626a) {
            int i2 = this.f7626a;
            StringBuilder sb = new StringBuilder(46);
            sb.append("Invalid index ");
            sb.append(i);
            sb.append(", size is ");
            sb.append(i2);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        return this.f7627b[i];
    }

    /* renamed from: c */
    public final int m6512c() {
        return this.f7626a;
    }
}
