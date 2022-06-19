package com.bytedance.sdk.openadsdk.utils;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* renamed from: com.bytedance.sdk.openadsdk.utils.ai */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/ai.class */
public class C5448ai {
    /* renamed from: a */
    private static File m32201a(String str) {
        if (m32197b(str)) {
            return null;
        }
        return new File(str);
    }

    /* renamed from: a */
    public static List<File> m32203a(File file, File file2, String str) throws IOException {
        if (file == null || file2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(file);
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        try {
            if (m32197b(str)) {
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement = entries.nextElement();
                    String name = nextElement.getName();
                    if (name.contains("../")) {
                        C5478q.m32107d("ZipUtils", "entryName: " + name + " is dangerous!");
                    } else if (!m32202a(file2, arrayList, zipFile, nextElement, name)) {
                        return arrayList;
                    }
                }
            } else {
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement2 = entries.nextElement();
                    String name2 = nextElement2.getName();
                    if (name2.contains("../")) {
                        C5478q.m32107d("ZipUtils", "entryName: " + name2 + " is dangerous!");
                    } else if (name2.contains(str) && !m32202a(file2, arrayList, zipFile, nextElement2, name2)) {
                        return arrayList;
                    }
                }
            }
            return arrayList;
        } finally {
            zipFile.close();
        }
    }

    /* renamed from: a */
    public static List<File> m32200a(String str, String str2) throws IOException {
        return m32199a(str, str2, (String) null);
    }

    /* renamed from: a */
    public static List<File> m32199a(String str, String str2, String str3) throws IOException {
        return m32203a(m32201a(str), m32201a(str2), str3);
    }

    /* renamed from: a */
    private static boolean m32204a(File file) {
        if (file != null) {
            return file.exists() ? file.isDirectory() : file.mkdirs();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a9  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m32202a(java.io.File r5, java.util.List<java.io.File> r6, java.util.zip.ZipFile r7, java.util.zip.ZipEntry r8, java.lang.String r9) throws java.io.IOException {
        /*
            java.io.File r0 = new java.io.File
            r1 = r0
            r2 = r5
            r3 = r9
            r1.<init>(r2, r3)
            r5 = r0
            r0 = r6
            r1 = r5
            boolean r0 = r0.add(r1)
            r0 = r8
            boolean r0 = r0.isDirectory()
            if (r0 == 0) goto L1f
            r0 = r5
            boolean r0 = m32204a(r0)
            return r0
        L1f:
            r0 = r5
            boolean r0 = m32198b(r0)
            if (r0 != 0) goto L28
            r0 = 0
            return r0
        L28:
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L8e
            r9 = r0
            r0 = r9
            r1 = r5
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L8e
            java.io.BufferedInputStream r0 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L85 java.lang.Throwable -> L8e
            r5 = r0
            r0 = r5
            r1 = r7
            r2 = r8
            java.io.InputStream r1 = r1.getInputStream(r2)     // Catch: java.lang.Throwable -> L85
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L85
            java.io.BufferedOutputStream r0 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> L7e java.lang.Throwable -> L85
            r8 = r0
            r0 = r8
            r1 = r9
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L7e
            r0 = 8192(0x2000, float:1.14794E-41)
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L77
            r6 = r0
        L50:
            r0 = r5
            r1 = r6
            int r0 = r0.read(r1)     // Catch: java.lang.Throwable -> L77
            r10 = r0
            r0 = r10
            r1 = -1
            if (r0 == r1) goto L68
            r0 = r8
            r1 = r6
            r2 = 0
            r3 = r10
            r0.write(r1, r2, r3)     // Catch: java.lang.Throwable -> L77
            goto L50
        L68:
            r0 = r5
            r0.close()
            r0 = r8
            r0.close()
            r0 = r9
            r0.close()
            r0 = 1
            return r0
        L77:
            r6 = move-exception
            r0 = r9
            r7 = r0
            goto L95
        L7e:
            r6 = move-exception
            r0 = r9
            r7 = r0
            goto L93
        L85:
            r6 = move-exception
            r0 = 0
            r5 = r0
            r0 = r9
            r7 = r0
            goto L93
        L8e:
            r6 = move-exception
            r0 = 0
            r7 = r0
            r0 = r7
            r5 = r0
        L93:
            r0 = 0
            r8 = r0
        L95:
            r0 = r5
            if (r0 == 0) goto L9d
            r0 = r5
            r0.close()
        L9d:
            r0 = r8
            if (r0 == 0) goto La5
            r0 = r8
            r0.close()
        La5:
            r0 = r7
            if (r0 == 0) goto Lad
            r0 = r7
            r0.close()
        Lad:
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.C5448ai.m32202a(java.io.File, java.util.List, java.util.zip.ZipFile, java.util.zip.ZipEntry, java.lang.String):boolean");
    }

    /* renamed from: b */
    private static boolean m32198b(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            return file.isFile();
        }
        if (!m32204a(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: b */
    private static boolean m32197b(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }
}
