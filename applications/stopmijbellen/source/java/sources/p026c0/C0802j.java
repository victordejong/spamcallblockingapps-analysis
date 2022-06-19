package p026c0;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
/* renamed from: c0.j */
/* loaded from: classes-dex2jar.jar:c0/j.class */
public final class C0802j {
    /* renamed from: a */
    public static Intent m7363a(Activity activity) {
        Intent parentActivityIntent = activity.getParentActivityIntent();
        if (parentActivityIntent != null) {
            return parentActivityIntent;
        }
        try {
            String m7361c = m7361c(activity, activity.getComponentName());
            if (m7361c == null) {
                return null;
            }
            ComponentName componentName = new ComponentName(activity, m7361c);
            try {
                return m7361c(activity, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    /* renamed from: b */
    public static Intent m7362b(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
        String m7361c = m7361c(context, componentName);
        if (m7361c == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), m7361c);
        return m7361c(context, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    /* renamed from: c */
    public static String m7361c(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
        String string;
        PackageManager packageManager = context.getPackageManager();
        int i = Build.VERSION.SDK_INT;
        int i2 = 640;
        if (i >= 29) {
            i2 = 269222528;
        } else if (i >= 24) {
            i2 = 787072;
        }
        ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, i2);
        String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        Bundle bundle = activityInfo.metaData;
        if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        String str2 = string;
        if (string.charAt(0) == '.') {
            str2 = context.getPackageName() + string;
        }
        return str2;
    }
}
