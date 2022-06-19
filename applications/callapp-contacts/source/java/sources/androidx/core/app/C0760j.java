package androidx.core.app;

import android.app.AppOpsManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.util.HashSet;
import java.util.Set;
/* renamed from: androidx.core.app.j */
/* loaded from: classes-dex2jar.jar:androidx/core/app/j.class */
public final class C0760j {

    /* renamed from: a */
    private static final Object f3397a = new Object();

    /* renamed from: b */
    private static Set<String> f3398b = new HashSet();

    /* renamed from: e */
    private static final Object f3399e = new Object();

    /* renamed from: c */
    private final Context f3400c;

    /* renamed from: d */
    private final NotificationManager f3401d;

    private C0760j(Context context) {
        this.f3400c = context;
        this.f3401d = (NotificationManager) context.getSystemService("notification");
    }

    /* renamed from: a */
    public static C0760j m44538a(Context context) {
        return new C0760j(context);
    }

    /* renamed from: a */
    public final boolean m44539a() {
        if (Build.VERSION.SDK_INT >= 24) {
            return this.f3401d.areNotificationsEnabled();
        }
        if (Build.VERSION.SDK_INT < 19) {
            return true;
        }
        AppOpsManager appOpsManager = (AppOpsManager) this.f3400c.getSystemService("appops");
        ApplicationInfo applicationInfo = this.f3400c.getApplicationInfo();
        String packageName = this.f3400c.getApplicationContext().getPackageName();
        int i = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            return ((Integer) cls.getMethod("checkOpNoThrow", Integer.TYPE, Integer.TYPE, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i), packageName)).intValue() == 0;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException e) {
            return true;
        }
    }
}
