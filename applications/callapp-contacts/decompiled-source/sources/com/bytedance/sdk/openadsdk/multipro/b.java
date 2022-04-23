package com.bytedance.sdk.openadsdk.multipro;

import com.bytedance.sdk.openadsdk.multipro.d.a;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f9886a;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f9887b;

    public static void a() {
        a.a("sp_multi_info", "is_support_multi_process", Boolean.TRUE);
        f9886a = true;
        f9887b = true;
    }

    public static boolean b() {
        if (!f9887b) {
            f9886a = a.a("sp_multi_info", "is_support_multi_process", false);
            f9887b = true;
        }
        return f9886a;
    }
}
