package com.huawei.secure.android.common.util;

import android.os.Handler;
import android.os.Looper;
/* renamed from: com.huawei.secure.android.common.util.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/util/c.class */
public class C2501c {

    /* renamed from: a */
    private static Handler f8158a = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    public static void m36869a(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        f8158a.post(runnable);
    }
}
