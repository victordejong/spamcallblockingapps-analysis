package p026c0;

import android.app.AppOpsManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.util.HashSet;
/* renamed from: c0.q */
/* loaded from: classes-dex2jar.jar:c0/q.class */
public final class C0809q {

    /* renamed from: a */
    public final Context f2988a;

    /* renamed from: b */
    public final NotificationManager f2989b;

    static {
        new HashSet();
    }

    public C0809q(Context context) {
        this.f2988a = context;
        this.f2989b = (NotificationManager) context.getSystemService("notification");
    }

    /* renamed from: a */
    public boolean m7349a() {
        if (Build.VERSION.SDK_INT >= 24) {
            return this.f2989b.areNotificationsEnabled();
        }
        AppOpsManager appOpsManager = (AppOpsManager) this.f2988a.getSystemService("appops");
        ApplicationInfo applicationInfo = this.f2988a.getApplicationInfo();
        String packageName = this.f2988a.getApplicationContext().getPackageName();
        int i = applicationInfo.uid;
        boolean z = true;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            Class<?> cls2 = Integer.TYPE;
            if (((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i), packageName)).intValue() != 0) {
                z = false;
            }
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException e) {
        }
        return z;
    }
}
