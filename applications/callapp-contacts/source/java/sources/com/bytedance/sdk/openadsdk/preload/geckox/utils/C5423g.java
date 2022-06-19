package com.bytedance.sdk.openadsdk.preload.geckox.utils;

import android.content.Context;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.utils.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/utils/g.class */
public class C5423g {

    /* renamed from: a */
    private static Context f18957a;

    /* renamed from: a */
    public static void m32350a(Context context) {
        if (context != null) {
            f18957a = context;
        }
    }

    /* renamed from: a */
    public static void m32349a(String str) {
        System.loadLibrary(str);
    }
}
