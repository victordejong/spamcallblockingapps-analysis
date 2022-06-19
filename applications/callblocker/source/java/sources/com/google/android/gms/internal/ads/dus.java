package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.C2715l;
import java.io.UnsupportedEncodingException;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dus.class */
public final class dus {
    /* renamed from: a */
    public static int m8530a(String str) {
        byte[] bytes;
        try {
            bytes = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            bytes = str.getBytes();
        }
        return C2715l.m13843a(bytes, 0, bytes.length, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00d3, code lost:
        if (((r0 >= 65382 && r0 <= 65437) || (r0 >= 65441 && r0 <= 65500)) != false) goto L54;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0133  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] m8529a(java.lang.String r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dus.m8529a(java.lang.String, boolean):java.lang.String[]");
    }
}
