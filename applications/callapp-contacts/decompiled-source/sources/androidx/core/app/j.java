package androidx.core.app;

import android.app.AppOpsManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/core/app/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f1761a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static Set<String> f1762b = new HashSet();
    private static final Object e = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final Context f1763c;

    /* renamed from: d  reason: collision with root package name */
    private final NotificationManager f1764d;

    private j(Context context) {
        this.f1763c = context;
        this.f1764d = (NotificationManager) context.getSystemService("notification");
    }

    public static j a(Context context) {
        return new j(context);
    }

    public final boolean a() {
        if (Build.VERSION.SDK_INT >= 24) {
            return this.f1764d.areNotificationsEnabled();
        }
        if (Build.VERSION.SDK_INT < 19) {
            return true;
        }
        AppOpsManager appOpsManager = (AppOpsManager) this.f1763c.getSystemService("appops");
        ApplicationInfo applicationInfo = this.f1763c.getApplicationInfo();
        String packageName = this.f1763c.getApplicationContext().getPackageName();
        int i = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            return ((Integer) cls.getMethod("checkOpNoThrow", Integer.TYPE, Integer.TYPE, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i), packageName)).intValue() == 0;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException e2) {
            return true;
        }
    }
}
