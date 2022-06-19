package com.bytedance.sdk.openadsdk.multipro;

import com.bytedance.sdk.openadsdk.multipro.p192d.C5106a;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/b.class */
public class C5094b {

    /* renamed from: a */
    public static boolean f18357a;

    /* renamed from: b */
    public static boolean f18358b;

    /* renamed from: a */
    public static void m33092a() {
        C5106a.m33045a("sp_multi_info", "is_support_multi_process", Boolean.TRUE);
        f18357a = true;
        f18358b = true;
    }

    /* renamed from: b */
    public static boolean m33091b() {
        if (!f18358b) {
            f18357a = C5106a.m33039a("sp_multi_info", "is_support_multi_process", false);
            f18358b = true;
        }
        return f18357a;
    }
}
