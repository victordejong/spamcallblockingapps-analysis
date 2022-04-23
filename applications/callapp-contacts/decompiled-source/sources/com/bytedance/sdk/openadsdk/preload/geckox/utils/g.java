package com.bytedance.sdk.openadsdk.preload.geckox.utils;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/utils/g.class */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static Context f10258a;

    public static void a(Context context) {
        if (context != null) {
            f10258a = context;
        }
    }

    public static void a(String str) {
        System.loadLibrary(str);
    }
}
