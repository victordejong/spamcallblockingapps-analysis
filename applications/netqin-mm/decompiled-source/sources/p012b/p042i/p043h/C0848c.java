package p012b.p042i.p043h;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
/* renamed from: b.i.h.c */
/* loaded from: classes-dex2jar.jar:b/i/h/c.class */
public final class C0848c {
    /* renamed from: a */
    public static int m35785a(Context context, String str, String str2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(str, str2);
        }
        return 1;
    }

    /* renamed from: a */
    public static String m35784a(String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return AppOpsManager.permissionToOp(str);
        }
        return null;
    }
}
