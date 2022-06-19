package com.bumptech.glide.load.engine.p022z;

import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;
/* renamed from: com.bumptech.glide.load.engine.z.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/z/b.class */
final class C0792b {

    /* renamed from: com.bumptech.glide.load.engine.z.b$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/z/b$a.class */
    public class C0793a implements FilenameFilter {

        /* renamed from: a */
        final /* synthetic */ Pattern f3661a;

        C0793a(Pattern pattern) {
            this.f3661a = pattern;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return this.f3661a.matcher(str).matches();
        }
    }

    /* renamed from: a */
    public static int m11004a() {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        int i = availableProcessors;
        if (Build.VERSION.SDK_INT < 17) {
            i = Math.max(m11003b(), availableProcessors);
        }
        return i;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    private static int m11003b() {
        File[] fileArr;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            fileArr = new File("/sys/devices/system/cpu/").listFiles(new C0793a(Pattern.compile("cpu[0-9]+")));
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
