package com.bytedance.sdk.openadsdk.g.a;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/x.class */
class x {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f9579a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return "{\"code\":1}";
        }
        String substring = f9579a ? str.substring(1, str.length() - 1) : "";
        String concat = "{\"code\":1,\"__data\":".concat(String.valueOf(str));
        if (!substring.isEmpty()) {
            str2 = concat + "," + substring + "}";
        } else {
            str2 = concat + "}";
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Throwable th) {
        StringBuilder sb = new StringBuilder("{\"code\":");
        sb.append(th instanceof r ? ((r) th).f9549a : 0);
        sb.append("}");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(boolean z) {
        f9579a = z;
    }
}
