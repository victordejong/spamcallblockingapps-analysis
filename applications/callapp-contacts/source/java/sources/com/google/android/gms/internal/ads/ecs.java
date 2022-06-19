package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecs.class */
public final class ecs {

    /* renamed from: a */
    int f48707a;

    /* renamed from: b */
    private long[] f48708b;

    public ecs() {
        this(32);
    }

    private ecs(int i) {
        this.f48708b = new long[32];
    }

    /* renamed from: a */
    public final long m15245a(int i) {
        if (i < 0 || i >= this.f48707a) {
            int i2 = this.f48707a;
            StringBuilder sb = new StringBuilder(46);
            sb.append("Invalid index ");
            sb.append(i);
            sb.append(", size is ");
            sb.append(i2);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        return this.f48708b[i];
    }

    /* renamed from: a */
    public final void m15244a(long j) {
        int i = this.f48707a;
        long[] jArr = this.f48708b;
        if (i == jArr.length) {
            this.f48708b = Arrays.copyOf(jArr, i << 1);
        }
        long[] jArr2 = this.f48708b;
        int i2 = this.f48707a;
        this.f48707a = i2 + 1;
        jArr2[i2] = j;
    }
}
