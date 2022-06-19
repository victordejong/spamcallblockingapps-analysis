package androidx.core.app;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
/* renamed from: androidx.core.app.c */
/* loaded from: classes-dex2jar.jar:androidx/core/app/c.class */
public final class C0437c {
    /* renamed from: a */
    public static int m6661a(Context context, String str, String str2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(str, str2);
        }
        return 1;
    }

    /* renamed from: a */
    public static String m6660a(String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return AppOpsManager.permissionToOp(str);
        }
        return null;
    }
}
