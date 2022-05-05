package org.apache.a.a.a;

import com.android.vcard.VCardBuilder;
/* loaded from: classes-dex2jar.jar:org/apache/a/a/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final byte[] f4800a = VCardBuilder.VCARD_END_OF_LINE.getBytes();

    /* renamed from: b  reason: collision with root package name */
    private static byte[] f4801b = new byte[255];
    private static byte[] c = new byte[64];

    static {
        int i = 0;
        for (int i2 = 0; i2 < 255; i2++) {
            f4801b[i2] = (byte) (-1);
        }
        for (int i3 = 90; i3 >= 65; i3--) {
            f4801b[i3] = (byte) (i3 - 65);
        }
        for (int i4 = 122; i4 >= 97; i4--) {
            f4801b[i4] = (byte) ((i4 - 97) + 26);
        }
        for (int i5 = 57; i5 >= 48; i5--) {
            f4801b[i5] = (byte) ((i5 - 48) + 52);
        }
        f4801b[43] = (byte) 62;
        f4801b[47] = (byte) 63;
        for (int i6 = 0; i6 <= 25; i6++) {
            c[i6] = (byte) (i6 + 65);
        }
        int i7 = 26;
        int i8 = 0;
        while (i7 <= 51) {
            c[i7] = (byte) (i8 + 97);
            i7++;
            i8++;
        }
        int i9 = 52;
        while (i9 <= 61) {
            c[i9] = (byte) (i + 48);
            i9++;
            i++;
        }
        c[62] = (byte) 43;
        c[63] = (byte) 47;
    }

    public static byte[] a(byte[] bArr) {
        int length = bArr.length * 8;
        int i = length % 24;
        int i2 = length / 24;
        byte[] bArr2 = new byte[i != 0 ? (i2 + 1) * 4 : i2 * 4];
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i3 * 3;
            byte b2 = bArr[i5];
            byte b3 = bArr[i5 + 1];
            byte b4 = bArr[i5 + 2];
            byte b5 = (byte) (b3 & 15);
            byte b6 = (byte) (b2 & 3);
            byte b7 = (b2 & Byte.MIN_VALUE) == 0 ? (byte) (b2 >> 2) : (byte) ((b2 >> 2) ^ 192);
            byte b8 = (b3 & Byte.MIN_VALUE) == 0 ? (byte) (b3 >> 4) : (byte) ((b3 >> 4) ^ 240);
            int i6 = (b4 & Byte.MIN_VALUE) == 0 ? b4 >> 6 : (b4 >> 6) ^ 252;
            bArr2[i4] = c[b7];
            bArr2[i4 + 1] = c[b8 | (b6 << 4)];
            bArr2[i4 + 2] = c[((byte) i6) | (b5 << 2)];
            bArr2[i4 + 3] = c[b4 & 63];
            i3++;
            i4 += 4;
        }
        int i7 = i3 * 3;
        if (i == 8) {
            byte b9 = bArr[i7];
            byte b10 = (byte) (b9 & 3);
            bArr2[i4] = c[(b9 & Byte.MIN_VALUE) == 0 ? (byte) (b9 >> 2) : (byte) ((b9 >> 2) ^ 192)];
            bArr2[i4 + 1] = c[b10 << 4];
            bArr2[i4 + 2] = (byte) 61;
            bArr2[i4 + 3] = (byte) 61;
        } else if (i == 16) {
            byte b11 = bArr[i7];
            byte b12 = bArr[i7 + 1];
            byte b13 = (byte) (b12 & 15);
            byte b14 = (byte) (b11 & 3);
            byte b15 = (b11 & Byte.MIN_VALUE) == 0 ? (byte) (b11 >> 2) : (byte) ((b11 >> 2) ^ 192);
            byte b16 = (b12 & Byte.MIN_VALUE) == 0 ? (byte) (b12 >> 4) : (byte) ((b12 >> 4) ^ 240);
            bArr2[i4] = c[b15];
            bArr2[i4 + 1] = c[b16 | (b14 << 4)];
            bArr2[i4 + 2] = c[b13 << 2];
            bArr2[i4 + 3] = (byte) 61;
        }
        return bArr2;
    }
}
