package com.huawei.updatesdk.p097a.p098a.p103d;
/* renamed from: com.huawei.updatesdk.a.a.d.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/a/d/a.class */
public class C2516a {

    /* renamed from: a */
    private static char[] f8183a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/', '='};

    /* renamed from: a */
    public static String m36844a(byte[] bArr) {
        return m36843a(bArr, bArr.length);
    }

    /* renamed from: a */
    public static String m36843a(byte[] bArr, int i) {
        boolean z;
        char[] cArr = new char[((i + 2) / 3) * 4];
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            int i4 = (bArr[i2] & 255) << 8;
            int i5 = i2 + 1;
            boolean z2 = true;
            if (i5 < i) {
                i4 |= bArr[i5] & 255;
                z = true;
            } else {
                z = false;
            }
            int i6 = i4 << 8;
            int i7 = i2 + 2;
            if (i7 < i) {
                i6 |= bArr[i7] & 255;
            } else {
                z2 = false;
            }
            char[] cArr2 = f8183a;
            cArr[i3 + 3] = cArr2[z2 ? i6 & 63 : 64];
            int i8 = i6 >> 6;
            int i9 = 64;
            if (z) {
                i9 = i8 & 63;
            }
            cArr[i3 + 2] = cArr2[i9];
            int i10 = i8 >> 6;
            cArr[i3 + 1] = cArr2[i10 & 63];
            cArr[i3 + 0] = cArr2[(i10 >> 6) & 63];
            i2 += 3;
            i3 += 4;
        }
        return String.valueOf(cArr);
    }
}
