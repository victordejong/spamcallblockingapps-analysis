package com.pgl.a.b;

import android.content.Context;
import android.os.Build;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes4-dex2jar.jar:com/pgl/a/b/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static List<String> f34944a = new ArrayList();

    /* JADX WARN: Finally extract failed */
    private static String a(Context context, String str, File file) {
        ZipFile zipFile;
        FileOutputStream fileOutputStream;
        InputStream inputStream;
        Throwable th;
        try {
            zipFile = new ZipFile(new File(context.getApplicationInfo().sourceDir), 1);
            try {
                ZipEntry entry = zipFile.getEntry("lib/" + Build.CPU_ABI + "/" + System.mapLibraryName(str));
                ZipEntry zipEntry = entry;
                if (entry == null) {
                    int indexOf = Build.CPU_ABI.indexOf(45);
                    StringBuilder sb = new StringBuilder("lib/");
                    String str2 = Build.CPU_ABI;
                    if (indexOf <= 0) {
                        indexOf = Build.CPU_ABI.length();
                    }
                    sb.append(str2.substring(0, indexOf));
                    sb.append("/");
                    sb.append(System.mapLibraryName(str));
                    String sb2 = sb.toString();
                    ZipEntry entry2 = zipFile.getEntry(sb2);
                    zipEntry = entry2;
                    if (entry2 == null) {
                        String concat = "Library entry not found:".concat(String.valueOf(sb2));
                        b.a((Closeable) null);
                        b.a((Closeable) null);
                        b.a(zipFile);
                        return concat;
                    }
                }
                file.createNewFile();
                inputStream = zipFile.getInputStream(zipEntry);
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    try {
                        byte[] bArr = new byte[16384];
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read > 0) {
                                fileOutputStream2.write(bArr, 0, read);
                            } else {
                                c.a("android.os.FileUtils", file.getAbsolutePath(), 493, -1, -1);
                                b.a(fileOutputStream2);
                                b.a(inputStream);
                                b.a(zipFile);
                                return null;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream2;
                        try {
                            String message = th.getMessage();
                            b.a(fileOutputStream);
                            b.a(inputStream);
                            b.a(zipFile);
                            return message;
                        } catch (Throwable th3) {
                            b.a(fileOutputStream);
                            b.a(inputStream);
                            b.a(zipFile);
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    fileOutputStream = null;
                }
            } catch (Throwable th5) {
                th = th5;
                inputStream = null;
                fileOutputStream = null;
            }
        } catch (Throwable th6) {
            th = th6;
            inputStream = null;
            zipFile = null;
            fileOutputStream = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0083 A[Catch: all -> 0x00d6, TRY_ENTER, TryCatch #1 {all -> 0x00d6, blocks: (B:4:0x0003, B:13:0x002e, B:16:0x003b, B:19:0x0045, B:21:0x0058, B:23:0x0060, B:28:0x0083, B:32:0x009a, B:34:0x00a2, B:36:0x00a9, B:9:0x0016), top: B:51:0x0003, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0095 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009a A[Catch: all -> 0x00d6, TRY_ENTER, TryCatch #1 {all -> 0x00d6, blocks: (B:4:0x0003, B:13:0x002e, B:16:0x003b, B:19:0x0045, B:21:0x0058, B:23:0x0060, B:28:0x0083, B:32:0x009a, B:34:0x00a2, B:36:0x00a9, B:9:0x0016), top: B:51:0x0003, inners: #3, #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r4, java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.a.b.e.a(android.content.Context, java.lang.String):boolean");
    }
}
