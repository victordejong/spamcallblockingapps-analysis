package com.google.android.gms.internal.ads;

import com.android.volley.Request;
import com.google.android.gms.common.util.MurmurHash3;
import java.io.UnsupportedEncodingException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzru.class */
public final class zzru {
    /* renamed from: a */
    public static int m11488a(String str) {
        byte[] bArr;
        try {
            bArr = str.getBytes(Request.DEFAULT_PARAMS_ENCODING);
        } catch (UnsupportedEncodingException e) {
            bArr = str.getBytes();
        }
        return MurmurHash3.m17068a(bArr, 0, bArr.length, 0);
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
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] m11487a(java.lang.String r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzru.m11487a(java.lang.String, boolean):java.lang.String[]");
    }
}
