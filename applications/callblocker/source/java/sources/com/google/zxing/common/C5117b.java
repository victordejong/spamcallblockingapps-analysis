package com.google.zxing.common;

import java.util.Arrays;
/* renamed from: com.google.zxing.common.b */
/* loaded from: classes-dex2jar.jar:com/google/zxing/common/b.class */
public final class C5117b implements Cloneable {

    /* renamed from: a */
    private final int f21602a;

    /* renamed from: b */
    private final int f21603b;

    /* renamed from: c */
    private final int f21604c;

    /* renamed from: d */
    private final int[] f21605d;

    public C5117b(int i) {
        this(i, i);
    }

    public C5117b(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.f21602a = i;
        this.f21603b = i2;
        this.f21604c = (i + 31) / 32;
        this.f21605d = new int[this.f21604c * i2];
    }

    private C5117b(int i, int i2, int i3, int[] iArr) {
        this.f21602a = i;
        this.f21603b = i2;
        this.f21604c = i3;
        this.f21605d = iArr;
    }

    /* renamed from: a */
    private String m1460a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(this.f21603b * (this.f21602a + 1));
        for (int i = 0; i < this.f21603b; i++) {
            for (int i2 = 0; i2 < this.f21602a; i2++) {
                sb.append(m1463a(i2, i) ? str : str2);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public String m1461a(String str, String str2) {
        return m1460a(str, str2, "\n");
    }

    /* renamed from: a */
    public void m1464a() {
        int length = this.f21605d.length;
        for (int i = 0; i < length; i++) {
            this.f21605d[i] = 0;
        }
    }

    /* renamed from: a */
    public void m1462a(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i4 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i5 = i + i3;
        int i6 = i2 + i4;
        if (i6 > this.f21603b || i5 > this.f21602a) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i2 < i6) {
            int i7 = this.f21604c;
            for (int i8 = i; i8 < i5; i8++) {
                int[] iArr = this.f21605d;
                int i9 = (i8 / 32) + (i2 * i7);
                iArr[i9] = iArr[i9] | (1 << (i8 & 31));
            }
            i2++;
        }
    }

    /* renamed from: a */
    public boolean m1463a(int i, int i2) {
        return ((this.f21605d[(this.f21604c * i2) + (i / 32)] >>> (i & 31)) & 1) != 0;
    }

    /* renamed from: b */
    public int m1459b() {
        return this.f21602a;
    }

    /* renamed from: b */
    public void m1458b(int i, int i2) {
        int i3 = (this.f21604c * i2) + (i / 32);
        int[] iArr = this.f21605d;
        iArr[i3] = iArr[i3] | (1 << (i & 31));
    }

    /* renamed from: c */
    public int m1457c() {
        return this.f21603b;
    }

    /* renamed from: d */
    public C5117b clone() {
        return new C5117b(this.f21602a, this.f21603b, this.f21604c, (int[]) this.f21605d.clone());
    }

    public boolean equals(Object obj) {
        boolean z;
        if (!(obj instanceof C5117b)) {
            z = false;
        } else {
            C5117b c5117b = (C5117b) obj;
            z = false;
            if (this.f21602a == c5117b.f21602a) {
                z = false;
                if (this.f21603b == c5117b.f21603b) {
                    z = false;
                    if (this.f21604c == c5117b.f21604c) {
                        z = false;
                        if (Arrays.equals(this.f21605d, c5117b.f21605d)) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return (((((((this.f21602a * 31) + this.f21602a) * 31) + this.f21603b) * 31) + this.f21604c) * 31) + Arrays.hashCode(this.f21605d);
    }

    public String toString() {
        return m1461a("X ", "  ");
    }
}
