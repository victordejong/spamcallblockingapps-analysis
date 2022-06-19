package com.google.android.gms.internal.ads;

import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxi.class */
public final class zzaxi {
    public static int zza(String str) {
        byte[] bArr;
        try {
            bArr = str.getBytes(StringConstant.UTF8);
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

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0143, code lost:
        if (true != r16) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0170, code lost:
        if (true != r16) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0173, code lost:
        r15 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0177, code lost:
        r13 = true;
        r18 = r15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] zzb(java.lang.String r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaxi.zzb(java.lang.String, boolean):java.lang.String[]");
    }
}
