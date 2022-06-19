package com.huawei.secure.android.common.util;

import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.zip.ZipInputStream;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/util/ZipUtil.class */
public class ZipUtil {

    /* renamed from: a */
    private static final String f8147a = "ZipUtil";

    /* renamed from: b */
    private static final int f8148b = 104857600;

    /* renamed from: c */
    private static final int f8149c = 100;

    /* renamed from: d */
    private static final int f8150d = 4096;

    /* renamed from: e */
    private static final String f8151e = "../";

    /* renamed from: f */
    private static final String f8152f = "..\\";

    /* JADX WARN: Removed duplicated region for block: B:124:0x025e  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<java.io.File> m36897a(java.io.File r5, java.io.File r6, long r7, boolean r9) {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.secure.android.common.util.ZipUtil.m36897a(java.io.File, java.io.File, long, boolean):java.util.List");
    }

    /* renamed from: a */
    private static void m36896a(FileInputStream fileInputStream, BufferedOutputStream bufferedOutputStream, ZipInputStream zipInputStream, FileOutputStream fileOutputStream) {
        IOUtil.closeSecure((InputStream) fileInputStream);
        IOUtil.closeSecure((OutputStream) bufferedOutputStream);
        IOUtil.closeSecure((InputStream) zipInputStream);
        IOUtil.closeSecure((OutputStream) fileOutputStream);
    }

    /* renamed from: a */
    private static void m36895a(String str) {
        if (TextUtils.isEmpty(str) || !m36884e(str)) {
            return;
        }
        throw new IllegalArgumentException("path is not a standard path");
    }

    /* renamed from: a */
    private static boolean m36898a(File file) {
        return file != null && (!file.exists() ? file.mkdirs() : file.isDirectory());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0039 A[Catch: all -> 0x008b, IOException -> 0x0093, TRY_LEAVE, TryCatch #6 {IOException -> 0x0093, all -> 0x008b, blocks: (B:7:0x0024, B:9:0x002f, B:11:0x0039, B:12:0x0050, B:19:0x0067, B:22:0x0074), top: B:66:0x0024 }] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m36894a(java.lang.String r5, long r6, int r8) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.secure.android.common.util.ZipUtil.m36894a(java.lang.String, long, int):boolean");
    }

    /* renamed from: a */
    private static boolean m36893a(String str, String str2, long j, int i) throws SecurityCommonException {
        if (TextUtils.isEmpty(str) || m36884e(str)) {
            LogsUtil.m36921e(f8147a, "zip file is not valid");
            return false;
        } else if (TextUtils.isEmpty(str2) || m36884e(str2)) {
            LogsUtil.m36921e(f8147a, "target directory is not valid");
            return false;
        } else if (m36894a(str, j, i)) {
            return true;
        } else {
            LogsUtil.m36921e(f8147a, "zip file contains valid chars or too many files");
            throw new SecurityCommonException("unsecure zipfile!");
        }
    }

    /* renamed from: a */
    private static boolean m36892a(List<File> list) {
        try {
            for (File file : list) {
                m36885e(file);
            }
            return true;
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("unzip fail delete file failed");
            m8728C.append(e.getMessage());
            LogsUtil.m36921e(f8147a, m8728C.toString());
            return false;
        }
    }

    /* renamed from: b */
    private static File m36890b(String str) {
        m36895a(str);
        return new File(str);
    }

    /* renamed from: b */
    private static boolean m36891b(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            return file.isFile();
        }
        if (!m36898a(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e) {
            return false;
        }
    }

    /* renamed from: c */
    private static File m36888c(String str) {
        return TextUtils.isEmpty(str) ? null : m36890b(str);
    }

    /* renamed from: c */
    private static void m36889c(File file) {
        if (file != null && !file.delete()) {
            LogsUtil.m36921e(f8147a, "delete file error");
        }
    }

    /* renamed from: d */
    private static String m36886d(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf(File.separator);
        if (lastIndexOf != -1) {
            str = str.substring(lastIndexOf + 1);
        }
        return str;
    }

    /* renamed from: d */
    private static void m36887d(File file) {
        if (file == null || file.exists() || file.mkdirs()) {
            return;
        }
        LogsUtil.m36921e(f8147a, "mkdirs error , files exists or IOException.");
    }

    /* renamed from: e */
    private static void m36885e(File file) {
        if (file == null) {
            return;
        }
        if (file.isFile()) {
            m36889c(file);
        } else if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null || listFiles.length == 0) {
                m36889c(file);
                return;
            }
            for (File file2 : listFiles) {
                m36885e(file2);
            }
            m36889c(file);
        }
    }

    /* renamed from: e */
    private static boolean m36884e(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        boolean z = true;
        if (!str.contains(f8151e)) {
            z = true;
            if (!str.contains(f8152f)) {
                z = true;
                if (!str.contains("..")) {
                    z = true;
                    if (!str.contains("./")) {
                        z = true;
                        if (!str.contains(".\\.\\")) {
                            z = str.contains("%00");
                        }
                    }
                }
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0330  */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean unZip(java.lang.String r6, java.lang.String r7, long r8, int r10, boolean r11) throws com.huawei.secure.android.common.util.SecurityCommonException {
        /*
            Method dump skipped, instructions count: 859
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.secure.android.common.util.ZipUtil.unZip(java.lang.String, java.lang.String, long, int, boolean):boolean");
    }

    @Deprecated
    public static boolean unZip(String str, String str2, boolean z) throws SecurityCommonException {
        return unZip(str, str2, 104857600L, 100, z);
    }

    public static List<File> unZipNew(String str, String str2, long j, int i, boolean z) throws SecurityCommonException {
        if (!m36893a(str, str2, j, i)) {
            return null;
        }
        String str3 = File.separator;
        String str4 = str2;
        if (str2.endsWith(str3)) {
            str4 = str2;
            if (str2.length() > str3.length()) {
                str4 = str2.substring(0, str2.length() - str3.length());
            }
        }
        return m36897a(m36888c(str), m36888c(str4), j, z);
    }

    public static List<File> unZipNew(String str, String str2, boolean z) throws SecurityCommonException {
        return unZipNew(str, str2, 104857600L, 100, z);
    }
}
