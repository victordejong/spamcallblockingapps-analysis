package com.bytedance.sdk.openadsdk.core.g;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Build;
import com.bytedance.sdk.openadsdk.utils.q;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/g/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8940a = "a";

    public static boolean a(Context context, String str) {
        return Build.VERSION.SDK_INT >= 19 ? b(context, str) : c(context, str);
    }

    private static boolean b(Context context, String str) {
        String str2 = f8940a;
        q.e(str2, "checkPermissinKITKATNew，permission：".concat(String.valueOf(str)));
        r10 = true;
        boolean z = true;
        try {
            str.hashCode();
            String lowerCase = str.replaceFirst("android.permission.", "android:").toLowerCase();
            int checkOp = ((AppOpsManager) context.getSystemService("appops")).checkOp(lowerCase, Binder.getCallingUid(), context.getPackageName());
            StringBuilder sb = new StringBuilder("checkPermissinKITKATNew，locationOp,permission：");
            sb.append(checkOp);
            sb.append(",");
            sb.append(lowerCase);
            q.e(str2, sb.toString());
            if (checkOp != 0) {
                z = false;
                z = false;
                q.e(str2, "checkPermissinKITKATNew，false,permission：".concat(String.valueOf(lowerCase)));
            }
        } catch (Exception e) {
            q.e(f8940a, "权限检查出错时默认返回有权限，异常代码：".concat(String.valueOf(e)));
        }
        return z;
    }

    private static boolean c(Context context, String str) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }
}
