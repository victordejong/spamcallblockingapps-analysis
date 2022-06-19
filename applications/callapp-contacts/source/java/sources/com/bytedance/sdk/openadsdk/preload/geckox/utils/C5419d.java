package com.bytedance.sdk.openadsdk.preload.geckox.utils;

import android.os.Process;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
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
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.utils.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/utils/d.class */
public class C5419d {
    /* renamed from: a */
    public static void m32357a(InputStream inputStream, OutputStream outputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = bufferedInputStream.read(bArr);
            if (read == -1) {
                bufferedOutputStream.flush();
                return;
            }
            bufferedOutputStream.write(bArr, 0, read);
        }
    }

    /* renamed from: a */
    public static boolean m32358a(File file) {
        if (file == null || !file.exists()) {
            return true;
        }
        int myPid = Process.myPid();
        String thread = Thread.currentThread().toString();
        C5381b.m32429a("gecko-debug-tag", "delete file，pid:", Integer.valueOf(myPid), ", thread:", thread, ", file:" + file.getAbsolutePath());
        return m32354d(file);
    }

    /* renamed from: b */
    public static List<File> m32356b(File file) {
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

    /* renamed from: c */
    public static boolean m32355c(File file) {
        if (file.isDirectory()) {
            for (String str : file.list()) {
                if (!m32355c(new File(file, str))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    /* renamed from: d */
    private static boolean m32354d(File file) {
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
                z2 = z2 && m32354d(listFiles[i]);
                i++;
            }
        } else {
            z = true;
        }
        return z && file.delete();
    }
}
