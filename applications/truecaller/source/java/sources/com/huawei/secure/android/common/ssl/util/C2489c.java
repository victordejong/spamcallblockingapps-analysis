package com.huawei.secure.android.common.ssl.util;

import android.content.Context;
/* renamed from: com.huawei.secure.android.common.ssl.util.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/util/c.class */
public class C2489c {

    /* renamed from: a */
    private static Context f8099a;

    /* renamed from: a */
    public static Context m36979a() {
        return f8099a;
    }

    /* renamed from: a */
    public static void m36978a(Context context) {
        if (context == null || f8099a != null) {
            return;
        }
        f8099a = context.getApplicationContext();
    }
}
