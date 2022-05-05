package com.criteo.publisher.p020a0;
/* renamed from: com.criteo.publisher.a0.u */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/a0/u.class */
public class C1933u {
    /* renamed from: a */
    public static boolean m35991a(String str) {
        boolean z = false;
        if (str != null) {
            z = false;
            if (str.length() > 6) {
                z = false;
                if (str.substring(0, 7).equalsIgnoreCase("http://")) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m35990b(String str) {
        boolean z = false;
        if (str != null) {
            z = false;
            if (str.length() > 7) {
                z = false;
                if (str.substring(0, 8).equalsIgnoreCase("https://")) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
        if (m35990b(r2) != false) goto L_0x0024;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m35989c(java.lang.String r2) {
        /*
            r0 = 0
            r3 = r0
            r0 = r3
            r4 = r0
            r0 = r2
            if (r0 == 0) goto L_0x0026
            r0 = r2
            int r0 = r0.length()
            if (r0 != 0) goto L_0x0014
            r0 = r3
            r4 = r0
            goto L_0x0026
        L_0x0014:
            r0 = r2
            boolean r0 = m35991a(r0)
            if (r0 != 0) goto L_0x0024
            r0 = r3
            r4 = r0
            r0 = r2
            boolean r0 = m35990b(r0)
            if (r0 == 0) goto L_0x0026
        L_0x0024:
            r0 = 1
            r4 = r0
        L_0x0026:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.p020a0.C1933u.m35989c(java.lang.String):boolean");
    }
}
