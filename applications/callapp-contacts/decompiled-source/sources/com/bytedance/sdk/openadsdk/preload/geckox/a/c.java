package com.bytedance.sdk.openadsdk.preload.geckox.a;

import com.bytedance.sdk.openadsdk.preload.geckox.g.a;
import com.bytedance.sdk.openadsdk.preload.geckox.g.b;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.d;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.f;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.j;
import java.io.File;
import java.io.FileFilter;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/a/c.class */
public class c {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<java.io.File> a(java.io.File[] r5) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.preload.geckox.a.c.a(java.io.File[]):java.util.List");
    }

    private static void a(final File file) {
        f.a().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.a.c.3
            @Override // java.lang.Runnable
            public final void run() {
                d.a(file);
            }
        });
    }

    public static void a(final String str) {
        j.a().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.a.c.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    c.d(str);
                } catch (Throwable th) {
                    com.bytedance.sdk.openadsdk.preload.geckox.utils.c.a(new RuntimeException("delete old channel version failed，path：" + str, th));
                }
            }
        });
    }

    public static boolean b(String str) {
        try {
            a a2 = a.a(str + File.separator + "update.lock");
            if (a2 == null) {
                return true;
            }
            b a3 = b.a(str + File.separator + "select.lock");
            try {
                d.c(new File(str));
            } catch (Throwable th) {
            }
            a3.a();
            a2.a();
            return true;
        } catch (Throwable th2) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(String str) throws Exception {
        a a2 = a.a(str + File.separator + "update.lock");
        if (a2 != null) {
            try {
                b a3 = b.a(str + File.separator + "select.lock");
                List<File> e = e(str);
                if (e != null && !e.isEmpty()) {
                    for (File file : e) {
                        com.bytedance.sdk.openadsdk.preload.geckox.g.c.c(file.getAbsolutePath() + File.separator + "using.lock");
                    }
                    a3.a();
                    return;
                }
                a3.a();
            } finally {
                a2.a();
            }
        }
    }

    private static List<File> e(String str) {
        File[] listFiles = new File(str).listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.a.c.2
            @Override // java.io.FileFilter
            public final boolean accept(File file) {
                return file.isDirectory();
            }
        });
        if (listFiles == null || listFiles.length == 0 || listFiles.length == 1) {
            return null;
        }
        return a(listFiles);
    }
}
