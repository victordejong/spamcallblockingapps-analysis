package com.bytedance.sdk.openadsdk.multipro;

import android.text.TextUtils;
import android.util.Base64;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/c.class */
public class C5097c {
    /* renamed from: a */
    public static String m33080a(String str) {
        return TextUtils.isEmpty(str) ? "" : Base64.encodeToString(str.getBytes(), 10);
    }

    /* renamed from: b */
    public static String m33079b(String str) {
        return TextUtils.isEmpty(str) ? "" : new String(Base64.decode(str, 10));
    }
}
