package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.hash.Murmur3_32HashFunction;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/MurmurHash3.class */
public class MurmurHash3 {
    @KeepForSdk
    /* renamed from: a */
    public static int m17068a(byte[] bArr, int i, int i2, int i3) {
        int i4 = (i2 & (-4)) + i;
        while (i < i4) {
            int i5 = ((bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | (bArr[i + 3] << 24)) * Murmur3_32HashFunction.f30839C1;
            int i6 = i3 ^ (((i5 << 15) | (i5 >>> 17)) * Murmur3_32HashFunction.f30840C2);
            i3 = (((i6 >>> 19) | (i6 << 13)) * 5) - 430675100;
            i += 4;
        }
        int i7 = 0;
        int i8 = 0;
        int i9 = i2 & 3;
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 == 3) {
                    i8 = (bArr[i4 + 2] & 255) << 16;
                }
                int i10 = i3 ^ i2;
                int i11 = (i10 ^ (i10 >>> 16)) * (-2048144789);
                int i12 = (i11 ^ (i11 >>> 13)) * (-1028477387);
                return i12 ^ (i12 >>> 16);
            }
            i7 = i8 | ((bArr[i4 + 1] & 255) << 8);
        }
        int i13 = ((bArr[i4] & 255) | i7) * Murmur3_32HashFunction.f30839C1;
        i3 ^= ((i13 >>> 17) | (i13 << 15)) * Murmur3_32HashFunction.f30840C2;
        int i102 = i3 ^ i2;
        int i112 = (i102 ^ (i102 >>> 16)) * (-2048144789);
        int i122 = (i112 ^ (i112 >>> 13)) * (-1028477387);
        return i122 ^ (i122 >>> 16);
    }
}
