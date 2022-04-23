package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecs.class */
public final class ecs {

    /* renamed from: a  reason: collision with root package name */
    int f27638a;

    /* renamed from: b  reason: collision with root package name */
    private long[] f27639b;

    public ecs() {
        this(32);
    }

    private ecs(int i) {
        this.f27639b = new long[32];
    }

    public final long a(int i) {
        if (i >= 0 && i < this.f27638a) {
            return this.f27639b[i];
        }
        int i2 = this.f27638a;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Invalid index ");
        sb.append(i);
        sb.append(", size is ");
        sb.append(i2);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public final void a(long j) {
        int i = this.f27638a;
        long[] jArr = this.f27639b;
        if (i == jArr.length) {
            this.f27639b = Arrays.copyOf(jArr, i << 1);
        }
        long[] jArr2 = this.f27639b;
        int i2 = this.f27638a;
        this.f27638a = i2 + 1;
        jArr2[i2] = j;
    }
}
