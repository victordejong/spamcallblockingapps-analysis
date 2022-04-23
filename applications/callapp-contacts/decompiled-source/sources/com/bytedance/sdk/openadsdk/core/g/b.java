package com.bytedance.sdk.openadsdk.core.g;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Process;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/g/b.class */
public class b {
    public static int a(Context context, String str) {
        if (str != null) {
            try {
                return context.checkPermission(str, Process.myPid(), Process.myUid());
            } catch (Throwable th) {
                th.printStackTrace();
                return Build.VERSION.SDK_INT >= 23 ? -1 : 0;
            }
        } else {
            throw new IllegalArgumentException("permission is null");
        }
    }

    public static void a(Activity activity, String[] strArr, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            activity.requestPermissions(strArr, i);
        }
    }
}
