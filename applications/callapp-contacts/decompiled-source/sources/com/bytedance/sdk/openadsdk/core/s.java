package com.bytedance.sdk.openadsdk.core;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/s.class */
public class s {
    public static void a() {
        if (n.h().w() && !TextUtils.isEmpty(i.a(n.a()))) {
            q.a().b("AdShow");
        }
    }

    public static void a(String str) {
        if (!TextUtils.isEmpty(str) && n.h().w()) {
            q.a().a(str);
        }
    }

    public static String b(String str) {
        if (!n.h().w() || TextUtils.isEmpty(str)) {
            return null;
        }
        return q.a().b();
    }

    public static String c(String str) {
        if (!n.h().w() || TextUtils.isEmpty(i.a(n.a()))) {
            return null;
        }
        return q.a().c(str);
    }
}
