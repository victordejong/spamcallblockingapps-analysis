package com.google.zxing.common;

import java.util.Arrays;
/* renamed from: com.google.zxing.common.a */
/* loaded from: classes-dex2jar.jar:com/google/zxing/common/a.class */
public final class C5116a implements Cloneable {

    /* renamed from: a */
    private int[] f21600a;

    /* renamed from: b */
    private int f21601b;

    public C5116a() {
        this.f21601b = 0;
        this.f21600a = new int[1];
    }

    C5116a(int[] iArr, int i) {
        this.f21600a = iArr;
        this.f21601b = i;
    }

    /* renamed from: b */
    private void m1468b(int i) {
        if (i > (this.f21600a.length << 5)) {
            int[] m1465c = m1465c(i);
            System.arraycopy(this.f21600a, 0, m1465c, 0, this.f21600a.length);
            this.f21600a = m1465c;
        }
    }

    /* renamed from: c */
    private static int[] m1465c(int i) {
        return new int[(i + 31) / 32];
    }

    /* renamed from: a */
    public int m1475a() {
        return this.f21601b;
    }

    /* renamed from: a */
    public void m1473a(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        m1468b(this.f21601b + i2);
        while (i2 > 0) {
            m1470a(((i >> (i2 - 1)) & 1) == 1);
            i2--;
        }
    }

    /* renamed from: a */
    public void m1472a(int i, byte[] bArr, int i2, int i3) {
        int i4;
        int i5 = i;
        for (int i6 = 0; i6 < i3; i6++) {
            int i7 = 0;
            int i8 = 0;
            while (true) {
                i4 = i8;
                if (i7 < 8) {
                    int i9 = i4;
                    if (m1474a(i5)) {
                        i9 = i4 | (1 << (7 - i7));
                    }
                    i5++;
                    i7++;
                    i8 = i9;
                }
            }
            bArr[i2 + i6] = (byte) i4;
        }
    }

    /* renamed from: a */
    public void m1471a(C5116a c5116a) {
        int i = c5116a.f21601b;
        m1468b(this.f21601b + i);
        for (int i2 = 0; i2 < i; i2++) {
            m1470a(c5116a.m1474a(i2));
        }
    }

    /* renamed from: a */
    public void m1470a(boolean z) {
        m1468b(this.f21601b + 1);
        if (z) {
            int[] iArr = this.f21600a;
            int i = this.f21601b / 32;
            iArr[i] = iArr[i] | (1 << (this.f21601b & 31));
        }
        this.f21601b++;
    }

    /* renamed from: a */
    public boolean m1474a(int i) {
        boolean z = true;
        if ((this.f21600a[i / 32] & (1 << (i & 31))) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public int m1469b() {
        return (this.f21601b + 7) / 8;
    }

    /* renamed from: b */
    public void m1467b(C5116a c5116a) {
        if (this.f21601b != c5116a.f21601b) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        for (int i = 0; i < this.f21600a.length; i++) {
            int[] iArr = this.f21600a;
            iArr[i] = iArr[i] ^ c5116a.f21600a[i];
        }
    }

    /* renamed from: c */
    public C5116a clone() {
        return new C5116a((int[]) this.f21600a.clone(), this.f21601b);
    }

    public boolean equals(Object obj) {
        boolean z;
        if (!(obj instanceof C5116a)) {
            z = false;
        } else {
            C5116a c5116a = (C5116a) obj;
            z = false;
            if (this.f21601b == c5116a.f21601b) {
                z = false;
                if (Arrays.equals(this.f21600a, c5116a.f21600a)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return (this.f21601b * 31) + Arrays.hashCode(this.f21600a);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.f21601b + (this.f21601b / 8) + 1);
        for (int i = 0; i < this.f21601b; i++) {
            if ((i & 7) == 0) {
                sb.append(' ');
            }
            sb.append(m1474a(i) ? 'X' : '.');
        }
        return sb.toString();
    }
}
