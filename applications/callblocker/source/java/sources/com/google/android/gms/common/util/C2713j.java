package com.google.android.gms.common.util;
/* renamed from: com.google.android.gms.common.util.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/j.class */
public class C2713j {

    /* renamed from: a */
    private static final char[] f7525a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b */
    private static final char[] f7526b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: a */
    public static String m13850a(byte[] bArr) {
        char[] cArr = new char[bArr.length << 1];
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < bArr.length) {
                int i4 = bArr[i] & 255;
                int i5 = i3 + 1;
                cArr[i3] = f7526b[i4 >>> 4];
                cArr[i5] = f7526b[i4 & 15];
                i++;
                i2 = i5 + 1;
            } else {
                return new String(cArr);
            }
        }
    }

    /* renamed from: a */
    public static String m13849a(byte[] bArr, boolean z) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length << 1);
        for (int i = 0; i < length && (!z || i != length - 1 || (bArr[i] & 255) != 0); i++) {
            sb.append(f7525a[(bArr[i] & 240) >>> 4]);
            sb.append(f7525a[bArr[i] & 15]);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static byte[] m13851a(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("Hex string has odd number of characters");
        }
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) Integer.parseInt(str.substring(i, i + 2), 16);
        }
        return bArr;
    }
}
