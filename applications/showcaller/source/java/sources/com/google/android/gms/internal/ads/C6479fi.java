package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.ads.fi */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fi.class */
public final class C6479fi {

    /* renamed from: a */
    private int f22904a;

    /* renamed from: b */
    private long[] f22905b = new long[32];

    public C6479fi(int i) {
    }

    /* renamed from: a */
    public final void m15186a(long j) {
        int i = this.f22904a;
        long[] jArr = this.f22905b;
        if (i == jArr.length) {
            this.f22905b = Arrays.copyOf(jArr, i + i);
        }
        long[] jArr2 = this.f22905b;
        int i2 = this.f22904a;
        this.f22904a = i2 + 1;
        jArr2[i2] = j;
    }

    /* renamed from: b */
    public final long m15185b(int i) {
        if (i < 0 || i >= this.f22904a) {
            int i2 = this.f22904a;
            StringBuilder sb = new StringBuilder(46);
            sb.append("Invalid index ");
            sb.append(i);
            sb.append(", size is ");
            sb.append(i2);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        return this.f22905b[i];
    }

    /* renamed from: c */
    public final int m15184c() {
        return this.f22904a;
    }
}
