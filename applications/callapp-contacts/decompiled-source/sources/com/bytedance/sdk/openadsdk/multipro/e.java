package com.bytedance.sdk.openadsdk.multipro;

import com.bytedance.sdk.openadsdk.core.n;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/e.class */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static String f9903a = "com.bytedance.openadsdk";

    /* renamed from: b  reason: collision with root package name */
    public static String f9904b = "content://" + f9903a + ".TTMultiProvider";

    static {
        a();
    }

    public static void a() {
        if (n.a() != null) {
            f9903a = n.a().getPackageName();
            f9904b = "content://" + f9903a + ".TTMultiProvider";
        }
    }
}
