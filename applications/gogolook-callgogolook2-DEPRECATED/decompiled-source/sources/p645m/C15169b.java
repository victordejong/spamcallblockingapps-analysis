package p645m;

import androidx.media2.exoplayer.external.C0463C;
import java.io.UnsupportedEncodingException;
/* renamed from: m.b */
/* loaded from: classes3-dex2jar.jar:m/b.class */
public final class C15169b {

    /* renamed from: a */
    public static final byte[] f33157a = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: a */
    public static String m368a(byte[] bArr) {
        return m367a(bArr, f33157a);
    }

    /* renamed from: a */
    public static String m367a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i = 0;
        for (int i2 = 0; i2 < length; i2 += 3) {
            int i3 = i + 1;
            bArr3[i] = bArr2[(bArr[i2] & 255) >> 2];
            int i4 = i3 + 1;
            int i5 = i2 + 1;
            bArr3[i3] = bArr2[((bArr[i2] & 3) << 4) | ((bArr[i5] & 255) >> 4)];
            int i6 = i4 + 1;
            byte b = bArr[i5];
            int i7 = i2 + 2;
            bArr3[i4] = bArr2[((b & 15) << 2) | ((bArr[i7] & 255) >> 6)];
            i = i6 + 1;
            bArr3[i6] = bArr2[bArr[i7] & 63];
        }
        int length2 = bArr.length % 3;
        if (length2 == 1) {
            int i8 = i + 1;
            bArr3[i] = bArr2[(bArr[length] & 255) >> 2];
            int i9 = i8 + 1;
            bArr3[i8] = bArr2[(bArr[length] & 3) << 4];
            bArr3[i9] = (byte) 61;
            bArr3[i9 + 1] = (byte) 61;
        } else if (length2 == 2) {
            int i10 = i + 1;
            bArr3[i] = bArr2[(bArr[length] & 255) >> 2];
            int i11 = i10 + 1;
            int i12 = length + 1;
            bArr3[i10] = bArr2[((bArr[i12] & 255) >> 4) | ((bArr[length] & 3) << 4)];
            bArr3[i11] = bArr2[(bArr[i12] & 15) << 2];
            bArr3[i11 + 1] = (byte) 61;
        }
        try {
            return new String(bArr3, C0463C.ASCII_NAME);
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    public static byte[] m369a(String str) {
        int i;
        int i2;
        char charAt;
        int length = str.length();
        while (length > 0 && ((charAt = str.charAt(length - 1)) == '=' || charAt == '\n' || charAt == '\r' || charAt == ' ' || charAt == '\t')) {
            length--;
        }
        byte[] bArr = new byte[(int) ((length * 6) / 8)];
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            char charAt2 = str.charAt(i6);
            if (charAt2 >= 'A' && charAt2 <= 'Z') {
                i2 = charAt2 - 'A';
            } else if (charAt2 >= 'a' && charAt2 <= 'z') {
                i2 = charAt2 - 'G';
            } else if (charAt2 >= '0' && charAt2 <= '9') {
                i2 = charAt2 + 4;
            } else if (charAt2 == '+' || charAt2 == '-') {
                i2 = 62;
            } else if (charAt2 == '/' || charAt2 == '_') {
                i2 = 63;
            } else {
                i3 = i3;
                i4 = i4;
                i5 = i5;
                if (charAt2 != '\n') {
                    i3 = i3;
                    i4 = i4;
                    i5 = i5;
                    if (charAt2 != '\r') {
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        if (charAt2 == ' ') {
                            continue;
                        } else if (charAt2 != '\t') {
                            return null;
                        } else {
                            i3 = i3;
                            i4 = i4;
                            i5 = i5;
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
            int i7 = (i4 << 6) | ((byte) i2);
            int i8 = i3 + 1;
            i3 = i8;
            i4 = i7;
            i5 = i5;
            if (i8 % 4 == 0) {
                int i9 = i5 + 1;
                bArr[i5] = (byte) (i7 >> 16);
                int i10 = i9 + 1;
                bArr[i9] = (byte) (i7 >> 8);
                bArr[i10] = (byte) i7;
                i5 = i10 + 1;
                i4 = i7;
                i3 = i8;
            }
        }
        int i11 = i3 % 4;
        if (i11 == 1) {
            return null;
        }
        if (i11 == 2) {
            bArr[i5] = (byte) ((i4 << 12) >> 16);
            i = i5 + 1;
        } else {
            i = i5;
            if (i11 == 3) {
                int i12 = i4 << 6;
                int i13 = i5 + 1;
                bArr[i5] = (byte) (i12 >> 16);
                i = i13 + 1;
                bArr[i13] = (byte) (i12 >> 8);
            }
        }
        if (i == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }
}
