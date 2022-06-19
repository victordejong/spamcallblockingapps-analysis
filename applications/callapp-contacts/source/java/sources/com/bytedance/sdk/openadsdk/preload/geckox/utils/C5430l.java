package com.bytedance.sdk.openadsdk.preload.geckox.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.utils.l */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/utils/l.class */
public class C5430l {

    /* renamed from: a */
    private static byte[] f18961a = {80, 75, 3, 4};

    /* renamed from: b */
    private static byte[] f18962b = {80, 75, 5, 6};

    /* renamed from: a */
    public static void m32341a(InputStream inputStream, String str, String str2) throws Exception {
        ZipInputStream zipInputStream;
        Throwable th;
        FileOutputStream fileOutputStream;
        Throwable th2;
        try {
            String canonicalPath = new File(str).getCanonicalPath();
            ZipInputStream zipInputStream2 = new ZipInputStream(inputStream);
            boolean z = false;
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream2.getNextEntry();
                    if (nextEntry == null) {
                        if (z) {
                            C5417b.m32360a(zipInputStream2);
                            return;
                        }
                        inputStream.reset();
                        if (m32342a(inputStream)) {
                            throw new RuntimeException("unzip file: channel:".concat(String.valueOf(str2)));
                        }
                        throw new RuntimeException("not zip file  channel:".concat(String.valueOf(str2)));
                    }
                    String name = nextEntry.getName();
                    z = true;
                    if (!m32340a(name)) {
                        if (!name.startsWith(str2 + File.separator)) {
                            throw new RuntimeException("the zip package outermost folder is not named by channel channel:".concat(String.valueOf(str2)));
                        }
                        if (nextEntry.isDirectory()) {
                            File file = new File(canonicalPath, name);
                            if (!file.getCanonicalPath().startsWith(canonicalPath)) {
                                throw new RuntimeException("directory traversal, dir:" + name + ", channel:" + str2);
                            }
                            file.mkdirs();
                            z = true;
                        } else {
                            String canonicalPath2 = new File(canonicalPath, name).getCanonicalPath();
                            if (!canonicalPath2.startsWith(canonicalPath)) {
                                throw new RuntimeException("directory traversal, file name:".concat(String.valueOf(name)));
                            }
                            File file2 = new File(canonicalPath2);
                            file2.getParentFile().mkdirs();
                            try {
                                fileOutputStream = new FileOutputStream(file2);
                                try {
                                    C5419d.m32357a(zipInputStream2, fileOutputStream);
                                    C5417b.m32360a(fileOutputStream);
                                    z = true;
                                } catch (Throwable th3) {
                                    th2 = th3;
                                    C5417b.m32360a(fileOutputStream);
                                    throw th2;
                                }
                            } catch (Throwable th4) {
                                th2 = th4;
                                fileOutputStream = null;
                            }
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                    zipInputStream = zipInputStream2;
                    C5417b.m32360a(zipInputStream);
                    throw th;
                }
            }
        } catch (Throwable th6) {
            th = th6;
            zipInputStream = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
        if (java.util.Arrays.equals(com.bytedance.sdk.openadsdk.preload.geckox.utils.C5430l.f18962b, r0) != false) goto L10;
     */
    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m32342a(java.io.InputStream r5) throws java.lang.Exception {
        /*
            r0 = 4
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L37
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r5
            r1 = r6
            r2 = 0
            r3 = 4
            int r0 = r0.read(r1, r2, r3)     // Catch: java.lang.Throwable -> L37
            r1 = 4
            if (r0 != r1) goto L30
            byte[] r0 = com.bytedance.sdk.openadsdk.preload.geckox.utils.C5430l.f18961a     // Catch: java.lang.Throwable -> L37
            r1 = r6
            boolean r0 = java.util.Arrays.equals(r0, r1)     // Catch: java.lang.Throwable -> L37
            if (r0 != 0) goto L27
            byte[] r0 = com.bytedance.sdk.openadsdk.preload.geckox.utils.C5430l.f18962b     // Catch: java.lang.Throwable -> L37
            r1 = r6
            boolean r0 = java.util.Arrays.equals(r0, r1)     // Catch: java.lang.Throwable -> L37
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L29
        L27:
            r0 = 1
            r7 = r0
        L29:
            r0 = r5
            boolean r0 = com.bytedance.sdk.openadsdk.preload.geckox.utils.C5417b.m32360a(r0)
            r0 = r7
            return r0
        L30:
            r0 = r5
            boolean r0 = com.bytedance.sdk.openadsdk.preload.geckox.utils.C5417b.m32360a(r0)
            r0 = 0
            return r0
        L37:
            r6 = move-exception
            r0 = r5
            boolean r0 = com.bytedance.sdk.openadsdk.preload.geckox.utils.C5417b.m32360a(r0)
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.preload.geckox.utils.C5430l.m32342a(java.io.InputStream):boolean");
    }

    /* renamed from: a */
    private static boolean m32340a(String str) {
        return str.startsWith("__MACOSX/") || str.equals(".DS_Store");
    }
}
