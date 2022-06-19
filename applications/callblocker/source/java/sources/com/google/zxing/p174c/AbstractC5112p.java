package com.google.zxing.p174c;

import com.google.zxing.FormatException;
/* renamed from: com.google.zxing.c.p */
/* loaded from: classes-dex2jar.jar:com/google/zxing/c/p.class */
public abstract class AbstractC5112p extends AbstractC5109m {

    /* renamed from: b */
    static final int[] f21593b = {1, 1, 1};

    /* renamed from: c */
    static final int[] f21594c = {1, 1, 1, 1, 1};

    /* renamed from: d */
    static final int[] f21595d = {1, 1, 1, 1, 1, 1};

    /* renamed from: e */
    static final int[][] f21596e = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};

    /* renamed from: f */
    static final int[][] f21597f = new int[20];

    /* JADX WARN: Type inference failed for: r0v17, types: [int[], int[][]] */
    /* JADX WARN: Type inference failed for: r0v19, types: [int[], int[][]] */
    static {
        System.arraycopy(f21596e, 0, f21597f, 0, 10);
        for (int i = 10; i < 20; i++) {
            int[] iArr = f21596e[i - 10];
            int[] iArr2 = new int[iArr.length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                iArr2[i2] = iArr[(iArr.length - i2) - 1];
            }
            f21597f[i] = iArr2;
        }
    }

    /* renamed from: a */
    public static boolean m1480a(CharSequence charSequence) {
        boolean z = false;
        int length = charSequence.length();
        if (length != 0) {
            if (m1479b(charSequence.subSequence(0, length - 1)) == Character.digit(charSequence.charAt(length - 1), 10)) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public static int m1479b(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        for (int i2 = length - 1; i2 >= 0; i2 -= 2) {
            int charAt = charSequence.charAt(i2) - '0';
            if (charAt < 0 || charAt > 9) {
                throw FormatException.m1606a();
            }
            i += charAt;
        }
        int i3 = i * 3;
        for (int i4 = length - 2; i4 >= 0; i4 -= 2) {
            int charAt2 = charSequence.charAt(i4) - '0';
            if (charAt2 < 0 || charAt2 > 9) {
                throw FormatException.m1606a();
            }
            i3 += charAt2;
        }
        return (1000 - i3) % 10;
    }
}
