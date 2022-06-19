package com.bytedance.sdk.openadsdk.core.p156g;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Process;
/* renamed from: com.bytedance.sdk.openadsdk.core.g.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/g/b.class */
public class C4572b {
    /* renamed from: a */
    public static int m34982a(Context context, String str) {
        if (str != null) {
            try {
                return context.checkPermission(str, Process.myPid(), Process.myUid());
            } catch (Throwable th) {
                th.printStackTrace();
                return Build.VERSION.SDK_INT >= 23 ? -1 : 0;
            }
        }
        throw new IllegalArgumentException("permission is null");
    }

    /* renamed from: a */
    public static void m34983a(Activity activity, String[] strArr, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            activity.requestPermissions(strArr, i);
        }
    }
}
