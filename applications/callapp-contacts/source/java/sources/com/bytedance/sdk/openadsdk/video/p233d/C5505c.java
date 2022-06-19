package com.bytedance.sdk.openadsdk.video.p233d;

import android.content.Context;
import com.bytedance.sdk.openadsdk.video.p227a.p229b.C5496a;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.bytedance.sdk.openadsdk.video.d.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/d/c.class */
public class C5505c {
    /* renamed from: a */
    private static File m31964a(Context context) {
        File externalFilesDir = C5503a.m31969b() ? context.getExternalFilesDir(null) : context.getFilesDir();
        File file = externalFilesDir;
        if (externalFilesDir == null) {
            file = context.getFilesDir();
        }
        File file2 = new File(file.getAbsolutePath() + File.separator + "ttvideo");
        try {
            m31959b(file2);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return file2;
    }

    /* renamed from: a */
    public static File m31962a(Context context, String str) {
        File m31964a = m31964a(context);
        File file = new File(m31964a, str);
        if (file.exists()) {
            return file;
        }
        return new File(m31964a, str + ".download");
    }

    /* renamed from: a */
    public static void m31963a(Context context, int i) {
        if (i < 0) {
            return;
        }
        try {
            File[] listFiles = m31964a(context).listFiles();
            if (listFiles == null || listFiles.length <= i) {
                return;
            }
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
                if (!C5496a.f19055a.contains(name.replace(name, ".download"))) {
                    ((File) asList.get(i)).delete();
                }
                i++;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m31960a(RandomAccessFile randomAccessFile, byte[] bArr, int i, int i2, String str) throws IOException {
        try {
            randomAccessFile.seek(i);
            randomAccessFile.write(bArr, 0, i2);
            C5503a.m31968b("VideoFilesUtils", "append:  pisition =", Integer.valueOf(i), "  length =", Integer.valueOf(i2), " completed length=", Integer.valueOf(i + i2), StringUtils.SPACE, " hash =", str);
        } catch (Throwable th) {
            th.printStackTrace();
            C5503a.m31968b("VideoFilesUtils", "append:  pisition =", Integer.valueOf(i), "  length =", Integer.valueOf(i2), StringUtils.SPACE, " hash =", str, th.getMessage());
        }
    }

    /* renamed from: a */
    public static boolean m31961a(File file) {
        return !file.getName().endsWith(".download");
    }

    /* renamed from: b */
    private static void m31959b(File file) throws IOException {
        if (!file.exists()) {
            if (!file.mkdirs()) {
                throw new IOException(String.format("Directory %s can't be created", file.getAbsolutePath()));
            }
        } else if (file.isDirectory()) {
        } else {
            throw new IOException("File " + file + " is not directory!");
        }
    }
}
