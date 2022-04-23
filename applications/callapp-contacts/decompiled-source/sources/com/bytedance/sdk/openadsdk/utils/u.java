package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/u.class */
public class u {
    public static void a(Context context, String str) {
        if (!(context instanceof Activity)) {
            a(str);
        }
    }

    public static void a(Object obj, String str) {
        if (obj == null) {
            a(str);
        }
    }

    private static void a(String str) {
        throw new IllegalArgumentException(str);
    }

    public static void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            a(str2);
        }
    }

    public static void a(boolean z, String str) {
        if (!z) {
            a(str);
        }
    }
}
