package com.google.android.gms.common.util;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/MurmurHash3.class */
public class MurmurHash3 {
    private MurmurHash3() {
    }

    public static int murmurhash3_x86_32(byte[] bArr, int i, int i2, int i3) {
        int i4 = (i2 & (-4)) + i;
        while (i < i4) {
            int i5 = ((bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | (bArr[i + 3] << 24)) * (-862048943);
            int i6 = i3 ^ (((i5 << 15) | (i5 >>> 17)) * 461845907);
            i3 = (((i6 >>> 19) | (i6 << 13)) * 5) - 430675100;
            i += 4;
        }
        int i7 = i2 & 3;
        int i8 = 0;
        if (i7 != 1) {
            int i9 = 0;
            if (i7 != 2) {
                if (i7 == 3) {
                    i9 = (bArr[i4 + 2] & 255) << 16;
                }
                int i10 = i3 ^ i2;
                int i11 = (i10 ^ (i10 >>> 16)) * (-2048144789);
                int i12 = (i11 ^ (i11 >>> 13)) * (-1028477387);
                return i12 ^ (i12 >>> 16);
            }
            i8 = i9 | ((bArr[i4 + 1] & 255) << 8);
        }
        int i13 = ((bArr[i4] & 255) | i8) * (-862048943);
        i3 ^= ((i13 >>> 17) | (i13 << 15)) * 461845907;
        int i102 = i3 ^ i2;
        int i112 = (i102 ^ (i102 >>> 16)) * (-2048144789);
        int i122 = (i112 ^ (i112 >>> 13)) * (-1028477387);
        return i122 ^ (i122 >>> 16);
    }
}
