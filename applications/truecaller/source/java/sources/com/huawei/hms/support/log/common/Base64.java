package com.huawei.hms.support.log.common;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/log/common/Base64.class */
public final class Base64 {

    /* renamed from: a */
    public static final char[] f7815a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/', '='};

    /* renamed from: b */
    public static final byte[] f7816b = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

    /* renamed from: a */
    public static int m37191a(String str) {
        int i;
        int length = str.length();
        int i2 = 0;
        while (i2 < str.length()) {
            char charAt = str.charAt(i2);
            if (charAt <= 255) {
                i = length;
                if (f7816b[charAt] >= 0) {
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

    public static byte[] decode(String str) {
        int m37191a = m37191a(str);
        int i = (m37191a / 4) * 3;
        int i2 = m37191a % 4;
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
        while (i5 < str.length()) {
            char charAt = str.charAt(i5);
            byte b = charAt > 255 ? (byte) -1 : f7816b[charAt];
            int i9 = i8;
            int i10 = i7;
            int i11 = i6;
            if (b >= 0) {
                int i12 = i6 + 6;
                int i13 = (i7 << 6) | b;
                i9 = i8;
                i10 = i13;
                i11 = i12;
                if (i12 >= 8) {
                    i11 = i12 - 8;
                    bArr[i8] = (byte) (255 & (i13 >> i11));
                    i9 = i8 + 1;
                    i10 = i13;
                }
            }
            i5++;
            i8 = i9;
            i7 = i10;
            i6 = i11;
        }
        return i8 != i4 ? new byte[0] : bArr;
    }

    public static String encode(byte[] bArr) {
        return encode(bArr, bArr.length);
    }

    public static String encode(byte[] bArr, int i) {
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
            char[] cArr2 = f7815a;
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
        return new String(cArr);
    }
}
