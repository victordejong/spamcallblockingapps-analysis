package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efm.class */
public final class efm {
    public static int a(String str) {
        byte[] bArr;
        try {
            bArr = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            bArr = str.getBytes();
        }
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        int i3 = (length & (-4)) + 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5 += 4) {
            int i6 = ((bArr[i5] & 255) | ((bArr[i5 + 1] & 255) << 8) | ((bArr[i5 + 2] & 255) << 16) | (bArr[i5 + 3] << 24)) * (-862048943);
            int i7 = i4 ^ (((i6 << 15) | (i6 >>> 17)) * 461845907);
            i4 = (((i7 >>> 19) | (i7 << 13)) * 5) - 430675100;
        }
        int i8 = length & 3;
        if (i8 != 1) {
            if (i8 != 2) {
                if (i8 == 3) {
                    i2 = (bArr[i3 + 2] & 255) << 16;
                }
                int i9 = i4 ^ length;
                int i10 = (i9 ^ (i9 >>> 16)) * (-2048144789);
                int i11 = (i10 ^ (i10 >>> 13)) * (-1028477387);
                return i11 ^ (i11 >>> 16);
            }
            i = i2 | ((bArr[i3 + 1] & 255) << 8);
        }
        int i12 = ((bArr[i3] & 255) | i) * (-862048943);
        i4 ^= ((i12 >>> 17) | (i12 << 15)) * 461845907;
        int i92 = i4 ^ length;
        int i102 = (i92 ^ (i92 >>> 16)) * (-2048144789);
        int i112 = (i102 ^ (i102 >>> 13)) * (-1028477387);
        return i112 ^ (i112 >>> 16);
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e0, code lost:
        if (((r0 >= 65382 && r0 <= 65437) || (r0 >= 65441 && r0 <= 65500)) != false) goto L_0x00e3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x015f, code lost:
        if (r14 == false) goto L_0x018e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x018b, code lost:
        if (r14 == false) goto L_0x018e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x018e, code lost:
        r15 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0192, code lost:
        r18 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0125  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] a(java.lang.String r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.efm.a(java.lang.String, boolean):java.lang.String[]");
    }
}
