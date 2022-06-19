package org.xutils.common.util;

import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import org.xutils.C9682x;
/* loaded from: classes2-dex2jar.jar:org/xutils/common/util/FileUtil.class */
public class FileUtil {
    private FileUtil() {
    }

    public static boolean copy(String str, String str2) {
        Throwable th;
        FileOutputStream fileOutputStream;
        Throwable th2;
        File file = new File(str);
        boolean z = false;
        if (!file.exists()) {
            return false;
        }
        File file2 = new File(str2);
        IOUtil.deleteFileOrDir(file2);
        File parentFile = file2.getParentFile();
        if (parentFile.exists() || parentFile.mkdirs()) {
            FileInputStream fileInputStream = null;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    fileOutputStream = new FileOutputStream(file2);
                    try {
                        IOUtil.copy(fileInputStream2, fileOutputStream);
                        z = true;
                        IOUtil.closeQuietly(fileInputStream2);
                    } catch (Throwable th3) {
                        th2 = th3;
                        th = th2;
                        fileInputStream = fileInputStream2;
                        try {
                            LogUtil.m260d(th.getMessage(), th);
                            IOUtil.closeQuietly(fileInputStream);
                            z = false;
                            IOUtil.closeQuietly(fileOutputStream);
                            return z;
                        } catch (Throwable th4) {
                            IOUtil.closeQuietly(fileInputStream);
                            IOUtil.closeQuietly(fileOutputStream);
                            throw th4;
                        }
                    }
                } catch (Throwable th5) {
                    th2 = th5;
                    fileOutputStream = null;
                }
            } catch (Throwable th6) {
                th = th6;
                fileOutputStream = null;
            }
            IOUtil.closeQuietly(fileOutputStream);
        }
        return z;
    }

    public static boolean deleteFileOrDir(File file) {
        if (file == null || !file.exists()) {
            return true;
        }
        if (file.isFile()) {
            return file.delete();
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                deleteFileOrDir(file2);
            }
        }
        return file.delete();
    }

    public static Boolean existsSdcard() {
        return Boolean.valueOf(Environment.getExternalStorageState().equals("mounted"));
    }

    public static File getCacheDir(String str) {
        File externalCacheDir;
        File file = (!isDiskAvailable() || (externalCacheDir = C9682x.app().getExternalCacheDir()) == null) ? null : new File(externalCacheDir, str);
        File file2 = file;
        if (file == null) {
            file2 = new File(C9682x.app().getCacheDir(), str);
        }
        if (file2.exists() || file2.mkdirs()) {
            return file2;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    public static long getDiskAvailableSize() {
        char c;
        char c2;
        if (!existsSdcard().booleanValue()) {
            return 0L;
        }
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
        if (Build.VERSION.SDK_INT >= 18) {
            c2 = statFs.getBlockSizeLong();
            c = statFs.getAvailableBlocksLong();
        } else {
            c2 = statFs.getBlockSize();
            c = statFs.getAvailableBlocks();
        }
        return c * c2;
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    public static long getFileOrDirSize(File file) {
        char c = 0;
        if (!file.exists()) {
            return 0L;
        }
        if (!file.isDirectory()) {
            return file.length();
        }
        File[] listFiles = file.listFiles();
        char c2 = 0;
        if (listFiles != null) {
            int length = listFiles.length;
            int i = 0;
            while (true) {
                c2 = c;
                if (i >= length) {
                    break;
                }
                c += getFileOrDirSize(listFiles[i]);
                i++;
            }
        }
        return c2;
    }

    public static boolean isDiskAvailable() {
        return getDiskAvailableSize() > 10485760;
    }
}
