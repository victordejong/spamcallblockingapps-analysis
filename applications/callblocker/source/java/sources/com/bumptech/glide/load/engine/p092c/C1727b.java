package com.bumptech.glide.load.engine.p092c;

import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;
/* renamed from: com.bumptech.glide.load.engine.c.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/c/b.class */
final class C1727b {
    /* renamed from: a */
    public static int m16469a() {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        int i = availableProcessors;
        if (Build.VERSION.SDK_INT < 17) {
            i = Math.max(m16468b(), availableProcessors);
        }
        return i;
    }

    /* renamed from: b */
    private static int m16468b() {
        File[] fileArr;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            File file = new File("/sys/devices/system/cpu/");
            final Pattern compile = Pattern.compile("cpu[0-9]+");
            fileArr = file.listFiles(new FilenameFilter() { // from class: com.bumptech.glide.load.engine.c.b.1
                @Override // java.io.FilenameFilter
                public boolean accept(File file2, String str) {
                    return compile.matcher(str).matches();
                }
            });
        } catch (Throwable th) {
            try {
                if (Log.isLoggable("GlideRuntimeCompat", 6)) {
                    Log.e("GlideRuntimeCompat", "Failed to calculate accurate cpu count", th);
                }
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                fileArr = null;
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        }
        return Math.max(1, fileArr != null ? fileArr.length : 0);
    }
}
