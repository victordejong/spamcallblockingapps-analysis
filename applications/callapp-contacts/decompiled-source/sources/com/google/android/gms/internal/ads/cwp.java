package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.l;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwp.class */
public final class cwp {
    public static File a(File file, boolean z) {
        if (z && file.exists() && !file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File a(String str, File file) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return a(new File(file, str), false);
    }

    public static File a(String str, String str2, File file) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return new File(a(str, file), str2);
    }

    public static boolean a(File file) {
        boolean z;
        if (!file.exists()) {
            return true;
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            int length = listFiles.length;
            int i = 0;
            boolean z2 = true;
            while (true) {
                z = z2;
                if (i >= length) {
                    break;
                }
                File file2 = listFiles[i];
                z2 = file2 != null && a(file2) && z2;
                i++;
            }
        } else {
            z = true;
        }
        return file.delete() && z;
    }

    public static boolean a(File file, byte[] bArr) {
        Throwable th;
        FileOutputStream fileOutputStream = null;
        FileOutputStream fileOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.flush();
                l.a(fileOutputStream);
                return true;
            } catch (IOException e) {
                l.a(fileOutputStream);
                return false;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                l.a(fileOutputStream2);
                throw th;
            }
        } catch (IOException e2) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static byte[] b(File file) {
        Throwable th;
        FileInputStream fileInputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
        } catch (IOException e) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            byte[] d2 = dlw.a(fileInputStream).d();
            l.a((Closeable) fileInputStream);
            return d2;
        } catch (IOException e2) {
            l.a((Closeable) fileInputStream);
            return null;
        } catch (Throwable th3) {
            th = th3;
            l.a((Closeable) fileInputStream);
            throw th;
        }
    }
}
