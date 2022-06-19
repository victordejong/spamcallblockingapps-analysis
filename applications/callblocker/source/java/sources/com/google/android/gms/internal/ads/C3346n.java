package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* renamed from: com.google.android.gms.internal.ads.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/n.class */
final class C3346n extends AbstractC3211i {
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005f, code lost:
        if (r8 != r4.length()) goto L25;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String m7436a(java.lang.String r4) {
        /*
            r0 = r4
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto Lb
            r0 = r4
            r5 = r0
        L9:
            r0 = r5
            return r0
        Lb:
            r0 = 0
            r6 = r0
            r0 = r4
            int r0 = r0.length()
            r7 = r0
        L12:
            r0 = r7
            r8 = r0
            r0 = r6
            r1 = r4
            int r1 = r1.length()
            if (r0 >= r1) goto L30
            r0 = r7
            r8 = r0
            r0 = r4
            r1 = r6
            char r0 = r0.charAt(r1)
            r1 = 44
            if (r0 != r1) goto L30
            int r6 = r6 + 1
            goto L12
        L30:
            r0 = r8
            if (r0 <= 0) goto L48
            r0 = r4
            r1 = r8
            r2 = 1
            int r1 = r1 - r2
            char r0 = r0.charAt(r1)
            r1 = 44
            if (r0 != r1) goto L48
            int r8 = r8 + (-1)
            goto L30
        L48:
            r0 = r8
            r1 = r6
            if (r0 >= r1) goto L53
            r0 = 0
            r5 = r0
            goto L9
        L53:
            r0 = r6
            if (r0 != 0) goto L62
            r0 = r4
            r5 = r0
            r0 = r8
            r1 = r4
            int r1 = r1.length()
            if (r0 == r1) goto L9
        L62:
            r0 = r4
            r1 = r6
            r2 = r8
            java.lang.String r0 = r0.substring(r1, r2)
            r5 = r0
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3346n.m7436a(java.lang.String):java.lang.String");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3211i
    /* renamed from: a */
    public final String mo7435a(String str, String str2) {
        String m7436a = m7436a(str);
        String m7436a2 = m7436a(str2);
        if (TextUtils.isEmpty(m7436a)) {
            m7436a = m7436a2;
        } else if (!TextUtils.isEmpty(m7436a2)) {
            m7436a = new StringBuilder(String.valueOf(m7436a).length() + 1 + String.valueOf(m7436a2).length()).append(m7436a).append(",").append(m7436a2).toString();
        }
        return m7436a;
    }
}
