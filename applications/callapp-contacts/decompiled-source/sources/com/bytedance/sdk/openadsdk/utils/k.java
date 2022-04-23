package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.os.Environment;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/k.class */
public class k {

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/k$a.class */
    static final class a implements Comparator<File> {
        private a() {
        }

        private int a(long j, long j2) {
            int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
            if (i < 0) {
                return -1;
            }
            return i == 0 ? 0 : 1;
        }

        /* renamed from: a */
        public final int compare(File file, File file2) {
            return a(file.lastModified(), file2.lastModified());
        }
    }

    public static File a(Context context, boolean z, String str, String str2) {
        String a2 = a(context);
        String str3 = str;
        if (z) {
            str3 = "/" + w.a(context) + VerificationLanguage.REGION_PREFIX + str;
        }
        String str4 = a2 + str3;
        File file = new File(str4);
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(str4, str2);
    }

    private static String a(Context context) {
        if (context == null) {
            return null;
        }
        File externalCacheDir = "mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable() ? context.getExternalCacheDir() : null;
        File file = externalCacheDir;
        if (externalCacheDir == null) {
            file = context.getCacheDir();
        }
        if (file == null) {
            return null;
        }
        return file.getPath();
    }

    public static List<File> a(File file) {
        List<File> linkedList = new LinkedList<>();
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            linkedList = Arrays.asList(listFiles);
            Collections.sort(linkedList, new a());
        }
        return linkedList;
    }

    public static void b(File file) throws IOException {
        if (file.exists()) {
            q.e("splashLoadAd", "当文件存在更新文件的修改时间");
            long currentTimeMillis = System.currentTimeMillis();
            if (!file.setLastModified(currentTimeMillis)) {
                e(file);
                if (file.lastModified() < currentTimeMillis) {
                    q.d("Files", "Last modified date " + new Date(file.lastModified()) + " is not set for file " + file.getAbsolutePath());
                }
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x005e -> B:21:0x004e). Please submit an issue!!! */
    public static void c(File file) {
        if (file != null && file.exists()) {
            if (file.isFile()) {
                try {
                    file.delete();
                } catch (Throwable th) {
                }
            } else {
                File[] listFiles = file.listFiles();
                if (listFiles != null && listFiles.length > 0) {
                    for (File file2 : listFiles) {
                        if (file2.isDirectory()) {
                            c(file2);
                        } else {
                            try {
                                file2.delete();
                            } catch (Throwable th2) {
                            }
                        }
                    }
                }
                try {
                    file.delete();
                } catch (Throwable th3) {
                }
            }
        }
    }

    public static byte[] d(File file) {
        FileInputStream fileInputStream;
        Long valueOf;
        FileInputStream fileInputStream2;
        if (file == null || !file.isFile() || !file.exists() || !file.canRead() || file.length() <= 0) {
            return null;
        }
        try {
            valueOf = Long.valueOf(file.length());
            fileInputStream2 = new FileInputStream(file);
        } catch (Throwable th) {
            fileInputStream = null;
        }
        try {
            try {
                byte[] bArr = new byte[valueOf.intValue()];
                fileInputStream = fileInputStream2;
                if (fileInputStream2.read(bArr) == valueOf.longValue()) {
                    try {
                        fileInputStream2.close();
                    } catch (Throwable th2) {
                    }
                    return bArr;
                }
            } catch (Throwable th3) {
                fileInputStream = fileInputStream2;
                if (fileInputStream == null) {
                    return null;
                }
                fileInputStream.close();
                return null;
            }
            fileInputStream.close();
            return null;
        } catch (Throwable th4) {
            return null;
        }
    }

    private static void e(File file) throws IOException {
        long length = file.length();
        if (length == 0) {
            f(file);
            return;
        }
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rwd");
            long j = length - 1;
            try {
                randomAccessFile2.seek(j);
                byte readByte = randomAccessFile2.readByte();
                randomAccessFile2.seek(j);
                randomAccessFile2.write(readByte);
                randomAccessFile2.close();
            } catch (Throwable th) {
                randomAccessFile = randomAccessFile2;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            }
        } catch (Throwable th2) {
        }
    }

    private static void f(File file) throws IOException {
        if (!file.delete() || !file.createNewFile()) {
            throw new IOException("Error recreate zero-size file ".concat(String.valueOf(file)));
        }
    }
}
