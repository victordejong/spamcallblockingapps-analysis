package androidx.core.app;

import android.app.AppOpsManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.util.HashSet;
import java.util.Set;
/* renamed from: androidx.core.app.k */
/* loaded from: classes-dex2jar.jar:androidx/core/app/k.class */
public final class C0578k {

    /* renamed from: a */
    private static final Object f2932a = new Object();

    /* renamed from: b */
    private static Set<String> f2933b = new HashSet();

    /* renamed from: c */
    private static final Object f2934c = new Object();

    /* renamed from: d */
    private final Context f2935d;

    /* renamed from: e */
    private final NotificationManager f2936e;

    private C0578k(Context context) {
        this.f2935d = context;
        this.f2936e = (NotificationManager) context.getSystemService("notification");
    }

    /* renamed from: b */
    public static C0578k m33381b(Context context) {
        return new C0578k(context);
    }

    /* renamed from: a */
    public boolean m33382a() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            return this.f2936e.areNotificationsEnabled();
        }
        boolean z = true;
        if (i >= 19) {
            AppOpsManager appOpsManager = (AppOpsManager) this.f2935d.getSystemService("appops");
            ApplicationInfo applicationInfo = this.f2935d.getApplicationInfo();
            String packageName = this.f2935d.getApplicationContext().getPackageName();
            int i2 = applicationInfo.uid;
            try {
                Class<?> cls = Class.forName(AppOpsManager.class.getName());
                Class<?> cls2 = Integer.TYPE;
                z = ((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i2), packageName)).intValue() == 0;
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException e) {
                z = true;
            }
        }
        return z;
    }
}
