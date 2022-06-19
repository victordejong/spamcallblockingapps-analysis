package com.google.android.gms.common.util;

import androidx.annotation.RecentlyNonNull;
/* renamed from: com.google.android.gms.common.util.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/j.class */
public class C6232j {

    /* renamed from: a */
    private static final char[] f19715a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b */
    private static final char[] f19716b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    @RecentlyNonNull
    /* renamed from: a */
    public static String m16793a(@RecentlyNonNull byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length + length];
        int i = 0;
        for (byte b : bArr) {
            int i2 = b & 255;
            int i3 = i + 1;
            char[] cArr2 = f19716b;
            cArr[i] = cArr2[i2 >>> 4];
            i = i3 + 1;
            cArr[i3] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static String m16792b(@RecentlyNonNull byte[] bArr, boolean z) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (int i = 0; i < length && (!z || i != length - 1 || (bArr[i] & 255) != 0); i++) {
            char[] cArr = f19715a;
            sb.append(cArr[(bArr[i] & 240) >>> 4]);
            sb.append(cArr[bArr[i] & 15]);
        }
        return sb.toString();
    }

    @RecentlyNonNull
    /* renamed from: c */
    public static byte[] m16791c(@RecentlyNonNull String str) {
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
