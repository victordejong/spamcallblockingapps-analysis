package com.linkedin.android.litr.h;

import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/h/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f33752a = "b";

    public static long a() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
            if (Build.VERSION.SDK_INT >= 18) {
                return statFs.getAvailableBytes();
            }
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (Exception e) {
            Log.e(f33752a, "Could not get Available Disk Space");
            return -1L;
        }
    }
}
