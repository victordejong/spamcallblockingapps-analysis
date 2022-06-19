package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.MurmurHash3;
import com.pubmatic.sdk.common.POBCommonConstants;
import java.io.UnsupportedEncodingException;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrz.class */
public final class zzrz {
    public static int zzbr(String str) {
        byte[] bArr;
        try {
            bArr = str.getBytes(POBCommonConstants.URL_ENCODING);
        } catch (UnsupportedEncodingException e) {
            bArr = str.getBytes();
        }
        return MurmurHash3.murmurhash3_x86_32(bArr, 0, bArr.length, 0);
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] zze(java.lang.String r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrz.zze(java.lang.String, boolean):java.lang.String[]");
    }
}
