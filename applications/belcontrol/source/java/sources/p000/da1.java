package p000;
/* renamed from: da1 */
/* loaded from: classes3-dex2jar.jar:da1.class */
public class da1 {

    /* renamed from: a */
    public static final byte[] f5810a = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: b */
    public static final byte[] f5811b = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9};

    /* renamed from: a */
    public static byte[] m2715a(String str) {
        byte[] bytes = str.getBytes();
        return m2713c(bytes, 0, bytes.length);
    }

    /* renamed from: b */
    public static byte[] m2714b(byte[] bArr) {
        return m2713c(bArr, 0, bArr.length);
    }

    /* renamed from: c */
    public static byte[] m2713c(byte[] bArr, int i, int i2) {
        return m2712d(bArr, i, i2, f5811b);
    }

    /* renamed from: d */
    public static byte[] m2712d(byte[] bArr, int i, int i2, byte[] bArr2) {
        int i3;
        int i4;
        byte[] bArr3 = new byte[((i2 * 3) / 4) + 2];
        byte[] bArr4 = new byte[4];
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i3 = i7;
            if (i5 >= i2) {
                break;
            }
            byte b = (byte) (bArr[i5 + i] & Byte.MAX_VALUE);
            byte b2 = bArr2[b];
            if (b2 < -5) {
                throw new la1("Bad Base64 input character at " + i5 + ": " + ((int) bArr[i4]) + "(decimal)");
            }
            int i8 = i6;
            int i9 = i3;
            if (b2 >= -1) {
                if (b == 61) {
                    int i10 = i2 - i5;
                    byte b3 = (byte) (bArr[(i2 - 1) + i] & Byte.MAX_VALUE);
                    if (i6 == 0 || i6 == 1) {
                        throw new la1("invalid padding byte '=' at byte offset " + i5);
                    } else if ((i6 == 3 && i10 > 2) || (i6 == 4 && i10 > 1)) {
                        throw new la1("padding byte '=' falsely signals end of encoded value at offset " + i5);
                    } else if (b3 != 61 && b3 != 10) {
                        throw new la1("encoded value has invalid trailing byte");
                    }
                } else {
                    i8 = i6 + 1;
                    bArr4[i6] = b;
                    if (i8 == 4) {
                        i9 = i3 + m2711e(bArr4, 0, bArr3, i3, bArr2);
                        i8 = 0;
                    } else {
                        i9 = i3;
                    }
                }
            }
            i5++;
            i6 = i8;
            i7 = i9;
        }
        int i11 = i3;
        if (i6 != 0) {
            if (i6 == 1) {
                throw new la1("single trailing character at offset " + (i2 - 1));
            }
            bArr4[i6] = (byte) 61;
            i11 = i3 + m2711e(bArr4, 0, bArr3, i3, bArr2);
        }
        byte[] bArr5 = new byte[i11];
        System.arraycopy(bArr3, 0, bArr5, 0, i11);
        return bArr5;
    }

    /* renamed from: e */
    public static int m2711e(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3) {
        int i3 = i + 2;
        if (bArr[i3] == 61) {
            bArr2[i2] = (byte) ((((bArr3[bArr[i + 1]] << 24) >>> 12) | ((bArr3[bArr[i]] << 24) >>> 6)) >>> 16);
            return 1;
        }
        int i4 = i + 3;
        if (bArr[i4] == 61) {
            byte b = bArr3[bArr[i]];
            int i5 = ((bArr3[bArr[i3]] << 24) >>> 18) | ((bArr3[bArr[i + 1]] << 24) >>> 12) | ((b << 24) >>> 6);
            bArr2[i2] = (byte) (i5 >>> 16);
            bArr2[i2 + 1] = (byte) (i5 >>> 8);
            return 2;
        }
        byte b2 = bArr3[bArr[i]];
        int i6 = ((bArr3[bArr[i4]] << 24) >>> 24) | ((bArr3[bArr[i + 1]] << 24) >>> 12) | ((b2 << 24) >>> 6) | ((bArr3[bArr[i3]] << 24) >>> 18);
        bArr2[i2] = (byte) (i6 >> 16);
        bArr2[i2 + 1] = (byte) (i6 >> 8);
        bArr2[i2 + 2] = (byte) i6;
        return 3;
    }

    /* renamed from: f */
    public static String m2710f(byte[] bArr) {
        return m2709g(bArr, 0, bArr.length, f5810a, true);
    }

    /* renamed from: g */
    public static String m2709g(byte[] bArr, int i, int i2, byte[] bArr2, boolean z) {
        byte[] m2708h = m2708h(bArr, i, i2, bArr2, Integer.MAX_VALUE);
        int length = m2708h.length;
        while (!z && length > 0 && m2708h[length - 1] == 61) {
            length--;
        }
        return new String(m2708h, 0, length);
    }

    /* renamed from: h */
    public static byte[] m2708h(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4 = ((i2 + 2) / 3) * 4;
        byte[] bArr3 = new byte[i4 + (i4 / i3)];
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i5 < i2 - 2) {
            int i8 = ((bArr[i5 + i] << 24) >>> 8) | ((bArr[(i5 + 1) + i] << 24) >>> 16) | ((bArr[(i5 + 2) + i] << 24) >>> 24);
            bArr3[i6] = bArr2[i8 >>> 18];
            int i9 = i6 + 1;
            bArr3[i9] = bArr2[(i8 >>> 12) & 63];
            bArr3[i6 + 2] = bArr2[(i8 >>> 6) & 63];
            bArr3[i6 + 3] = bArr2[i8 & 63];
            int i10 = i7 + 4;
            int i11 = i6;
            i7 = i10;
            if (i10 == i3) {
                bArr3[i6 + 4] = (byte) 10;
                i11 = i9;
                i7 = 0;
            }
            i5 += 3;
            i6 = i11 + 4;
        }
        if (i5 < i2) {
            m2707i(bArr, i5 + i, i2 - i5, bArr3, i6, bArr2);
            if (i7 + 4 == i3) {
                bArr3[i6 + 4] = (byte) 10;
            }
        }
        return bArr3;
    }

    /* renamed from: i */
    public static byte[] m2707i(byte[] bArr, int i, int i2, byte[] bArr2, int i3, byte[] bArr3) {
        int i4 = 0;
        int i5 = i2 > 0 ? (bArr[i] << 24) >>> 8 : 0;
        int i6 = i2 > 1 ? (bArr[i + 1] << 24) >>> 16 : 0;
        if (i2 > 2) {
            i4 = (bArr[i + 2] << 24) >>> 24;
        }
        int i7 = i5 | i6 | i4;
        if (i2 == 1) {
            bArr2[i3] = bArr3[i7 >>> 18];
            bArr2[i3 + 1] = bArr3[(i7 >>> 12) & 63];
            bArr2[i3 + 2] = (byte) 61;
            bArr2[i3 + 3] = (byte) 61;
            return bArr2;
        } else if (i2 == 2) {
            bArr2[i3] = bArr3[i7 >>> 18];
            bArr2[i3 + 1] = bArr3[(i7 >>> 12) & 63];
            bArr2[i3 + 2] = bArr3[(i7 >>> 6) & 63];
            bArr2[i3 + 3] = (byte) 61;
            return bArr2;
        } else if (i2 != 3) {
            return bArr2;
        } else {
            bArr2[i3] = bArr3[i7 >>> 18];
            bArr2[i3 + 1] = bArr3[(i7 >>> 12) & 63];
            bArr2[i3 + 2] = bArr3[(i7 >>> 6) & 63];
            bArr2[i3 + 3] = bArr3[i7 & 63];
            return bArr2;
        }
    }
}
