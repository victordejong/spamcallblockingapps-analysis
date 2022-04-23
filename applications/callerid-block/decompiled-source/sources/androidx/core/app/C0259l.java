package androidx.core.app;

import android.app.AppOpsManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.util.HashSet;
/* renamed from: androidx.core.app.l */
/* loaded from: classes-dex2jar.jar:androidx/core/app/l.class */
public final class C0259l {

    /* renamed from: a */
    private final Context f1660a;

    /* renamed from: b */
    private final NotificationManager f1661b;

    static {
        new HashSet();
    }

    private C0259l(Context context) {
        this.f1660a = context;
        this.f1661b = (NotificationManager) context.getSystemService("notification");
    }

    /* renamed from: b */
    public static C0259l m13585b(Context context) {
        return new C0259l(context);
    }

    /* renamed from: a */
    public boolean m13586a() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            return this.f1661b.areNotificationsEnabled();
        }
        boolean z = true;
        if (i >= 19) {
            AppOpsManager appOpsManager = (AppOpsManager) this.f1660a.getSystemService("appops");
            ApplicationInfo applicationInfo = this.f1660a.getApplicationInfo();
            String packageName = this.f1660a.getApplicationContext().getPackageName();
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
