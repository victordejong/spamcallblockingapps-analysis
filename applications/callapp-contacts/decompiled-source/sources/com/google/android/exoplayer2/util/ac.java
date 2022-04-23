package com.google.android.exoplayer2.util;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/ac.class */
public final class ac<V> {

    /* renamed from: a  reason: collision with root package name */
    private long[] f22267a;

    /* renamed from: b  reason: collision with root package name */
    private V[] f22268b;

    /* renamed from: c  reason: collision with root package name */
    private int f22269c;

    /* renamed from: d  reason: collision with root package name */
    private int f22270d;

    public ac() {
        this(10);
    }

    public ac(int i) {
        this.f22267a = new long[i];
        this.f22268b = (V[]) new Object[i];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private V a(long r6, boolean r8) {
        /*
            r5 = this;
            r0 = 0
            r9 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r10 = r0
        L_0x0008:
            r0 = r5
            int r0 = r0.f22270d
            if (r0 <= 0) goto L_0x003d
            r0 = r6
            r1 = r5
            long[] r1 = r1.f22267a
            r2 = r5
            int r2 = r2.f22269c
            r1 = r1[r2]
            long r0 = r0 - r1
            r12 = r0
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0030
            r0 = r8
            if (r0 != 0) goto L_0x003d
            r0 = r12
            long r0 = -r0
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x003d
        L_0x0030:
            r0 = r5
            java.lang.Object r0 = r0.d()
            r9 = r0
            r0 = r12
            r10 = r0
            goto L_0x0008
        L_0x003d:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.ac.a(long, boolean):java.lang.Object");
    }

    private V d() {
        a.b(this.f22270d > 0);
        V[] vArr = this.f22268b;
        int i = this.f22269c;
        V v = vArr[i];
        vArr[i] = null;
        this.f22269c = (i + 1) % vArr.length;
        this.f22270d--;
        return v;
    }

    public final V a(long j) {
        V a2;
        synchronized (this) {
            a2 = a(j, true);
        }
        return a2;
    }

    public final void a() {
        synchronized (this) {
            this.f22269c = 0;
            this.f22270d = 0;
            Arrays.fill(this.f22268b, (Object) null);
        }
    }

    public final void a(long j, V v) {
        synchronized (this) {
            int i = this.f22270d;
            if (i > 0) {
                int i2 = this.f22269c;
                if (j <= this.f22267a[((i2 + i) - 1) % this.f22268b.length]) {
                    a();
                }
            }
            int length = this.f22268b.length;
            if (this.f22270d >= length) {
                int i3 = length * 2;
                long[] jArr = new long[i3];
                V[] vArr = (V[]) new Object[i3];
                int i4 = this.f22269c;
                int i5 = length - i4;
                System.arraycopy(this.f22267a, i4, jArr, 0, i5);
                System.arraycopy(this.f22268b, this.f22269c, vArr, 0, i5);
                int i6 = this.f22269c;
                if (i6 > 0) {
                    System.arraycopy(this.f22267a, 0, jArr, i5, i6);
                    System.arraycopy(this.f22268b, 0, vArr, i5, this.f22269c);
                }
                this.f22267a = jArr;
                this.f22268b = vArr;
                this.f22269c = 0;
            }
            int i7 = this.f22269c;
            int i8 = this.f22270d;
            V[] vArr2 = this.f22268b;
            int length2 = (i7 + i8) % vArr2.length;
            this.f22267a[length2] = j;
            vArr2[length2] = v;
            this.f22270d = i8 + 1;
        }
    }

    public final int b() {
        int i;
        synchronized (this) {
            i = this.f22270d;
        }
        return i;
    }

    public final V b(long j) {
        V a2;
        synchronized (this) {
            a2 = a(j, false);
        }
        return a2;
    }

    public final V c() {
        synchronized (this) {
            if (this.f22270d == 0) {
                return null;
            }
            return d();
        }
    }
}
