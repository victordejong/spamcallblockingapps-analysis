package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
/* renamed from: androidx.core.app.e */
/* loaded from: classes-dex2jar.jar:androidx/core/app/e.class */
public final class C0743e {
    private C0743e() {
    }

    /* renamed from: a */
    public static Intent m44591a(Activity activity) {
        Intent parentActivityIntent;
        if (Build.VERSION.SDK_INT < 16 || (parentActivityIntent = activity.getParentActivityIntent()) == null) {
            String m44589b = m44589b(activity);
            if (m44589b == null) {
                return null;
            }
            ComponentName componentName = new ComponentName(activity, m44589b);
            try {
                return m44588b(activity, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + m44589b + "' in manifest");
                return null;
            }
        }
        return parentActivityIntent;
    }

    /* renamed from: a */
    public static Intent m44590a(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
        String m44588b = m44588b(context, componentName);
        if (m44588b == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), m44588b);
        return m44588b(context, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    /* renamed from: b */
    public static String m44589b(Activity activity) {
        try {
            return m44588b(activity, activity.getComponentName());
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: b */
    private static String m44588b(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
        String string;
        String str;
        PackageManager packageManager = context.getPackageManager();
        int i = Build.VERSION.SDK_INT;
        ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, Build.VERSION.SDK_INT >= 29 ? 269222528 : Build.VERSION.SDK_INT >= 24 ? 787072 : 640);
        if (Build.VERSION.SDK_INT < 16 || (str = activityInfo.parentActivityName) == null) {
            if (activityInfo.metaData == null || (string = activityInfo.metaData.getString("android.support.PARENT_ACTIVITY")) == null) {
                return null;
            }
            String str2 = string;
            if (string.charAt(0) == '.') {
                str2 = context.getPackageName() + string;
            }
            return str2;
        }
        return str;
    }
}
