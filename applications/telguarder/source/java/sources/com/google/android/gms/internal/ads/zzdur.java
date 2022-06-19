package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.IOUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdur.class */
public final class zzdur {
    public static File zza(File file, boolean z) {
        if (z && file.exists() && !file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File zza(String str, File file) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return zza(new File(file, str), false);
    }

    public static File zza(String str, String str2, File file) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return new File(zza(str, file), str2);
    }

    public static boolean zza(File file, byte[] bArr) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        Throwable th;
        try {
            FileOutputStream fileOutputStream3 = new FileOutputStream(file);
            try {
                fileOutputStream3.write(bArr);
                fileOutputStream3.flush();
                IOUtils.closeQuietly(fileOutputStream3);
                return true;
            } catch (IOException e) {
                fileOutputStream = fileOutputStream3;
                IOUtils.closeQuietly(fileOutputStream);
                return false;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream3;
                IOUtils.closeQuietly(fileOutputStream2);
                throw th;
            }
        } catch (IOException e2) {
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = null;
        }
    }

    public static boolean zze(File file) {
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
                z2 = file2 != null && zze(file2) && z2;
                i++;
            }
        } else {
            z = true;
        }
        return file.delete() && z;
    }

    public static byte[] zzf(File file) {
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
            byte[] byteArray = zzejr.zzf(fileInputStream).toByteArray();
            IOUtils.closeQuietly(fileInputStream);
            return byteArray;
        } catch (IOException e2) {
            IOUtils.closeQuietly(fileInputStream);
            return null;
        } catch (Throwable th3) {
            th = th3;
            IOUtils.closeQuietly(fileInputStream);
            throw th;
        }
    }
}
