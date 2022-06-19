package androidx.core.app;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
/* renamed from: androidx.core.app.c */
/* loaded from: classes-dex2jar.jar:androidx/core/app/c.class */
public final class C0466c {
    /* renamed from: a */
    public static int m20807a(Context context, String str, String str2) {
        return Build.VERSION.SDK_INT >= 23 ? ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(str, str2) : 1;
    }

    /* renamed from: a */
    public static String m20806a(String str) {
        return Build.VERSION.SDK_INT >= 23 ? AppOpsManager.permissionToOp(str) : null;
    }
}
