package org.bson.internal;

import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes-dex2jar.jar:org/bson/internal/Base64.class */
public final class Base64 {
    private static final int BYTES_PER_ENCODED_BLOCK = 4;
    private static final int BYTES_PER_UNENCODED_BLOCK = 3;
    private static final byte PAD = 61;
    private static final int SIX_BIT_MASK = 63;
    private static final byte[] ENCODE_TABLE = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    private static final int[] DECODE_TABLE = new int[128];

    static {
        int i = 0;
        while (true) {
            byte[] bArr = ENCODE_TABLE;
            if (i < bArr.length) {
                DECODE_TABLE[bArr[i]] = i;
                i++;
            } else {
                return;
            }
        }
    }

    private Base64() {
    }

    private static String byteArrayToString(byte[] bArr) {
        return new String(bArr, 0, 0, bArr.length);
    }

    public static byte[] decode(String str) {
        int length = ((str.length() * 3) / 4) - (str.endsWith("==") ? 2 : str.endsWith(SimpleComparison.EQUAL_TO_OPERATION) ? 1 : 0);
        byte[] bArr = new byte[length];
        int i = 0;
        int i2 = 0;
        while (i2 < str.length()) {
            int[] iArr = DECODE_TABLE;
            int i3 = iArr[str.charAt(i2)];
            int i4 = iArr[str.charAt(i2 + 1)];
            int i5 = i + 1;
            bArr[i] = (byte) (((i3 << 2) | (i4 >> 4)) & 255);
            if (i5 >= length) {
                return bArr;
            }
            int i6 = iArr[str.charAt(i2 + 2)];
            int i7 = i5 + 1;
            bArr[i5] = (byte) (((i4 << 4) | (i6 >> 2)) & 255);
            if (i7 >= length) {
                return bArr;
            }
            bArr[i7] = (byte) (((i6 << 6) | iArr[str.charAt(i2 + 3)]) & 255);
            i2 += 4;
            i = i7 + 1;
        }
        return bArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v70, types: [int] */
    public static String encode(byte[] bArr) {
        int i;
        int i2 = 0;
        byte[] bArr2 = new byte[((bArr.length / 3) * 4) + (bArr.length % 3 == 0 ? 0 : 4)];
        int length = bArr.length;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i = i5;
            if (i2 >= length) {
                break;
            }
            byte b = bArr[i2];
            int i6 = (i3 + 1) % 3;
            byte b2 = b;
            if (b < 0) {
                b2 = b + 256;
            }
            int i7 = (i << 8) + b2;
            int i8 = i4;
            if (i6 == 0) {
                int i9 = i4 + 1;
                byte[] bArr3 = ENCODE_TABLE;
                bArr2[i4] = bArr3[(i7 >> 18) & 63];
                int i10 = i9 + 1;
                bArr2[i9] = bArr3[(i7 >> 12) & 63];
                int i11 = i10 + 1;
                bArr2[i10] = bArr3[(i7 >> 6) & 63];
                i8 = i11 + 1;
                bArr2[i11] = bArr3[i7 & 63];
            }
            i2++;
            i3 = i6;
            i4 = i8;
            i5 = i7;
        }
        if (i3 == 1) {
            int i12 = i4 + 1;
            byte[] bArr4 = ENCODE_TABLE;
            bArr2[i4] = bArr4[(i >> 2) & 63];
            int i13 = i12 + 1;
            bArr2[i12] = bArr4[(i << 4) & 63];
            bArr2[i13] = (byte) 61;
            bArr2[i13 + 1] = (byte) 61;
        } else if (i3 == 2) {
            int i14 = i4 + 1;
            byte[] bArr5 = ENCODE_TABLE;
            bArr2[i4] = bArr5[(i >> 10) & 63];
            int i15 = i14 + 1;
            bArr2[i14] = bArr5[(i >> 4) & 63];
            bArr2[i15] = bArr5[(i << 2) & 63];
            bArr2[i15 + 1] = (byte) 61;
        }
        return byteArrayToString(bArr2);
    }
}
