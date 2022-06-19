package com.huawei.appgallery.serviceverifykit.p081d;
/* renamed from: com.huawei.appgallery.serviceverifykit.d.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/appgallery/serviceverifykit/d/a.class */
public class C2233a {

    /* renamed from: a */
    private static byte[] f7216a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

    /* renamed from: a */
    public static byte[] m38228a(String str) {
        int m38227b = m38227b(str);
        int i = (m38227b / 4) * 3;
        int i2 = m38227b % 4;
        int i3 = i;
        if (i2 == 3) {
            i3 = i + 2;
        }
        int i4 = i3;
        if (i2 == 2) {
            i4 = i3 + 1;
        }
        byte[] bArr = new byte[i4];
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i8 < str.length()) {
            char charAt = str.charAt(i8);
            byte b = charAt > 255 ? (byte) -1 : f7216a[charAt];
            int i9 = i7;
            int i10 = i6;
            int i11 = i5;
            if (b >= 0) {
                int i12 = i5 + 6;
                int i13 = (i6 << 6) | b;
                i9 = i7;
                i10 = i13;
                i11 = i12;
                if (i12 >= 8) {
                    i11 = i12 - 8;
                    bArr[i7] = (byte) (255 & (i13 >> i11));
                    i9 = i7 + 1;
                    i10 = i13;
                }
            }
            i8++;
            i7 = i9;
            i6 = i10;
            i5 = i11;
        }
        return i7 != i4 ? new byte[0] : bArr;
    }

    /* renamed from: b */
    private static int m38227b(String str) {
        int i;
        int length = str.length();
        int i2 = 0;
        while (i2 < str.length()) {
            char charAt = str.charAt(i2);
            if (charAt <= 255) {
                i = length;
                if (f7216a[charAt] >= 0) {
                    i2++;
                    length = i;
                }
            }
            i = length - 1;
            i2++;
            length = i;
        }
        return length;
    }
}
