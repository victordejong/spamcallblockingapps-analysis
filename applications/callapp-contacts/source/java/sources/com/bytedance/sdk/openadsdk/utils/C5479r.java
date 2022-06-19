package com.bytedance.sdk.openadsdk.utils;

import android.os.Environment;
import android.os.StatFs;
/* renamed from: com.bytedance.sdk.openadsdk.utils.r */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/r.class */
public class C5479r {
    /* renamed from: a */
    public static long m32105a() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (Throwable th) {
            return 0L;
        }
    }
}
