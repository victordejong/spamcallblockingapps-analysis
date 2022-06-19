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
/* renamed from: com.bytedance.sdk.openadsdk.utils.k */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/k.class */
public class C5467k {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.utils.k$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/k$a.class */
    public static final class C5469a implements Comparator<File> {
        private C5469a() {
        }

        /* renamed from: a */
        private int m32133a(long j, long j2) {
            int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
            if (i < 0) {
                return -1;
            }
            return i == 0 ? 0 : 1;
        }

        /* renamed from: a */
        public final int compare(File file, File file2) {
            return m32133a(file.lastModified(), file2.lastModified());
        }
    }

    /* renamed from: a */
    public static File m32140a(Context context, boolean z, String str, String str2) {
        String m32141a = m32141a(context);
        String str3 = str;
        if (z) {
            str3 = "/" + C5485w.m32073a(context) + VerificationLanguage.REGION_PREFIX + str;
        }
        String str4 = m32141a + str3;
        File file = new File(str4);
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(str4, str2);
    }

    /* renamed from: a */
    private static String m32141a(Context context) {
        if (context == null) {
            return null;
        }
        File externalCacheDir = "mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable() ? context.getExternalCacheDir() : null;
        File file = externalCacheDir;
        if (externalCacheDir == null) {
            file = context.getCacheDir();
        }
        if (file != null) {
            return file.getPath();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.List] */
    /* renamed from: a */
    public static List<File> m32139a(File file) {
        LinkedList linkedList = new LinkedList();
        File[] listFiles = file.listFiles();
        LinkedList linkedList2 = linkedList;
        if (listFiles != null) {
            linkedList2 = Arrays.asList(listFiles);
            Collections.sort(linkedList2, new C5469a());
        }
        return linkedList2;
    }

    /* renamed from: b */
    public static void m32138b(File file) throws IOException {
        if (file.exists()) {
            C5478q.m32106e("splashLoadAd", "当文件存在更新文件的修改时间");
            long currentTimeMillis = System.currentTimeMillis();
            if (file.setLastModified(currentTimeMillis)) {
                return;
            }
            m32135e(file);
            if (file.lastModified() >= currentTimeMillis) {
                return;
            }
            C5478q.m32107d("Files", "Last modified date " + new Date(file.lastModified()) + " is not set for file " + file.getAbsolutePath());
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x005e -> B:21:0x004e). Please submit an issue!!! */
    /* renamed from: c */
    public static void m32137c(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isFile()) {
            try {
                file.delete();
                return;
            } catch (Throwable th) {
                return;
            }
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null && listFiles.length > 0) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    m32137c(file2);
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

    /* renamed from: d */
    public static byte[] m32136d(File file) {
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

    /* renamed from: e */
    private static void m32135e(File file) throws IOException {
        RandomAccessFile randomAccessFile;
        long length = file.length();
        if (length == 0) {
            m32134f(file);
            return;
        }
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
                if (randomAccessFile == null) {
                    return;
                }
                randomAccessFile.close();
            }
        } catch (Throwable th2) {
            randomAccessFile = null;
        }
    }

    /* renamed from: f */
    private static void m32134f(File file) throws IOException {
        if (!file.delete() || !file.createNewFile()) {
            throw new IOException("Error recreate zero-size file ".concat(String.valueOf(file)));
        }
    }
}
