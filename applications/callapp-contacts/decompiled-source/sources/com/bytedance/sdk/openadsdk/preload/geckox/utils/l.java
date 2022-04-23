package com.bytedance.sdk.openadsdk.preload.geckox.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/utils/l.class */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private static byte[] f10262a = {80, 75, 3, 4};

    /* renamed from: b  reason: collision with root package name */
    private static byte[] f10263b = {80, 75, 5, 6};

    public static void a(InputStream inputStream, String str, String str2) throws Exception {
        Throwable th;
        Throwable th2;
        ZipInputStream zipInputStream = null;
        FileOutputStream fileOutputStream = null;
        try {
            String canonicalPath = new File(str).getCanonicalPath();
            ZipInputStream zipInputStream2 = new ZipInputStream(inputStream);
            boolean z = false;
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream2.getNextEntry();
                    if (nextEntry != null) {
                        String name = nextEntry.getName();
                        z = true;
                        if (!a(name)) {
                            if (!name.startsWith(str2 + File.separator)) {
                                throw new RuntimeException("the zip package outermost folder is not named by channel channel:".concat(String.valueOf(str2)));
                            } else if (nextEntry.isDirectory()) {
                                File file = new File(canonicalPath, name);
                                if (file.getCanonicalPath().startsWith(canonicalPath)) {
                                    file.mkdirs();
                                    z = true;
                                } else {
                                    throw new RuntimeException("directory traversal, dir:" + name + ", channel:" + str2);
                                }
                            } else {
                                String canonicalPath2 = new File(canonicalPath, name).getCanonicalPath();
                                if (canonicalPath2.startsWith(canonicalPath)) {
                                    File file2 = new File(canonicalPath2);
                                    file2.getParentFile().mkdirs();
                                    try {
                                        fileOutputStream = new FileOutputStream(file2);
                                        try {
                                            d.a(zipInputStream2, fileOutputStream);
                                            b.a(fileOutputStream);
                                            z = true;
                                        } catch (Throwable th3) {
                                            th2 = th3;
                                            b.a(fileOutputStream);
                                            throw th2;
                                        }
                                    } catch (Throwable th4) {
                                        th2 = th4;
                                    }
                                } else {
                                    throw new RuntimeException("directory traversal, file name:".concat(String.valueOf(name)));
                                }
                            }
                        }
                    } else if (!z) {
                        inputStream.reset();
                        if (!a(inputStream)) {
                            throw new RuntimeException("not zip file  channel:".concat(String.valueOf(str2)));
                        }
                        throw new RuntimeException("unzip file: channel:".concat(String.valueOf(str2)));
                    } else {
                        b.a(zipInputStream2);
                        return;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    zipInputStream = zipInputStream2;
                    b.a(zipInputStream);
                    throw th;
                }
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
        if (java.util.Arrays.equals(com.bytedance.sdk.openadsdk.preload.geckox.utils.l.f10263b, r0) != false) goto L_0x0027;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(java.io.InputStream r5) throws java.lang.Exception {
        /*
            r0 = 4
            byte[] r0 = new byte[r0]     // Catch: all -> 0x0037
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r5
            r1 = r6
            r2 = 0
            r3 = 4
            int r0 = r0.read(r1, r2, r3)     // Catch: all -> 0x0037
            r1 = 4
            if (r0 != r1) goto L_0x0030
            byte[] r0 = com.bytedance.sdk.openadsdk.preload.geckox.utils.l.f10262a     // Catch: all -> 0x0037
            r1 = r6
            boolean r0 = java.util.Arrays.equals(r0, r1)     // Catch: all -> 0x0037
            if (r0 != 0) goto L_0x0027
            byte[] r0 = com.bytedance.sdk.openadsdk.preload.geckox.utils.l.f10263b     // Catch: all -> 0x0037
            r1 = r6
            boolean r0 = java.util.Arrays.equals(r0, r1)     // Catch: all -> 0x0037
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0029
        L_0x0027:
            r0 = 1
            r7 = r0
        L_0x0029:
            r0 = r5
            boolean r0 = com.bytedance.sdk.openadsdk.preload.geckox.utils.b.a(r0)
            r0 = r7
            return r0
        L_0x0030:
            r0 = r5
            boolean r0 = com.bytedance.sdk.openadsdk.preload.geckox.utils.b.a(r0)
            r0 = 0
            return r0
        L_0x0037:
            r6 = move-exception
            r0 = r5
            boolean r0 = com.bytedance.sdk.openadsdk.preload.geckox.utils.b.a(r0)
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.preload.geckox.utils.l.a(java.io.InputStream):boolean");
    }

    private static boolean a(String str) {
        return str.startsWith("__MACOSX/") || str.equals(".DS_Store");
    }
}
