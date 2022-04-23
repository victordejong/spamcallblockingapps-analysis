package com.bytedance.sdk.openadsdk.utils;

import android.os.Environment;
import android.os.StatFs;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/r.class */
public class r {
    public static long a() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (Throwable th) {
            return 0L;
        }
    }
}
