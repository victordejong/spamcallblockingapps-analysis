package com.google.zxing.common;

import java.util.Arrays;
/* renamed from: com.google.zxing.common.a */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/common/a.class */
public final class C16190a implements Cloneable {

    /* renamed from: a */
    public int[] f57155a;

    /* renamed from: b */
    public int f57156b;

    public C16190a() {
        this.f57156b = 0;
        this.f57155a = new int[1];
    }

    public C16190a(int i) {
        this.f57156b = i;
        this.f57155a = m7680c(i);
    }

    C16190a(int[] iArr, int i) {
        this.f57155a = iArr;
        this.f57156b = i;
    }

    /* renamed from: b */
    private void m7681b(int i) {
        if (i > (this.f57155a.length << 5)) {
            int[] m7680c = m7680c(i);
            int[] iArr = this.f57155a;
            System.arraycopy(iArr, 0, m7680c, 0, iArr.length);
            this.f57155a = m7680c;
        }
    }

    /* renamed from: c */
    private static int[] m7680c(int i) {
        return new int[(i + 31) / 32];
    }

    /* renamed from: a */
    public final int m7687a() {
        return (this.f57156b + 7) / 8;
    }

    /* renamed from: a */
    public final void m7685a(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        m7681b(this.f57156b + i2);
        while (i2 > 0) {
            boolean z = true;
            if (((i >> (i2 - 1)) & 1) != 1) {
                z = false;
            }
            m7682a(z);
            i2--;
        }
    }

    /* renamed from: a */
    public final void m7684a(int i, byte[] bArr, int i2) {
        int i3;
        int i4 = i;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = 0;
            int i7 = 0;
            while (true) {
                i3 = i7;
                if (i6 < 8) {
                    int i8 = i3;
                    if (m7686a(i4)) {
                        i8 = i3 | (1 << (7 - i6));
                    }
                    i4++;
                    i6++;
                    i7 = i8;
                }
            }
            bArr[i5 + 0] = (byte) i3;
        }
    }

    /* renamed from: a */
    public final void m7683a(C16190a c16190a) {
        int i = c16190a.f57156b;
        m7681b(this.f57156b + i);
        for (int i2 = 0; i2 < i; i2++) {
            m7682a(c16190a.m7686a(i2));
        }
    }

    /* renamed from: a */
    public final void m7682a(boolean z) {
        m7681b(this.f57156b + 1);
        if (z) {
            int[] iArr = this.f57155a;
            int i = this.f57156b;
            int i2 = i / 32;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.f57156b++;
    }

    /* renamed from: a */
    public final boolean m7686a(int i) {
        return ((1 << (i & 31)) & this.f57155a[i / 32]) != 0;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return new C16190a((int[]) this.f57155a.clone(), this.f57156b);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C16190a)) {
            return false;
        }
        C16190a c16190a = (C16190a) obj;
        return this.f57156b == c16190a.f57156b && Arrays.equals(this.f57155a, c16190a.f57155a);
    }

    public final int hashCode() {
        return (this.f57156b * 31) + Arrays.hashCode(this.f57155a);
    }

    public final String toString() {
        int i = this.f57156b;
        StringBuilder sb = new StringBuilder(i + (i / 8) + 1);
        for (int i2 = 0; i2 < this.f57156b; i2++) {
            if ((i2 & 7) == 0) {
                sb.append(' ');
            }
            sb.append(m7686a(i2) ? 'X' : '.');
        }
        return sb.toString();
    }
}
