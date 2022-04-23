package com.callapp.contacts.util.callappRomHelper.romHelper.base;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/callappRomHelper/romHelper/base/SysUtils.class */
public class SysUtils {
    /* JADX WARN: Removed duplicated region for block: B:38:0x0086 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r4) {
        /*
            r0 = 0
            r5 = r0
            java.lang.Runtime r0 = java.lang.Runtime.getRuntime()     // Catch: all -> 0x0051, IOException -> 0x0055
            java.lang.String r1 = "getprop "
            r2 = r4
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: all -> 0x0051, IOException -> 0x0055
            java.lang.String r1 = r1.concat(r2)     // Catch: all -> 0x0051, IOException -> 0x0055
            java.lang.Process r0 = r0.exec(r1)     // Catch: all -> 0x0051, IOException -> 0x0055
            r6 = r0
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: all -> 0x0051, IOException -> 0x0055
            r7 = r0
            java.io.InputStreamReader r0 = new java.io.InputStreamReader     // Catch: all -> 0x0051, IOException -> 0x0055
            r8 = r0
            r0 = r8
            r1 = r6
            java.io.InputStream r1 = r1.getInputStream()     // Catch: all -> 0x0051, IOException -> 0x0055
            r0.<init>(r1)     // Catch: all -> 0x0051, IOException -> 0x0055
            r0 = r7
            r1 = r8
            r2 = 1024(0x400, float:1.435E-42)
            r0.<init>(r1, r2)     // Catch: all -> 0x0051, IOException -> 0x0055
            r0 = r7
            r5 = r0
            r0 = r7
            java.lang.String r0 = r0.readLine()     // Catch: IOException -> 0x004d, all -> 0x0081
            r6 = r0
            r0 = r7
            r5 = r0
            r0 = r7
            r0.close()     // Catch: IOException -> 0x004d, all -> 0x0081
            r0 = r7
            r0.close()     // Catch: IOException -> 0x0041
            goto L_0x004b
        L_0x0041:
            r4 = move-exception
            java.lang.String r0 = "SysUtils"
            java.lang.String r1 = "Exception while closing InputStream"
            r2 = r4
            int r0 = android.util.Log.e(r0, r1, r2)
        L_0x004b:
            r0 = r6
            return r0
        L_0x004d:
            r6 = move-exception
            goto L_0x0058
        L_0x0051:
            r4 = move-exception
            goto L_0x0082
        L_0x0055:
            r6 = move-exception
            r0 = 0
            r7 = r0
        L_0x0058:
            r0 = r7
            r5 = r0
            java.lang.String r0 = "SysUtils"
            java.lang.String r1 = "Unable to read sysprop "
            r2 = r4
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: all -> 0x0081
            java.lang.String r1 = r1.concat(r2)     // Catch: all -> 0x0081
            r2 = r6
            int r0 = android.util.Log.e(r0, r1, r2)     // Catch: all -> 0x0081
            r0 = r7
            if (r0 == 0) goto L_0x007f
            r0 = r7
            r0.close()     // Catch: IOException -> 0x0075
            goto L_0x007f
        L_0x0075:
            r4 = move-exception
            java.lang.String r0 = "SysUtils"
            java.lang.String r1 = "Exception while closing InputStream"
            r2 = r4
            int r0 = android.util.Log.e(r0, r1, r2)
        L_0x007f:
            r0 = 0
            return r0
        L_0x0081:
            r4 = move-exception
        L_0x0082:
            r0 = r5
            if (r0 == 0) goto L_0x0097
            r0 = r5
            r0.close()     // Catch: IOException -> 0x008d
            goto L_0x0097
        L_0x008d:
            r5 = move-exception
            java.lang.String r0 = "SysUtils"
            java.lang.String r1 = "Exception while closing InputStream"
            r2 = r5
            int r0 = android.util.Log.e(r0, r1, r2)
        L_0x0097:
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.callappRomHelper.romHelper.base.SysUtils.a(java.lang.String):java.lang.String");
    }
}
