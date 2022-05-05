package com.aotter.net.trek.common.util;

import android.app.ActivityManager;
import android.content.Context;
import android.os.StatFs;
import androidx.appcompat.widget.ActivityChooserModel;
import com.aotter.net.trek.util.TrekLog;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/util/DeviceUtils.class */
public class DeviceUtils {

    /* renamed from: a */
    public static final int f1530a = 31457280;

    /* renamed from: b */
    public static final int f1531b = 31457280;

    /* renamed from: c */
    public static final int f1532c = 104857600;

    public static long diskCacheSizeBytes(File file) {
        return diskCacheSizeBytes(file, 31457280L);
    }

    public static long diskCacheSizeBytes(File file, long j) {
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            j = (statFs.getBlockCount() * statFs.getBlockSize()) / 50;
        } catch (IllegalArgumentException e) {
            TrekLog.m36319d("Unable to calculate 2% of available disk space, defaulting to minimum");
        }
        return Math.max(Math.min(j, 104857600L), 31457280L);
    }

    public static int memoryCacheSizeBytes(Context context) {
        return (int) Math.min(31457280L, (((ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getMemoryClass() / 8) * 1024 * 1024);
    }
}
