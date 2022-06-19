package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efm.class */
public final class efm {
    /* renamed from: a */
    public static int m15092a(String str) {
        byte[] bArr;
        try {
            bArr = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            bArr = str.getBytes();
        }
        int length = bArr.length;
        int i = (length & (-4)) + 0;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3 += 4) {
            int i4 = ((bArr[i3] & 255) | ((bArr[i3 + 1] & 255) << 8) | ((bArr[i3 + 2] & 255) << 16) | (bArr[i3 + 3] << 24)) * (-862048943);
            int i5 = i2 ^ (((i4 << 15) | (i4 >>> 17)) * 461845907);
            i2 = (((i5 >>> 19) | (i5 << 13)) * 5) - 430675100;
        }
        int i6 = length & 3;
        int i7 = 0;
        if (i6 != 1) {
            int i8 = 0;
            if (i6 != 2) {
                if (i6 == 3) {
                    i8 = (bArr[i + 2] & 255) << 16;
                }
                int i9 = i2 ^ length;
                int i10 = (i9 ^ (i9 >>> 16)) * (-2048144789);
                int i11 = (i10 ^ (i10 >>> 13)) * (-1028477387);
                return i11 ^ (i11 >>> 16);
            }
            i7 = i8 | ((bArr[i + 1] & 255) << 8);
        }
        int i12 = ((bArr[i] & 255) | i7) * (-862048943);
        i2 ^= ((i12 >>> 17) | (i12 << 15)) * 461845907;
        int i92 = i2 ^ length;
        int i102 = (i92 ^ (i92 >>> 16)) * (-2048144789);
        int i112 = (i102 ^ (i102 >>> 13)) * (-1028477387);
        return i112 ^ (i112 >>> 16);
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e0, code lost:
        if (((r0 >= 65382 && r0 <= 65437) || (r0 >= 65441 && r0 <= 65500)) != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x015f, code lost:
        if (r14 == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x018b, code lost:
        if (r14 == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x018e, code lost:
        r15 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0192, code lost:
        r18 = true;
        r16 = r15;
     */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0125  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] m15091a(java.lang.String r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.efm.m15091a(java.lang.String, boolean):java.lang.String[]");
    }
}
