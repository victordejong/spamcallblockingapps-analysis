package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.C6233k;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zs2.class */
public final class zs2 {
    /* renamed from: a */
    public static File m8195a(String str, String str2, File file) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return new File(m8193c(str, file), str2);
    }

    /* renamed from: b */
    public static boolean m8194b(File file, byte[] bArr) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        Throwable th;
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.flush();
                C6233k.m16790a(fileOutputStream);
                return true;
            } catch (IOException e) {
                C6233k.m16790a(fileOutputStream);
                return false;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                C6233k.m16790a(fileOutputStream2);
                throw th;
            }
        } catch (IOException e2) {
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = null;
        }
    }

    /* renamed from: c */
    public static File m8193c(String str, File file) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file2 = new File(file, str);
        m8192d(file2, false);
        return file2;
    }

    /* renamed from: d */
    public static File m8192d(File file, boolean z) {
        if (z && file.exists() && !file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* renamed from: e */
    public static boolean m8191e(File file) {
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
                z2 = file2 != null && m8191e(file2) && z2;
                i++;
            }
        } else {
            z = true;
        }
        return file.delete() && z;
    }
}
