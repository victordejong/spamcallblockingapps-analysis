package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.C1615l;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tu1.class */
public final class tu1 {
    /* renamed from: a */
    public static File m5467a(String str, String str2, File file) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return new File(m5465c(str, file), str2);
    }

    /* renamed from: b */
    public static boolean m5466b(File file, byte[] bArr) {
        Throwable th;
        FileOutputStream fileOutputStream = null;
        FileOutputStream fileOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.flush();
                C1615l.m8222a(fileOutputStream);
                return true;
            } catch (IOException e) {
                C1615l.m8222a(fileOutputStream);
                return false;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                C1615l.m8222a(fileOutputStream2);
                throw th;
            }
        } catch (IOException e2) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: c */
    public static File m5465c(String str, File file) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file2 = new File(file, str);
        m5464d(file2, false);
        return file2;
    }

    /* renamed from: d */
    public static File m5464d(File file, boolean z) {
        if (z && file.exists() && !file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* renamed from: e */
    public static boolean m5463e(File file) {
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
                z2 = file2 != null && m5463e(file2) && z2;
                i++;
            }
        } else {
            z = true;
        }
        return file.delete() && z;
    }
}
