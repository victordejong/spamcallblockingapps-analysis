package com.bytedance.sdk.openadsdk.video.d;

import android.content.Context;
import com.bytedance.sdk.openadsdk.video.a.b.a;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/d/c.class */
public class c {
    private static File a(Context context) {
        File externalFilesDir = a.b() ? context.getExternalFilesDir(null) : context.getFilesDir();
        File file = externalFilesDir;
        if (externalFilesDir == null) {
            file = context.getFilesDir();
        }
        File file2 = new File(file.getAbsolutePath() + File.separator + "ttvideo");
        try {
            b(file2);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return file2;
    }

    public static File a(Context context, String str) {
        File a2 = a(context);
        File file = new File(a2, str);
        if (file.exists()) {
            return file;
        }
        return new File(a2, str + ".download");
    }

    public static void a(Context context, int i) {
        if (i >= 0) {
            try {
                File[] listFiles = a(context).listFiles();
                if (listFiles != null && listFiles.length > i) {
                    List asList = Arrays.asList(listFiles);
                    Collections.sort(asList, new Comparator<File>() { // from class: com.bytedance.sdk.openadsdk.video.d.c.1
                        /* renamed from: a */
                        public final int compare(File file, File file2) {
                            int i2 = ((file2.lastModified() - file.lastModified()) > 0L ? 1 : ((file2.lastModified() - file.lastModified()) == 0L ? 0 : -1));
                            if (i2 == 0) {
                                return 0;
                            }
                            return i2 < 0 ? -1 : 1;
                        }
                    });
                    while (i < asList.size()) {
                        String name = ((File) asList.get(i)).getName();
                        if (!a.f10337a.contains(name.replace(name, ".download"))) {
                            ((File) asList.get(i)).delete();
                        }
                        i++;
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void a(RandomAccessFile randomAccessFile, byte[] bArr, int i, int i2, String str) throws IOException {
        try {
            randomAccessFile.seek(i);
            randomAccessFile.write(bArr, 0, i2);
            a.b("VideoFilesUtils", "append:  pisition =", Integer.valueOf(i), "  length =", Integer.valueOf(i2), " completed length=", Integer.valueOf(i + i2), StringUtils.SPACE, " hash =", str);
        } catch (Throwable th) {
            th.printStackTrace();
            a.b("VideoFilesUtils", "append:  pisition =", Integer.valueOf(i), "  length =", Integer.valueOf(i2), StringUtils.SPACE, " hash =", str, th.getMessage());
        }
    }

    public static boolean a(File file) {
        return !file.getName().endsWith(".download");
    }

    private static void b(File file) throws IOException {
        if (file.exists()) {
            if (!file.isDirectory()) {
                throw new IOException("File " + file + " is not directory!");
            }
        } else if (!file.mkdirs()) {
            throw new IOException(String.format("Directory %s can't be created", file.getAbsolutePath()));
        }
    }
}
