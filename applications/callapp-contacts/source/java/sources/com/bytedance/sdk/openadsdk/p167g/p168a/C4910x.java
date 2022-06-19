package com.bytedance.sdk.openadsdk.p167g.p168a;

import android.text.TextUtils;
/* renamed from: com.bytedance.sdk.openadsdk.g.a.x */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/x.class */
class C4910x {

    /* renamed from: a */
    private static boolean f17918a;

    /* renamed from: a */
    public static String m33591a() {
        return "";
    }

    /* renamed from: a */
    public static String m33590a(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return "{\"code\":1}";
        }
        String substring = f17918a ? str.substring(1, str.length() - 1) : "";
        String concat = "{\"code\":1,\"__data\":".concat(String.valueOf(str));
        if (!substring.isEmpty()) {
            str2 = concat + "," + substring + "}";
        } else {
            str2 = concat + "}";
        }
        return str2;
    }

    /* renamed from: a */
    public static String m33589a(Throwable th) {
        StringBuilder sb = new StringBuilder("{\"code\":");
        sb.append(th instanceof C4898r ? ((C4898r) th).f17886a : 0);
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: a */
    public static void m33588a(boolean z) {
        f17918a = z;
    }
}
