package com.flurry.sdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import java.io.File;
import java.io.FileOutputStream;
/* renamed from: com.flurry.sdk.kz */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/kz.class */
public final class C3443kz {

    /* renamed from: a */
    public static String f5916a = "kz";

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0028, code lost:
        if (r0.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) goto L_0x002b;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File m32480a() {
        /*
            com.flurry.sdk.jb r0 = com.flurry.sdk.C3331jb.m32681a()
            android.content.Context r0 = r0.f5679a
            r3 = r0
            java.lang.String r0 = "mounted"
            java.lang.String r1 = android.os.Environment.getExternalStorageState()
            boolean r0 = r0.equals(r1)
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0031
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 19
            if (r0 >= r1) goto L_0x002b
            r0 = r5
            r6 = r0
            r0 = r3
            java.lang.String r1 = "android.permission.WRITE_EXTERNAL_STORAGE"
            int r0 = r0.checkCallingOrSelfPermission(r1)
            if (r0 != 0) goto L_0x0031
        L_0x002b:
            r0 = r3
            r1 = 0
            java.io.File r0 = r0.getExternalFilesDir(r1)
            r6 = r0
        L_0x0031:
            r0 = r6
            r5 = r0
            r0 = r6
            if (r0 != 0) goto L_0x003c
            r0 = r3
            java.io.File r0 = r0.getFilesDir()
            r5 = r0
        L_0x003c:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3443kz.m32480a():java.io.File");
    }

    @Deprecated
    /* renamed from: a */
    public static void m32478a(File file, String str) {
        Throwable th;
        if (file == null) {
            C3356jq.m32615a(4, f5916a, "No persistent file specified.");
        } else if (str == null) {
            String str2 = f5916a;
            C3356jq.m32615a(4, str2, "No data specified; deleting persistent file: " + file.getAbsolutePath());
            file.delete();
        } else {
            String str3 = f5916a;
            C3356jq.m32615a(4, str3, "Writing persistent data: " + file.getAbsolutePath());
            FileOutputStream fileOutputStream = null;
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    fileOutputStream.write(str.getBytes());
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream;
                    try {
                        C3356jq.m32614a(6, f5916a, "Error writing persistent file", th);
                    } finally {
                        C3445la.m32465a(fileOutputStream);
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    /* renamed from: a */
    public static boolean m32479a(File file) {
        if (file == null || file.getAbsoluteFile() == null) {
            return false;
        }
        File parentFile = file.getParentFile();
        if (parentFile == null || parentFile.mkdirs() || parentFile.isDirectory()) {
            return true;
        }
        String str = f5916a;
        C3356jq.m32615a(6, str, "Unable to create persistent dir: " + parentFile);
        return false;
    }

    @TargetApi(21)
    /* renamed from: b */
    public static File m32477b() {
        File file;
        Context context = C3331jb.m32681a().f5679a;
        if (C3445la.m32456c()) {
            file = context.getNoBackupFilesDir();
        } else {
            file = new File(context.getFilesDir().getPath() + File.separator + "no_backup");
        }
        return new File(file.getPath() + File.separator + ".flurryNoBackup");
    }

    /* renamed from: b */
    public static boolean m32476b(File file) {
        if (file != null && file.isDirectory()) {
            for (String str : file.list()) {
                if (!m32476b(new File(file, str))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    /* renamed from: c */
    public static File m32475c() {
        Context context = C3331jb.m32681a().f5679a;
        File externalCacheDir = (!"mounted".equals(Environment.getExternalStorageState()) || (Build.VERSION.SDK_INT < 19 && context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0)) ? null : context.getExternalCacheDir();
        File file = externalCacheDir;
        if (externalCacheDir == null) {
            file = context.getCacheDir();
        }
        return file;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0090 A[RETURN] */
    @java.lang.Deprecated
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m32474c(java.io.File r5) {
        /*
            r0 = r5
            if (r0 == 0) goto L_0x0099
            r0 = r5
            boolean r0 = r0.exists()
            if (r0 != 0) goto L_0x000e
            goto L_0x0099
        L_0x000e:
            java.lang.String r0 = com.flurry.sdk.C3443kz.f5916a
            r6 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Loading persistent data: "
            r1.<init>(r2)
            r7 = r0
            r0 = r7
            r1 = r5
            java.lang.String r1 = r1.getAbsolutePath()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = 4
            r1 = r6
            r2 = r7
            java.lang.String r2 = r2.toString()
            com.flurry.sdk.C3356jq.m32615a(r0, r1, r2)
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: all -> 0x0073
            r7 = r0
            r0 = r7
            r1 = r5
            r0.<init>(r1)     // Catch: all -> 0x0073
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x006d, all -> 0x0073
            r5 = r0
            r0 = r5
            r0.<init>()     // Catch: all -> 0x006d
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r0 = new byte[r0]     // Catch: all -> 0x006d
            r8 = r0
        L_0x0045:
            r0 = r7
            r1 = r8
            int r0 = r0.read(r1)     // Catch: all -> 0x006d
            r9 = r0
            r0 = r9
            if (r0 <= 0) goto L_0x0066
            java.lang.String r0 = new java.lang.String     // Catch: all -> 0x006d
            r6 = r0
            r0 = r6
            r1 = r8
            r2 = 0
            r3 = r9
            r0.<init>(r1, r2, r3)     // Catch: all -> 0x006d
            r0 = r5
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x006d
            goto L_0x0045
        L_0x0066:
            r0 = r7
            com.flurry.sdk.C3445la.m32465a(r0)
            goto L_0x0087
        L_0x006d:
            r6 = move-exception
            r0 = r7
            r5 = r0
            goto L_0x0076
        L_0x0073:
            r6 = move-exception
            r0 = 0
            r5 = r0
        L_0x0076:
            r0 = 6
            java.lang.String r1 = com.flurry.sdk.C3443kz.f5916a     // Catch: all -> 0x0092
            java.lang.String r2 = "Error when loading persistent file"
            r3 = r6
            com.flurry.sdk.C3356jq.m32614a(r0, r1, r2, r3)     // Catch: all -> 0x0092
            r0 = r5
            com.flurry.sdk.C3445la.m32465a(r0)
            r0 = 0
            r5 = r0
        L_0x0087:
            r0 = r5
            if (r0 == 0) goto L_0x0090
            r0 = r5
            java.lang.String r0 = r0.toString()
            return r0
        L_0x0090:
            r0 = 0
            return r0
        L_0x0092:
            r6 = move-exception
            r0 = r5
            com.flurry.sdk.C3445la.m32465a(r0)
            r0 = r6
            throw r0
        L_0x0099:
            r0 = 4
            java.lang.String r1 = com.flurry.sdk.C3443kz.f5916a
            java.lang.String r2 = "Persistent file doesn't exist."
            com.flurry.sdk.C3356jq.m32615a(r0, r1, r2)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3443kz.m32474c(java.io.File):java.lang.String");
    }
}
