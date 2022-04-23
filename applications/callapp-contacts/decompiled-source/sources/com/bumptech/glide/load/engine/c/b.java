package com.bumptech.glide.load.engine.c;

import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/c/b.class */
final class b {
    private b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a() {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        int i = availableProcessors;
        if (Build.VERSION.SDK_INT < 17) {
            i = Math.max(b(), availableProcessors);
        }
        return i;
    }

    /* JADX WARN: Finally extract failed */
    private static int b() {
        File[] fileArr;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            File file = new File("/sys/devices/system/cpu/");
            final Pattern compile = Pattern.compile("cpu[0-9]+");
            fileArr = file.listFiles(new FilenameFilter() { // from class: com.bumptech.glide.load.engine.c.b.1
                @Override // java.io.FilenameFilter
                public final boolean accept(File file2, String str) {
                    return compile.matcher(str).matches();
                }
            });
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        } catch (Throwable th) {
            try {
                if (Log.isLoggable("GlideRuntimeCompat", 6)) {
                    Log.e("GlideRuntimeCompat", "Failed to calculate accurate cpu count", th);
                }
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                fileArr = null;
            } catch (Throwable th2) {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                throw th2;
            }
        }
        return Math.max(1, fileArr != null ? fileArr.length : 0);
    }
}
