package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.C12108l;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwp.class */
public final class cwp {
    /* renamed from: a */
    public static File m17116a(File file, boolean z) {
        if (z && file.exists() && !file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* renamed from: a */
    public static File m17114a(String str, File file) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return m17116a(new File(file, str), false);
    }

    /* renamed from: a */
    public static File m17113a(String str, String str2, File file) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return new File(m17114a(str, file), str2);
    }

    /* renamed from: a */
    public static boolean m17117a(File file) {
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
                z2 = file2 != null && m17117a(file2) && z2;
                i++;
            }
        } else {
            z = true;
        }
        return file.delete() && z;
    }

    /* renamed from: a */
    public static boolean m17115a(File file, byte[] bArr) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        Throwable th;
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.flush();
                C12108l.m19025a(fileOutputStream);
                return true;
            } catch (IOException e) {
                C12108l.m19025a(fileOutputStream);
                return false;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                C12108l.m19025a(fileOutputStream2);
                throw th;
            }
        } catch (IOException e2) {
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = null;
        }
    }

    /* renamed from: b */
    public static byte[] m17112b(File file) {
        FileInputStream fileInputStream;
        Throwable th;
        try {
            fileInputStream = new FileInputStream(file);
        } catch (IOException e) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        try {
            byte[] m16467d = dlw.m16479a(fileInputStream).m16467d();
            C12108l.m19025a((Closeable) fileInputStream);
            return m16467d;
        } catch (IOException e2) {
            C12108l.m19025a((Closeable) fileInputStream);
            return null;
        } catch (Throwable th3) {
            th = th3;
            C12108l.m19025a((Closeable) fileInputStream);
            throw th;
        }
    }
}
