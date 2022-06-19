package com.huawei.updatesdk.p097a.p098a.p103d;

import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
/* renamed from: com.huawei.updatesdk.a.a.d.d */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/a/d/d.class */
public abstract class AbstractC2519d {
    /* JADX WARN: Can't wrap try/catch for region: R(6:(3:81|5|6)|(5:83|7|(4:8|9|10|(3:12|13|14)(1:85))|15|(3:17|18|19))|76|20|65|66) */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0133, code lost:
        com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a.m36847b("FileUtil", "Close FileInputStream failed!");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v58 */
    /* JADX WARN: Type inference failed for: r0v59 */
    /* JADX WARN: Type inference failed for: r0v77 */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.io.FileInputStream] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m36836a(java.lang.String r5, java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.updatesdk.p097a.p098a.p103d.AbstractC2519d.m36836a(java.lang.String, java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public static void m36838a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                C2515a.m36848a("FileUtil", "Closeable exception", e);
            }
        }
    }

    /* renamed from: a */
    public static boolean m36837a(File file) {
        if (file == null || !file.exists()) {
            return true;
        }
        if (file.isFile()) {
            return file.delete();
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null && listFiles.length > 0) {
            for (File file2 : listFiles) {
                m36837a(file2);
            }
        }
        return file.delete();
    }
}
