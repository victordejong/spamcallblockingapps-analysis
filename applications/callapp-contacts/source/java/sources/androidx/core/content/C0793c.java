package androidx.core.content;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
/* renamed from: androidx.core.content.c */
/* loaded from: classes-dex2jar.jar:androidx/core/content/c.class */
public final class C0793c {
    private C0793c() {
    }

    /* renamed from: a */
    public static int m44489a(Context context, String str) {
        return m44488a(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }

    /* renamed from: a */
    private static int m44488a(Context context, String str, int i, int i2, String str2) {
        if (context.checkPermission(str, i, i2) == -1) {
            return -1;
        }
        String permissionToOp = Build.VERSION.SDK_INT >= 23 ? AppOpsManager.permissionToOp(str) : null;
        if (permissionToOp == null) {
            return 0;
        }
        String str3 = str2;
        if (str2 == null) {
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(i2);
            if (packagesForUid == null || packagesForUid.length <= 0) {
                return -1;
            }
            str3 = packagesForUid[0];
        }
        return (Build.VERSION.SDK_INT >= 23 ? ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(permissionToOp, str3) : 1) != 0 ? -2 : 0;
    }
}
