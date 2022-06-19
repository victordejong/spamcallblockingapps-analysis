package com.appsflyer.internal;
/* renamed from: com.appsflyer.internal.cv */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/cv.class */
public final class C0808cv {
    public static void AFInAppEventParameterName(int i, int i2, boolean z, int i3, int[] iArr, int[][] iArr2, int[] iArr3) {
        int i4;
        if (!z) {
            AFInAppEventParameterName(iArr);
        }
        int i5 = 0;
        while (true) {
            i4 = i2;
            if (i5 >= i3) {
                break;
            }
            i2 = i ^ iArr[i5];
            i5++;
            i = i4 ^ AFKeystoreWrapper(i2, iArr2);
        }
        int i6 = iArr[iArr.length - 2];
        int i7 = iArr[iArr.length - 1];
        if (!z) {
            AFInAppEventParameterName(iArr);
        }
        iArr3[0] = i4 ^ i7;
        iArr3[1] = i ^ i6;
    }

    private static void AFInAppEventParameterName(int[] iArr) {
        for (int i = 0; i < iArr.length / 2; i++) {
            int i2 = iArr[i];
            iArr[i] = iArr[(iArr.length - i) - 1];
            iArr[(iArr.length - i) - 1] = i2;
        }
    }

    private static int AFKeystoreWrapper(int i, int[][] iArr) {
        return ((iArr[0][i >>> 24] + iArr[1][(i >>> 16) & 255]) ^ iArr[2][(i >>> 8) & 255]) + iArr[3][i & 255];
    }
}
