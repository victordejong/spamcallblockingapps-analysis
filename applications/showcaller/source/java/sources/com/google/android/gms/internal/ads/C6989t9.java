package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.ads.t9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t9.class */
public final class C6989t9 {

    /* renamed from: a */
    private int f29866a;

    /* renamed from: b */
    private long[] f29867b = new long[32];

    public C6989t9(int i) {
    }

    /* renamed from: a */
    public final void m10765a(long j) {
        int i = this.f29866a;
        long[] jArr = this.f29867b;
        if (i == jArr.length) {
            this.f29867b = Arrays.copyOf(jArr, i + i);
        }
        long[] jArr2 = this.f29867b;
        int i2 = this.f29866a;
        this.f29866a = i2 + 1;
        jArr2[i2] = j;
    }

    /* renamed from: b */
    public final long m10764b(int i) {
        if (i < 0 || i >= this.f29866a) {
            int i2 = this.f29866a;
            StringBuilder sb = new StringBuilder(46);
            sb.append("Invalid index ");
            sb.append(i);
            sb.append(", size is ");
            sb.append(i2);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        return this.f29867b[i];
    }

    /* renamed from: c */
    public final int m10763c() {
        return this.f29866a;
    }
}
