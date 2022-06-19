package com.google.android.exoplayer2.util;

import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.util.d0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/d0.class */
public final class C5507d0<V> {

    /* renamed from: a */
    private long[] f17861a;

    /* renamed from: b */
    private V[] f17862b;

    /* renamed from: c */
    private int f17863c;

    /* renamed from: d */
    private int f17864d;

    public C5507d0() {
        this(10);
    }

    public C5507d0(int i) {
        this.f17861a = new long[i];
        this.f17862b = (V[]) m18919f(i);
    }

    /* renamed from: b */
    private void m18923b(long j, V v) {
        int i = this.f17863c;
        int i2 = this.f17864d;
        V[] vArr = this.f17862b;
        int length = (i + i2) % vArr.length;
        this.f17861a[length] = j;
        vArr[length] = v;
        this.f17864d = i2 + 1;
    }

    /* renamed from: d */
    private void m18921d(long j) {
        int i = this.f17864d;
        if (i > 0) {
            int i2 = this.f17863c;
            if (j > this.f17861a[((i2 + i) - 1) % this.f17862b.length]) {
                return;
            }
            m18922c();
        }
    }

    /* renamed from: e */
    private void m18920e() {
        int length = this.f17862b.length;
        if (this.f17864d < length) {
            return;
        }
        int i = length * 2;
        long[] jArr = new long[i];
        V[] vArr = (V[]) m18919f(i);
        int i2 = this.f17863c;
        int i3 = length - i2;
        System.arraycopy(this.f17861a, i2, jArr, 0, i3);
        System.arraycopy(this.f17862b, this.f17863c, vArr, 0, i3);
        int i4 = this.f17863c;
        if (i4 > 0) {
            System.arraycopy(this.f17861a, 0, jArr, i3, i4);
            System.arraycopy(this.f17862b, 0, vArr, i3, this.f17863c);
        }
        this.f17861a = jArr;
        this.f17862b = vArr;
        this.f17863c = 0;
    }

    /* renamed from: f */
    private static <V> V[] m18919f(int i) {
        return (V[]) new Object[i];
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* renamed from: h */
    private V m18917h(long j, boolean z) {
        char c = 65535;
        V v = null;
        while (true) {
            int i = this.f17864d;
            if (i <= 0) {
                break;
            }
            long[] jArr = this.f17861a;
            int i2 = this.f17863c;
            ?? r0 = j - jArr[i2];
            if (r0 < 0 && (z || (-r0) >= c)) {
                break;
            }
            V[] vArr = this.f17862b;
            v = vArr[i2];
            vArr[i2] = null;
            this.f17863c = (i2 + 1) % vArr.length;
            this.f17864d = i - 1;
            c = r0;
        }
        return v;
    }

    /* renamed from: a */
    public void m18924a(long j, V v) {
        synchronized (this) {
            m18921d(j);
            m18920e();
            m18923b(j, v);
        }
    }

    /* renamed from: c */
    public void m18922c() {
        synchronized (this) {
            this.f17863c = 0;
            this.f17864d = 0;
            Arrays.fill(this.f17862b, (Object) null);
        }
    }

    /* renamed from: g */
    public V m18918g(long j) {
        V m18917h;
        synchronized (this) {
            m18917h = m18917h(j, false);
        }
        return m18917h;
    }

    /* renamed from: i */
    public V m18916i(long j) {
        V m18917h;
        synchronized (this) {
            m18917h = m18917h(j, true);
        }
        return m18917h;
    }
}
