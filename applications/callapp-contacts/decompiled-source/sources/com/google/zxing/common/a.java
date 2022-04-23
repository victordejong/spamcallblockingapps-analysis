package com.google.zxing.common;

import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/common/a.class */
public final class a implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public int[] f32978a;

    /* renamed from: b  reason: collision with root package name */
    public int f32979b;

    public a() {
        this.f32979b = 0;
        this.f32978a = new int[1];
    }

    public a(int i) {
        this.f32979b = i;
        this.f32978a = c(i);
    }

    a(int[] iArr, int i) {
        this.f32978a = iArr;
        this.f32979b = i;
    }

    private void b(int i) {
        if (i > (this.f32978a.length << 5)) {
            int[] c2 = c(i);
            int[] iArr = this.f32978a;
            System.arraycopy(iArr, 0, c2, 0, iArr.length);
            this.f32978a = c2;
        }
    }

    private static int[] c(int i) {
        return new int[(i + 31) / 32];
    }

    public final int a() {
        return (this.f32979b + 7) / 8;
    }

    public final void a(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        b(this.f32979b + i2);
        while (i2 > 0) {
            boolean z = true;
            if (((i >> (i2 - 1)) & 1) != 1) {
                z = false;
            }
            a(z);
            i2--;
        }
    }

    public final void a(int i, byte[] bArr, int i2) {
        int i3 = i;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < 8; i6++) {
                i5 = i5;
                if (a(i3)) {
                    i5 |= 1 << (7 - i6);
                }
                i3++;
            }
            bArr[i4 + 0] = (byte) i5;
        }
    }

    public final void a(a aVar) {
        int i = aVar.f32979b;
        b(this.f32979b + i);
        for (int i2 = 0; i2 < i; i2++) {
            a(aVar.a(i2));
        }
    }

    public final void a(boolean z) {
        b(this.f32979b + 1);
        if (z) {
            int[] iArr = this.f32978a;
            int i = this.f32979b;
            int i2 = i / 32;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.f32979b++;
    }

    public final boolean a(int i) {
        return ((1 << (i & 31)) & this.f32978a[i / 32]) != 0;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return new a((int[]) this.f32978a.clone(), this.f32979b);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f32979b == aVar.f32979b && Arrays.equals(this.f32978a, aVar.f32978a);
    }

    public final int hashCode() {
        return (this.f32979b * 31) + Arrays.hashCode(this.f32978a);
    }

    public final String toString() {
        int i = this.f32979b;
        StringBuilder sb = new StringBuilder(i + (i / 8) + 1);
        for (int i2 = 0; i2 < this.f32979b; i2++) {
            if ((i2 & 7) == 0) {
                sb.append(' ');
            }
            sb.append(a(i2) ? 'X' : '.');
        }
        return sb.toString();
    }
}
