package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfjy.class */
public final class zzfjy {
    public static File zza(String str, String str2, File file) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return new File(zzc(str, file), str2);
    }

    public static boolean zzb(File file, byte[] bArr) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        Throwable th;
        try {
            FileOutputStream fileOutputStream3 = new FileOutputStream(file);
            try {
                fileOutputStream3.write(bArr);
                fileOutputStream3.flush();
                try {
                    fileOutputStream3.close();
                    return true;
                } catch (IOException e) {
                    return true;
                }
            } catch (IOException e2) {
                fileOutputStream = fileOutputStream3;
                if (fileOutputStream == null) {
                    return false;
                }
                try {
                    fileOutputStream.close();
                    return false;
                } catch (IOException e3) {
                    return false;
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream3;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e4) {
                    }
                }
                throw th;
            }
        } catch (IOException e5) {
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = null;
        }
    }

    public static File zzc(String str, File file) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file2 = new File(file, str);
        zzd(file2, false);
        return file2;
    }

    public static File zzd(File file, boolean z) {
        if (z && file.exists() && !file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static boolean zze(File file) {
        boolean z;
        if (!file.exists()) {
            return true;
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            int length = listFiles.length;
            boolean z2 = true;
            int i = 0;
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
}
