package com.appsflyer.internal;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/am.class */
public class am {
    /* renamed from: ǃ  reason: contains not printable characters */
    public static void m968(int i, int i2, boolean z, int i3, int[] iArr, int[][] iArr2, int[] iArr3) {
        if (!z) {
            m969(iArr);
        }
        int i4 = i;
        int i5 = i2;
        int i6 = 0;
        while (i6 < i3) {
            i5 = i4 ^ iArr[i6];
            int i7 = iArr2[0][i5 >>> 24];
            int i8 = iArr2[1][(i5 >>> 16) & 255];
            int i9 = iArr2[2][(i5 >>> 8) & 255];
            i6++;
            i4 = i5 ^ ((i9 ^ (i7 + i8)) + iArr2[3][i5 & 255]);
        }
        int i10 = iArr[iArr.length - 2];
        int i11 = iArr[iArr.length - 1];
        if (!z) {
            m969(iArr);
        }
        iArr3[0] = i5 ^ i11;
        iArr3[1] = i4 ^ i10;
    }

    /* renamed from: Ι  reason: contains not printable characters */
    private static void m969(int[] iArr) {
        for (int i = 0; i < iArr.length / 2; i++) {
            int i2 = iArr[i];
            iArr[i] = iArr[(iArr.length - i) - 1];
            iArr[(iArr.length - i) - 1] = i2;
        }
    }
}
