package com.inmobi.commons.core.utilities;

import java.io.File;
/* renamed from: com.inmobi.commons.core.utilities.c */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/c.class */
public class C8406c {

    /* renamed from: a */
    public static final String f32688a = "c";

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m5651a(java.lang.String r3) {
        /*
            r0 = 0
            r4 = r0
            java.io.File r0 = new java.io.File     // Catch: Exception -> 0x0024
            r6 = r0
            r0 = r6
            r1 = r3
            android.net.Uri r1 = android.net.Uri.parse(r1)     // Catch: Exception -> 0x0024
            java.lang.String r1 = r1.getPath()     // Catch: Exception -> 0x0024
            r0.<init>(r1)     // Catch: Exception -> 0x0024
            r0 = r4
            r7 = r0
            r0 = r6
            boolean r0 = r0.exists()     // Catch: Exception -> 0x0024
            if (r0 == 0) goto L_0x0021
            r0 = r6
            long r0 = r0.length()     // Catch: Exception -> 0x0024
            r7 = r0
        L_0x0021:
            r0 = r7
            return r0
        L_0x0024:
            r3 = move-exception
            r0 = r4
            r7 = r0
            goto L_0x0021
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.core.utilities.C8406c.m5651a(java.lang.String):long");
    }

    /* renamed from: a */
    public static void m5652a(File file) {
        try {
            if (file.exists()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    for (File file2 : listFiles) {
                        if (file2.isDirectory()) {
                            m5652a(file2);
                        } else {
                            file2.delete();
                        }
                    }
                }
                file.delete();
            }
        } catch (Exception e) {
            new StringBuilder("SDK encountered unexpected error in deleting directory; ").append(e.getMessage());
        }
    }
}
