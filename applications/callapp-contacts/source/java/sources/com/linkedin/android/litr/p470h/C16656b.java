package com.linkedin.android.litr.p470h;

import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
/* renamed from: com.linkedin.android.litr.h.b */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/h/b.class */
public class C16656b {

    /* renamed from: a */
    private static final String f58612a = "b";

    /* renamed from: a */
    public static long m6804a() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
            if (Build.VERSION.SDK_INT >= 18) {
                return statFs.getAvailableBytes();
            }
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (Exception e) {
            Log.e(f58612a, "Could not get Available Disk Space");
            return -1L;
        }
    }
}
