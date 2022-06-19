package com.google.android.gms.common.util;
/* renamed from: com.google.android.gms.common.util.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/l.class */
public class C2715l {
    /* renamed from: a */
    public static int m13843a(byte[] bArr, int i, int i2, int i3) {
        int i4 = i + (i2 & (-4));
        int i5 = i3;
        for (int i6 = i; i6 < i4; i6 += 4) {
            int i7 = ((bArr[i6] & 255) | ((bArr[i6 + 1] & 255) << 8) | ((bArr[i6 + 2] & 255) << 16) | (bArr[i6 + 3] << 24)) * (-862048943);
            int i8 = (((i7 >>> 17) | (i7 << 15)) * 461845907) ^ i5;
            i5 = (-430675100) + (((i8 >>> 19) | (i8 << 13)) * 5);
        }
        int i9 = 0;
        int i10 = 0;
        switch (i2 & 3) {
            case 3:
                i10 = (bArr[i4 + 2] & 255) << 16;
            case 2:
                i9 = i10 | ((bArr[i4 + 1] & 255) << 8);
            case 1:
                int i11 = (i9 | (bArr[i4] & 255)) * (-862048943);
                i5 = (((i11 >>> 17) | (i11 << 15)) * 461845907) ^ i5;
                break;
        }
        int i12 = i5 ^ i2;
        int i13 = (i12 ^ (i12 >>> 16)) * (-2048144789);
        int i14 = (i13 ^ (i13 >>> 13)) * (-1028477387);
        return i14 ^ (i14 >>> 16);
    }
}
