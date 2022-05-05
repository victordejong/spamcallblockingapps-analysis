package com.mixpanel.android.util;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/util/Base64Coder.class */
public class Base64Coder {
    private static char[] map1 = new char[64];
    private static byte[] map2;

    static {
        char c = 'A';
        int i = 0;
        while (c <= 'Z') {
            map1[i] = c;
            c = (char) (c + 1);
            i++;
        }
        char c2 = 'a';
        while (c2 <= 'z') {
            map1[i] = c2;
            c2 = (char) (c2 + 1);
            i++;
        }
        char c3 = '0';
        while (c3 <= '9') {
            map1[i] = c3;
            c3 = (char) (c3 + 1);
            i++;
        }
        map1[i] = (char) 43;
        map1[i + 1] = (char) 47;
        map2 = new byte[128];
        for (int i2 = 0; i2 < map2.length; i2++) {
            map2[i2] = (byte) (-1);
        }
        for (int i3 = 0; i3 < 64; i3++) {
            map2[map1[i3]] = (byte) i3;
        }
    }

    public static byte[] decode(String str) {
        return decode(str.toCharArray());
    }

    public static byte[] decode(char[] cArr) {
        char c;
        int i;
        int length = cArr.length;
        int i2 = length;
        if (length % 4 != 0) {
            throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
        }
        while (i2 > 0 && cArr[i2 - 1] == '=') {
            i2--;
        }
        int i3 = (i2 * 3) / 4;
        byte[] bArr = new byte[i3];
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            int i6 = i4 + 1;
            char c2 = cArr[i4];
            int i7 = i6 + 1;
            char c3 = cArr[i6];
            char c4 = 'A';
            if (i7 < i2) {
                i = i7 + 1;
                c = cArr[i7];
            } else {
                i = i7;
                c = 'A';
            }
            i4 = i;
            if (i < i2) {
                c4 = cArr[i];
                i4 = i + 1;
            }
            if (c2 > 127 || c3 > 127 || c > 127 || c4 > 127) {
                throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
            }
            byte b = map2[c2];
            byte b2 = map2[c3];
            byte b3 = map2[c];
            byte b4 = map2[c4];
            if (b < 0 || b2 < 0 || b3 < 0 || b4 < 0) {
                throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
            }
            i5++;
            bArr[i5] = (byte) ((b << 2) | (b2 >>> 4));
            if (i5 < i3) {
                i5++;
                bArr[i5] = (byte) (((b2 & 15) << 4) | (b3 >>> 2));
            }
            if (i5 < i3) {
                i5++;
                bArr[i5] = (byte) (((b3 & 3) << 6) | b4);
            }
        }
        return bArr;
    }

    public static String decodeString(String str) {
        return new String(decode(str));
    }

    public static char[] encode(byte[] bArr) {
        return encode(bArr, bArr.length);
    }

    public static char[] encode(byte[] bArr, int i) {
        int i2;
        int i3;
        int i4 = ((i * 4) + 2) / 3;
        char[] cArr = new char[((i + 2) / 3) * 4];
        int i5 = 0;
        int i6 = 0;
        while (i5 < i) {
            int i7 = i5 + 1;
            int i8 = bArr[i5] & 255;
            if (i7 < i) {
                i5 = i7 + 1;
                i2 = bArr[i7] & 255;
            } else {
                i5 = i7;
                i2 = 0;
            }
            if (i5 < i) {
                i5++;
                i3 = bArr[i5] & 255;
            } else {
                i3 = 0;
            }
            int i9 = i6 + 1;
            cArr[i6] = map1[i8 >>> 2];
            int i10 = i9 + 1;
            cArr[i9] = map1[((i8 & 3) << 4) | (i2 >>> 4)];
            char c = '=';
            cArr[i10] = i10 < i4 ? map1[((i2 & 15) << 2) | (i3 >>> 6)] : '=';
            int i11 = i10 + 1;
            if (i11 < i4) {
                c = map1[i3 & 63];
            }
            cArr[i11] = c;
            i6 = i11 + 1;
        }
        return cArr;
    }

    public static String encodeString(String str) {
        return new String(encode(str.getBytes()));
    }
}
