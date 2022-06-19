package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
/* renamed from: com.bytedance.sdk.openadsdk.utils.u */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/u.class */
public class C5483u {
    /* renamed from: a */
    public static void m32084a(Context context, String str) {
        if (!(context instanceof Activity)) {
            m32082a(str);
        }
    }

    /* renamed from: a */
    public static void m32083a(Object obj, String str) {
        if (obj == null) {
            m32082a(str);
        }
    }

    /* renamed from: a */
    private static void m32082a(String str) {
        throw new IllegalArgumentException(str);
    }

    /* renamed from: a */
    public static void m32081a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            m32082a(str2);
        }
    }

    /* renamed from: a */
    public static void m32080a(boolean z, String str) {
        if (!z) {
            m32082a(str);
        }
    }
}
