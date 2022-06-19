package p026c0;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
/* renamed from: c0.f */
/* loaded from: classes-dex2jar.jar:c0/f.class */
public final class C0785f {

    /* renamed from: c0.f$a */
    /* loaded from: classes-dex2jar.jar:c0/f$a.class */
    public static class C0786a {
        /* renamed from: a */
        public static int m7378a(AppOpsManager appOpsManager, String str, int i, String str2) {
            if (appOpsManager == null) {
                return 1;
            }
            return appOpsManager.checkOpNoThrow(str, i, str2);
        }

        /* renamed from: b */
        public static String m7377b(Context context) {
            return context.getOpPackageName();
        }

        /* renamed from: c */
        public static AppOpsManager m7376c(Context context) {
            return (AppOpsManager) context.getSystemService(AppOpsManager.class);
        }
    }

    /* renamed from: a */
    public static int m7379a(Context context, String str, String str2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(str, str2);
        }
        return 1;
    }
}
