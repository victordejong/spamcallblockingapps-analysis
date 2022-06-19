package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.MurmurHash3;
import java.io.UnsupportedEncodingException;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazf.class */
public final class zzazf {
    public static int zza(String str) {
        byte[] bArr;
        try {
            bArr = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            bArr = str.getBytes();
        }
        return MurmurHash3.murmurhash3_x86_32(bArr, 0, bArr.length, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0139, code lost:
        if (true != r14) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0166, code lost:
        if (true != r14) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0169, code lost:
        r15 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x016d, code lost:
        r16 = true;
        r18 = r15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] zzb(java.lang.String r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzazf.zzb(java.lang.String, boolean):java.lang.String[]");
    }
}
