package com.appsflyer.internal;
/* renamed from: com.appsflyer.internal.cu */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/cu.class */
public final class C0807cu {
    public static void AFInAppEventType(int[] iArr) {
        for (int i = 0; i < iArr.length / 2; i++) {
            int i2 = iArr[i];
            iArr[i] = iArr[(iArr.length - i) - 1];
            iArr[(iArr.length - i) - 1] = i2;
        }
    }

    public static int values(int i) {
        int[][] iArr = C0802cn.AFInAppEventType.values;
        return ((iArr[0][i >>> 24] + iArr[1][(i >>> 16) & 255]) ^ iArr[2][(i >>> 8) & 255]) + iArr[3][i & 255];
    }

    public static int[] values(char[] cArr, int[] iArr, boolean z) {
        int i;
        int i2 = (cArr[0] << 16) + cArr[1];
        int i3 = (cArr[2] << 16) + cArr[3];
        if (!z) {
            AFInAppEventType(iArr);
        }
        int i4 = 0;
        while (true) {
            i = i3;
            if (i4 >= 16) {
                break;
            }
            i3 = i2 ^ iArr[i4];
            i4++;
            i2 = i ^ values(i3);
        }
        int i5 = i2 ^ iArr[16];
        int i6 = iArr[17] ^ i;
        cArr[0] = (char) (i6 >>> 16);
        cArr[1] = (char) i6;
        cArr[2] = (char) (i5 >>> 16);
        cArr[3] = (char) i5;
        if (!z) {
            AFInAppEventType(iArr);
        }
        return new int[]{i6, i5};
    }
}
