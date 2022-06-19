package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.C2714k;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cnj.class */
public final class cnj {
    /* renamed from: a */
    public static File m10979a(File file, boolean z) {
        if (z && file.exists() && !file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* renamed from: a */
    public static File m10977a(String str, File file) {
        return TextUtils.isEmpty(str) ? null : m10979a(new File(file, str), false);
    }

    /* renamed from: a */
    public static File m10976a(String str, String str2, File file) {
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) ? null : new File(m10977a(str, file), str2);
    }

    /* renamed from: a */
    public static boolean m10980a(File file) {
        boolean delete;
        if (!file.exists()) {
            delete = true;
        } else {
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    m10980a(file2);
                }
            }
            delete = file.delete();
        }
        return delete;
    }

    /* renamed from: a */
    public static boolean m10978a(File file, byte[] bArr) {
        Throwable th;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        boolean z;
        try {
            fileOutputStream2 = new FileOutputStream(file);
        } catch (IOException e) {
            fileOutputStream2 = null;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
        try {
            fileOutputStream2.write(bArr);
            fileOutputStream2.flush();
            C2714k.m13848a(fileOutputStream2);
            z = true;
        } catch (IOException e2) {
            C2714k.m13848a(fileOutputStream2);
            z = false;
            return z;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = fileOutputStream2;
            C2714k.m13848a(fileOutputStream);
            throw th;
        }
        return z;
    }

    /* renamed from: b */
    public static byte[] m10975b(File file) {
        FileInputStream fileInputStream;
        Throwable th;
        byte[] bArr;
        try {
            fileInputStream = new FileInputStream(file);
        } catch (IOException e) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        try {
            bArr = dbi.m10223a(fileInputStream).m10210d();
            C2714k.m13848a(fileInputStream);
        } catch (IOException e2) {
            C2714k.m13848a(fileInputStream);
            bArr = null;
            return bArr;
        } catch (Throwable th3) {
            th = th3;
            C2714k.m13848a(fileInputStream);
            throw th;
        }
        return bArr;
    }
}
