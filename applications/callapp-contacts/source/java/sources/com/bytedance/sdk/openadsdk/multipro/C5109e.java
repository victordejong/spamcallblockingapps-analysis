package com.bytedance.sdk.openadsdk.multipro;

import com.bytedance.sdk.openadsdk.core.C4600n;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/e.class */
public class C5109e {

    /* renamed from: a */
    public static String f18377a = "com.bytedance.openadsdk";

    /* renamed from: b */
    public static String f18378b = "content://" + f18377a + ".TTMultiProvider";

    static {
        m33013a();
    }

    /* renamed from: a */
    public static void m33013a() {
        if (C4600n.m34815a() != null) {
            f18377a = C4600n.m34815a().getPackageName();
            f18378b = "content://" + f18377a + ".TTMultiProvider";
        }
    }
}
