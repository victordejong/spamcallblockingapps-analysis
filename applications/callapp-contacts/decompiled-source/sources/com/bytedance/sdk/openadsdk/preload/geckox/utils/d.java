package com.bytedance.sdk.openadsdk.preload.geckox.utils;

import android.os.Process;
import com.bytedance.sdk.openadsdk.preload.geckox.h.b;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/utils/d.class */
public class d {
    public static void a(InputStream inputStream, OutputStream outputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = bufferedInputStream.read(bArr);
            if (read != -1) {
                bufferedOutputStream.write(bArr, 0, read);
            } else {
                bufferedOutputStream.flush();
                return;
            }
        }
    }

    public static boolean a(File file) {
        if (file == null || !file.exists()) {
            return true;
        }
        int myPid = Process.myPid();
        String thread = Thread.currentThread().toString();
        b.a("gecko-debug-tag", "delete file，pid:", Integer.valueOf(myPid), ", thread:", thread, ", file:" + file.getAbsolutePath());
        return d(file);
    }

    public static List<File> b(File file) {
        if (file == null || !file.exists() || !file.isDirectory()) {
            return null;
        }
        List<File> asList = Arrays.asList(file.listFiles());
        Collections.sort(asList, new Comparator<File>() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.utils.d.1
            /* renamed from: a */
            public final int compare(File file2, File file3) {
                return Long.compare(file2.lastModified(), file3.lastModified());
            }
        });
        return asList;
    }

    public static boolean c(File file) {
        if (file.isDirectory()) {
            for (String str : file.list()) {
                if (!c(new File(file, str))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    private static boolean d(File file) {
        boolean z;
        File[] listFiles;
        if (file == null || !file.exists()) {
            return true;
        }
        if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
            int length = listFiles.length;
            int i = 0;
            boolean z2 = true;
            while (true) {
                z = z2;
                if (i >= length) {
                    break;
                }
                z2 = z2 && d(listFiles[i]);
                i++;
            }
        } else {
            z = true;
        }
        return z && file.delete();
    }
}
