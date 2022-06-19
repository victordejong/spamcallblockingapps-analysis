package com.google.android.exoplayer2.util;

import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.util.ac */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/ac.class */
public final class C11596ac<V> {

    /* renamed from: a */
    private long[] f38640a;

    /* renamed from: b */
    private V[] f38641b;

    /* renamed from: c */
    private int f38642c;

    /* renamed from: d */
    private int f38643d;

    public C11596ac() {
        this(10);
    }

    public C11596ac(int i) {
        this.f38640a = new long[i];
        this.f38641b = (V[]) new Object[i];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: a */
    private V m20014a(long j, boolean z) {
        V v = null;
        ?? r0 = 9223372036854775807;
        while (true) {
            char c = r0;
            if (this.f38643d <= 0) {
                break;
            }
            ?? r02 = j - this.f38640a[this.f38642c];
            if (r02 < 0 && (z || (-r02) >= c)) {
                break;
            }
            v = m20010d();
            r0 = r02;
        }
        return v;
    }

    /* renamed from: d */
    private V m20010d() {
        C11593a.m20019b(this.f38643d > 0);
        V[] vArr = this.f38641b;
        int i = this.f38642c;
        V v = vArr[i];
        vArr[i] = null;
        this.f38642c = (i + 1) % vArr.length;
        this.f38643d--;
        return v;
    }

    /* renamed from: a */
    public final V m20016a(long j) {
        V m20014a;
        synchronized (this) {
            m20014a = m20014a(j, true);
        }
        return m20014a;
    }

    /* renamed from: a */
    public final void m20017a() {
        synchronized (this) {
            this.f38642c = 0;
            this.f38643d = 0;
            Arrays.fill(this.f38641b, (Object) null);
        }
    }

    /* renamed from: a */
    public final void m20015a(long j, V v) {
        synchronized (this) {
            int i = this.f38643d;
            if (i > 0) {
                int i2 = this.f38642c;
                if (j <= this.f38640a[((i2 + i) - 1) % this.f38641b.length]) {
                    m20017a();
                }
            }
            int length = this.f38641b.length;
            if (this.f38643d >= length) {
                int i3 = length * 2;
                long[] jArr = new long[i3];
                V[] vArr = (V[]) new Object[i3];
                int i4 = this.f38642c;
                int i5 = length - i4;
                System.arraycopy(this.f38640a, i4, jArr, 0, i5);
                System.arraycopy(this.f38641b, this.f38642c, vArr, 0, i5);
                int i6 = this.f38642c;
                if (i6 > 0) {
                    System.arraycopy(this.f38640a, 0, jArr, i5, i6);
                    System.arraycopy(this.f38641b, 0, vArr, i5, this.f38642c);
                }
                this.f38640a = jArr;
                this.f38641b = vArr;
                this.f38642c = 0;
            }
            int i7 = this.f38642c;
            int i8 = this.f38643d;
            V[] vArr2 = this.f38641b;
            int length2 = (i7 + i8) % vArr2.length;
            this.f38640a[length2] = j;
            vArr2[length2] = v;
            this.f38643d = i8 + 1;
        }
    }

    /* renamed from: b */
    public final int m20013b() {
        int i;
        synchronized (this) {
            i = this.f38643d;
        }
        return i;
    }

    /* renamed from: b */
    public final V m20012b(long j) {
        V m20014a;
        synchronized (this) {
            m20014a = m20014a(j, false);
        }
        return m20014a;
    }

    /* renamed from: c */
    public final V m20011c() {
        synchronized (this) {
            if (this.f38643d == 0) {
                return null;
            }
            return m20010d();
        }
    }
}
