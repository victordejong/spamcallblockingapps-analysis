package p000a;

import java.io.UnsupportedEncodingException;
/* renamed from: a.b */
/* loaded from: classes-dex2jar.jar:a/b.class */
final class C0004b {

    /* renamed from: a */
    private static final byte[] f10a = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: b */
    private static final byte[] f11b = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    /* renamed from: a */
    public static String m22575a(byte[] bArr) {
        return m22574a(bArr, f10a);
    }

    /* renamed from: a */
    private static String m22574a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i2 + 1;
            bArr3[i2] = bArr2[(bArr[i] & 255) >> 2];
            int i4 = i3 + 1;
            bArr3[i3] = bArr2[((bArr[i] & 3) << 4) | ((bArr[i + 1] & 255) >> 4)];
            int i5 = i4 + 1;
            bArr3[i4] = bArr2[((bArr[i + 1] & 15) << 2) | ((bArr[i + 2] & 255) >> 6)];
            bArr3[i5] = bArr2[bArr[i + 2] & 63];
            i += 3;
            i2 = i5 + 1;
        }
        switch (bArr.length % 3) {
            case 1:
                int i6 = i2 + 1;
                bArr3[i2] = bArr2[(bArr[length] & 255) >> 2];
                int i7 = i6 + 1;
                bArr3[i6] = bArr2[(bArr[length] & 3) << 4];
                bArr3[i7] = (byte) 61;
                bArr3[i7 + 1] = (byte) 61;
                break;
            case 2:
                int i8 = i2 + 1;
                bArr3[i2] = bArr2[(bArr[length] & 255) >> 2];
                int i9 = i8 + 1;
                bArr3[i8] = bArr2[((bArr[length] & 3) << 4) | ((bArr[length + 1] & 255) >> 4)];
                bArr3[i9] = bArr2[(bArr[length + 1] & 15) << 2];
                bArr3[i9 + 1] = (byte) 61;
                break;
        }
        try {
            return new String(bArr3, "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }
}
