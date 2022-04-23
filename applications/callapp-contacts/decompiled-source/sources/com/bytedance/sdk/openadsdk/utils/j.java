package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.multipro.d.a;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/j.class */
public class j {
    public static String a() {
        return b("any_door_id", null);
    }

    public static void a(String str) {
        a("any_door_id", str);
    }

    private static void a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            try {
                if (b.b()) {
                    a.a(str, str2);
                } else {
                    z.a("", n.a()).a(str, str2);
                }
            } catch (Throwable th) {
            }
        }
    }

    private static String b(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return b.b() ? a.b((String) null, str, str2) : z.a("", n.a()).b(str, str2);
        } catch (Throwable th) {
            return str2;
        }
    }
}
