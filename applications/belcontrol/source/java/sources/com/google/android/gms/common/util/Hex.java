package com.google.android.gms.common.util;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/Hex.class */
public class Hex {
    private static final char[] zza = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final char[] zzb = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    @RecentlyNonNull
    @KeepForSdk
    public static String bytesToStringLowercase(@RecentlyNonNull byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length + length];
        int i = 0;
        for (byte b : bArr) {
            int i2 = b & 255;
            int i3 = i + 1;
            char[] cArr2 = zzb;
            cArr[i] = cArr2[i2 >>> 4];
            i = i3 + 1;
            cArr[i3] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static String bytesToStringUppercase(@RecentlyNonNull byte[] bArr) {
        return bytesToStringUppercase(bArr, false);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static String bytesToStringUppercase(@RecentlyNonNull byte[] bArr, boolean z) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (int i = 0; i < length && (!z || i != length - 1 || (bArr[i] & 255) != 0); i++) {
            char[] cArr = zza;
            sb.append(cArr[(bArr[i] & 240) >>> 4]);
            sb.append(cArr[bArr[i] & 15]);
        }
        return sb.toString();
    }

    @RecentlyNonNull
    @KeepForSdk
    public static byte[] stringToBytes(@RecentlyNonNull String str) {
        int length = str.length();
        if (length % 2 == 0) {
            byte[] bArr = new byte[length / 2];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= length) {
                    return bArr;
                }
                int i3 = i2 + 2;
                bArr[i2 / 2] = (byte) Integer.parseInt(str.substring(i2, i3), 16);
                i = i3;
            }
        } else {
            throw new IllegalArgumentException("Hex string has odd number of characters");
        }
    }
}
