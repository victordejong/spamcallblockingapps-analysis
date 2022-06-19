package com.bumptech.glide.load.engine.p121c;

import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;
/* renamed from: com.bumptech.glide.load.engine.c.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/c/b.class */
final class C3764b {
    private C3764b() {
    }

    /* renamed from: a */
    public static int m37408a() {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        int i = availableProcessors;
        if (Build.VERSION.SDK_INT < 17) {
            i = Math.max(m37407b(), availableProcessors);
        }
        return i;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    private static int m37407b() {
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
