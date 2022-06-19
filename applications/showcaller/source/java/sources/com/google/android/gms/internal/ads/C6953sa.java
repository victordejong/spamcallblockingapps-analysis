package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.ads.sa */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sa.class */
public final class C6953sa<V> {

    /* renamed from: a */
    private long[] f29429a = new long[10];

    /* renamed from: b */
    private V[] f29430b = (V[]) new Object[10];

    /* renamed from: c */
    private int f29431c;

    /* renamed from: d */
    private int f29432d;

    public C6953sa(int i) {
    }

    /* renamed from: f */
    private final V m11091f() {
        C7173y8.m8895d(this.f29432d > 0);
        V[] vArr = this.f29430b;
        int i = this.f29431c;
        V v = vArr[i];
        vArr[i] = null;
        this.f29431c = (i + 1) % vArr.length;
        this.f29432d--;
        return v;
    }

    /* renamed from: a */
    public final void m11096a(long j, V v) {
        synchronized (this) {
            int i = this.f29432d;
            if (i > 0) {
                int i2 = this.f29431c;
                if (j <= this.f29429a[((i2 + i) - 1) % this.f29430b.length]) {
                    m11095b();
                }
            }
            int length = this.f29430b.length;
            if (this.f29432d >= length) {
                int i3 = length + length;
                long[] jArr = new long[i3];
                V[] vArr = (V[]) new Object[i3];
                int i4 = this.f29431c;
                int i5 = length - i4;
                System.arraycopy(this.f29429a, i4, jArr, 0, i5);
                System.arraycopy(this.f29430b, this.f29431c, vArr, 0, i5);
                int i6 = this.f29431c;
                if (i6 > 0) {
                    System.arraycopy(this.f29429a, 0, jArr, i5, i6);
                    System.arraycopy(this.f29430b, 0, vArr, i5, this.f29431c);
                }
                this.f29429a = jArr;
                this.f29430b = vArr;
                this.f29431c = 0;
            }
            int i7 = this.f29431c;
            int i8 = this.f29432d;
            V[] vArr2 = this.f29430b;
            int length2 = (i7 + i8) % vArr2.length;
            this.f29429a[length2] = j;
            vArr2[length2] = v;
            this.f29432d = i8 + 1;
        }
    }

    /* renamed from: b */
    public final void m11095b() {
        synchronized (this) {
            this.f29431c = 0;
            this.f29432d = 0;
            Arrays.fill(this.f29430b, (Object) null);
        }
    }

    /* renamed from: c */
    public final int m11094c() {
        int i;
        synchronized (this) {
            i = this.f29432d;
        }
        return i;
    }

    /* renamed from: d */
    public final V m11093d() {
        synchronized (this) {
            if (this.f29432d == 0) {
                return null;
            }
            return m11091f();
        }
    }

    /* renamed from: e */
    public final V m11092e(long j) {
        V v;
        synchronized (this) {
            v = null;
            while (this.f29432d > 0 && j - this.f29429a[this.f29431c] >= 0) {
                v = m11091f();
            }
        }
        return v;
    }
}
