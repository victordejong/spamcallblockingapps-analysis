package com.flurry.sdk;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import java.io.File;
import java.io.FileOutputStream;
/* renamed from: com.flurry.sdk.mc */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/mc.class */
public final class C0504mc {

    /* renamed from: a */
    private static String f3583a = "mc";

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0028, code lost:
        if (r0.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File m4498a() {
        /*
            com.flurry.sdk.kg r0 = com.flurry.sdk.C0462kg.m4652a()
            android.content.Context r0 = r0.f3460a
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
            if (r0 == 0) goto L31
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 19
            if (r0 >= r1) goto L2b
            r0 = r5
            r6 = r0
            r0 = r3
            java.lang.String r1 = "android.permission.WRITE_EXTERNAL_STORAGE"
            int r0 = r0.checkCallingOrSelfPermission(r1)
            if (r0 != 0) goto L31
        L2b:
            r0 = r3
            r1 = 0
            java.io.File r0 = r0.getExternalFilesDir(r1)
            r6 = r0
        L31:
            r0 = r6
            r5 = r0
            r0 = r6
            if (r0 != 0) goto L3c
            r0 = r3
            java.io.File r0 = r0.getFilesDir()
            r5 = r0
        L3c:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C0504mc.m4498a():java.io.File");
    }

    @Deprecated
    /* renamed from: a */
    public static void m4496a(File file, String str) {
        Throwable th;
        FileOutputStream fileOutputStream;
        if (file == null) {
            C0478ku.m4596a(4, f3583a, "No persistent file specified.");
        } else if (str == null) {
            C0478ku.m4596a(4, f3583a, "No data specified; deleting persistent file: " + file.getAbsolutePath());
            file.delete();
        } else {
            C0478ku.m4596a(4, f3583a, "Writing persistent data: " + file.getAbsolutePath());
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    fileOutputStream2.write(str.getBytes());
                    C0505md.m4487a(fileOutputStream2);
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    try {
                        C0478ku.m4595a(6, f3583a, "Error writing persistent file", th);
                        C0505md.m4487a(fileOutputStream);
                    } catch (Throwable th3) {
                        C0505md.m4487a(fileOutputStream);
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = null;
            }
        }
    }

    /* renamed from: a */
    public static boolean m4497a(File file) {
        if (file == null || file.getAbsoluteFile() == null) {
            return false;
        }
        File parentFile = file.getParentFile();
        if (parentFile == null || parentFile.mkdirs() || parentFile.isDirectory()) {
            return true;
        }
        String str = f3583a;
        C0478ku.m4596a(6, str, "Unable to create persistent dir: " + parentFile);
        return false;
    }

    /* renamed from: b */
    public static File m4495b() {
        Context context = C0462kg.m4652a().f3460a;
        File externalCacheDir = (!"mounted".equals(Environment.getExternalStorageState()) || (Build.VERSION.SDK_INT < 19 && context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0)) ? null : context.getExternalCacheDir();
        File file = externalCacheDir;
        if (externalCacheDir == null) {
            file = context.getCacheDir();
        }
        return file;
    }

    /* renamed from: b */
    public static boolean m4494b(File file) {
        if (file != null && file.isDirectory()) {
            for (String str : file.list()) {
                if (!m4494b(new File(file, str))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0090 A[RETURN] */
    @java.lang.Deprecated
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m4493c(java.io.File r5) {
        /*
            r0 = r5
            if (r0 == 0) goto L99
            r0 = r5
            boolean r0 = r0.exists()
            if (r0 != 0) goto Le
            goto L99
        Le:
            java.lang.String r0 = com.flurry.sdk.C0504mc.f3583a
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
            com.flurry.sdk.C0478ku.m4596a(r0, r1, r2)
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L73
            r7 = r0
            r0 = r7
            r1 = r5
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L73
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6d java.lang.Throwable -> L73
            r5 = r0
            r0 = r5
            r0.<init>()     // Catch: java.lang.Throwable -> L6d
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L6d
            r8 = r0
        L45:
            r0 = r7
            r1 = r8
            int r0 = r0.read(r1)     // Catch: java.lang.Throwable -> L6d
            r9 = r0
            r0 = r9
            if (r0 <= 0) goto L66
            java.lang.String r0 = new java.lang.String     // Catch: java.lang.Throwable -> L6d
            r6 = r0
            r0 = r6
            r1 = r8
            r2 = 0
            r3 = r9
            r0.<init>(r1, r2, r3)     // Catch: java.lang.Throwable -> L6d
            r0 = r5
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> L6d
            goto L45
        L66:
            r0 = r7
            com.flurry.sdk.C0505md.m4487a(r0)
            goto L87
        L6d:
            r6 = move-exception
            r0 = r7
            r5 = r0
            goto L76
        L73:
            r6 = move-exception
            r0 = 0
            r5 = r0
        L76:
            r0 = 6
            java.lang.String r1 = com.flurry.sdk.C0504mc.f3583a     // Catch: java.lang.Throwable -> L92
            java.lang.String r2 = "Error when loading persistent file"
            r3 = r6
            com.flurry.sdk.C0478ku.m4595a(r0, r1, r2, r3)     // Catch: java.lang.Throwable -> L92
            r0 = r5
            com.flurry.sdk.C0505md.m4487a(r0)
            r0 = 0
            r5 = r0
        L87:
            r0 = r5
            if (r0 == 0) goto L90
            r0 = r5
            java.lang.String r0 = r0.toString()
            return r0
        L90:
            r0 = 0
            return r0
        L92:
            r6 = move-exception
            r0 = r5
            com.flurry.sdk.C0505md.m4487a(r0)
            r0 = r6
            throw r0
        L99:
            r0 = 4
            java.lang.String r1 = com.flurry.sdk.C0504mc.f3583a
            java.lang.String r2 = "Persistent file doesn't exist."
            com.flurry.sdk.C0478ku.m4596a(r0, r1, r2)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C0504mc.m4493c(java.io.File):java.lang.String");
    }
}
