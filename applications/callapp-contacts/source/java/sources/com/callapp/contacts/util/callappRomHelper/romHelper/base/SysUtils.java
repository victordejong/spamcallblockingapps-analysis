package com.callapp.contacts.util.callappRomHelper.romHelper.base;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/callappRomHelper/romHelper/base/SysUtils.class */
public class SysUtils {
    /* JADX WARN: Removed duplicated region for block: B:38:0x0086 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m27144a(java.lang.String r4) {
        /*
            r0 = 0
            r5 = r0
            java.lang.Runtime r0 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L55
            java.lang.String r1 = "getprop "
            r2 = r4
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L55
            java.lang.String r1 = r1.concat(r2)     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L55
            java.lang.Process r0 = r0.exec(r1)     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L55
            r6 = r0
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L55
            r7 = r0
            java.io.InputStreamReader r0 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L55
            r8 = r0
            r0 = r8
            r1 = r6
            java.io.InputStream r1 = r1.getInputStream()     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L55
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L55
            r0 = r7
            r1 = r8
            r2 = 1024(0x400, float:1.435E-42)
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L55
            r0 = r7
            r5 = r0
            r0 = r7
            java.lang.String r0 = r0.readLine()     // Catch: java.io.IOException -> L4d java.lang.Throwable -> L81
            r6 = r0
            r0 = r7
            r5 = r0
            r0 = r7
            r0.close()     // Catch: java.io.IOException -> L4d java.lang.Throwable -> L81
            r0 = r7
            r0.close()     // Catch: java.io.IOException -> L41
            goto L4b
        L41:
            r4 = move-exception
            java.lang.String r0 = "SysUtils"
            java.lang.String r1 = "Exception while closing InputStream"
            r2 = r4
            int r0 = android.util.Log.e(r0, r1, r2)
        L4b:
            r0 = r6
            return r0
        L4d:
            r6 = move-exception
            goto L58
        L51:
            r4 = move-exception
            goto L82
        L55:
            r6 = move-exception
            r0 = 0
            r7 = r0
        L58:
            r0 = r7
            r5 = r0
            java.lang.String r0 = "SysUtils"
            java.lang.String r1 = "Unable to read sysprop "
            r2 = r4
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: java.lang.Throwable -> L81
            java.lang.String r1 = r1.concat(r2)     // Catch: java.lang.Throwable -> L81
            r2 = r6
            int r0 = android.util.Log.e(r0, r1, r2)     // Catch: java.lang.Throwable -> L81
            r0 = r7
            if (r0 == 0) goto L7f
            r0 = r7
            r0.close()     // Catch: java.io.IOException -> L75
            goto L7f
        L75:
            r4 = move-exception
            java.lang.String r0 = "SysUtils"
            java.lang.String r1 = "Exception while closing InputStream"
            r2 = r4
            int r0 = android.util.Log.e(r0, r1, r2)
        L7f:
            r0 = 0
            return r0
        L81:
            r4 = move-exception
        L82:
            r0 = r5
            if (r0 == 0) goto L97
            r0 = r5
            r0.close()     // Catch: java.io.IOException -> L8d
            goto L97
        L8d:
            r5 = move-exception
            java.lang.String r0 = "SysUtils"
            java.lang.String r1 = "Exception while closing InputStream"
            r2 = r5
            int r0 = android.util.Log.e(r0, r1, r2)
        L97:
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.callappRomHelper.romHelper.base.SysUtils.m27144a(java.lang.String):java.lang.String");
    }
}
