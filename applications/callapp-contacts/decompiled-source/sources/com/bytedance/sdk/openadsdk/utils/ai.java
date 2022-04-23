package com.bytedance.sdk.openadsdk.utils;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/ai.class */
public class ai {
    private static File a(String str) {
        if (b(str)) {
            return null;
        }
        return new File(str);
    }

    public static List<File> a(File file, File file2, String str) throws IOException {
        if (file == null || file2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(file);
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        try {
            if (b(str)) {
                while (entries.hasMoreElements()) {
                    ZipEntry zipEntry = (ZipEntry) entries.nextElement();
                    String name = zipEntry.getName();
                    if (name.contains("../")) {
                        q.d("ZipUtils", "entryName: " + name + " is dangerous!");
                    } else if (!a(file2, arrayList, zipFile, zipEntry, name)) {
                        return arrayList;
                    }
                }
            } else {
                while (entries.hasMoreElements()) {
                    ZipEntry zipEntry2 = (ZipEntry) entries.nextElement();
                    String name2 = zipEntry2.getName();
                    if (name2.contains("../")) {
                        q.d("ZipUtils", "entryName: " + name2 + " is dangerous!");
                    } else if (name2.contains(str) && !a(file2, arrayList, zipFile, zipEntry2, name2)) {
                        return arrayList;
                    }
                }
            }
            return arrayList;
        } finally {
            zipFile.close();
        }
    }

    public static List<File> a(String str, String str2) throws IOException {
        return a(str, str2, (String) null);
    }

    public static List<File> a(String str, String str2, String str3) throws IOException {
        return a(a(str), a(str2), str3);
    }

    private static boolean a(File file) {
        if (file != null) {
            return file.exists() ? file.isDirectory() : file.mkdirs();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(java.io.File r5, java.util.List<java.io.File> r6, java.util.zip.ZipFile r7, java.util.zip.ZipEntry r8, java.lang.String r9) throws java.io.IOException {
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
            if (r0 == 0) goto L_0x001f
            r0 = r5
            boolean r0 = a(r0)
            return r0
        L_0x001f:
            r0 = r5
            boolean r0 = b(r0)
            if (r0 != 0) goto L_0x0028
            r0 = 0
            return r0
        L_0x0028:
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: all -> 0x008e
            r9 = r0
            r0 = r9
            r1 = r5
            r0.<init>(r1)     // Catch: all -> 0x008e
            java.io.BufferedInputStream r0 = new java.io.BufferedInputStream     // Catch: all -> 0x0085, all -> 0x008e
            r5 = r0
            r0 = r5
            r1 = r7
            r2 = r8
            java.io.InputStream r1 = r1.getInputStream(r2)     // Catch: all -> 0x0085
            r0.<init>(r1)     // Catch: all -> 0x0085
            java.io.BufferedOutputStream r0 = new java.io.BufferedOutputStream     // Catch: all -> 0x007e, all -> 0x0085
            r8 = r0
            r0 = r8
            r1 = r9
            r0.<init>(r1)     // Catch: all -> 0x007e
            r0 = 8192(0x2000, float:1.14794E-41)
            byte[] r0 = new byte[r0]     // Catch: all -> 0x0077
            r6 = r0
        L_0x0050:
            r0 = r5
            r1 = r6
            int r0 = r0.read(r1)     // Catch: all -> 0x0077
            r10 = r0
            r0 = r10
            r1 = -1
            if (r0 == r1) goto L_0x0068
            r0 = r8
            r1 = r6
            r2 = 0
            r3 = r10
            r0.write(r1, r2, r3)     // Catch: all -> 0x0077
            goto L_0x0050
        L_0x0068:
            r0 = r5
            r0.close()
            r0 = r8
            r0.close()
            r0 = r9
            r0.close()
            r0 = 1
            return r0
        L_0x0077:
            r6 = move-exception
            r0 = r9
            r7 = r0
            goto L_0x0095
        L_0x007e:
            r6 = move-exception
            r0 = r9
            r7 = r0
            goto L_0x0093
        L_0x0085:
            r6 = move-exception
            r0 = 0
            r5 = r0
            r0 = r9
            r7 = r0
            goto L_0x0093
        L_0x008e:
            r6 = move-exception
            r0 = 0
            r7 = r0
            r0 = r7
            r5 = r0
        L_0x0093:
            r0 = 0
            r8 = r0
        L_0x0095:
            r0 = r5
            if (r0 == 0) goto L_0x009d
            r0 = r5
            r0.close()
        L_0x009d:
            r0 = r8
            if (r0 == 0) goto L_0x00a5
            r0 = r8
            r0.close()
        L_0x00a5:
            r0 = r7
            if (r0 == 0) goto L_0x00ad
            r0 = r7
            r0.close()
        L_0x00ad:
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.ai.a(java.io.File, java.util.List, java.util.zip.ZipFile, java.util.zip.ZipEntry, java.lang.String):boolean");
    }

    private static boolean b(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            return file.isFile();
        }
        if (!a(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (Throwable th) {
            return false;
        }
    }

    private static boolean b(String str) {
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
