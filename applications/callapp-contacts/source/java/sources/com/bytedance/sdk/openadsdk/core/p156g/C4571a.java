package com.bytedance.sdk.openadsdk.core.p156g;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Build;
import com.bytedance.sdk.openadsdk.utils.C5478q;
/* renamed from: com.bytedance.sdk.openadsdk.core.g.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/g/a.class */
public class C4571a {

    /* renamed from: a */
    private static final String f16667a = "a";

    /* renamed from: a */
    public static boolean m34986a(Context context, String str) {
        return Build.VERSION.SDK_INT >= 19 ? m34985b(context, str) : m34984c(context, str);
    }

    /* renamed from: b */
    private static boolean m34985b(Context context, String str) {
        String str2 = f16667a;
        C5478q.m32106e(str2, "checkPermissinKITKATNew，permission：".concat(String.valueOf(str)));
        boolean z = true;
        try {
            str.hashCode();
            String lowerCase = str.replaceFirst("android.permission.", "android:").toLowerCase();
            int checkOp = ((AppOpsManager) context.getSystemService("appops")).checkOp(lowerCase, Binder.getCallingUid(), context.getPackageName());
            StringBuilder sb = new StringBuilder("checkPermissinKITKATNew，locationOp,permission：");
            sb.append(checkOp);
            sb.append(",");
            sb.append(lowerCase);
            C5478q.m32106e(str2, sb.toString());
            z = true;
            if (checkOp != 0) {
                z = false;
                C5478q.m32106e(str2, "checkPermissinKITKATNew，false,permission：".concat(String.valueOf(lowerCase)));
                z = false;
            }
        } catch (Exception e) {
            C5478q.m32106e(f16667a, "权限检查出错时默认返回有权限，异常代码：".concat(String.valueOf(e)));
        }
        return z;
    }

    /* renamed from: c */
    private static boolean m34984c(Context context, String str) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }
}
