package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
/* renamed from: androidx.core.app.f */
/* loaded from: classes-dex2jar.jar:androidx/core/app/f.class */
public final class C0563f {
    /* renamed from: a */
    public static Intent m33457a(Activity activity) {
        Intent parentActivityIntent;
        if (Build.VERSION.SDK_INT < 16 || (parentActivityIntent = activity.getParentActivityIntent()) == null) {
            String m33455c = m33455c(activity);
            if (m33455c == null) {
                return null;
            }
            ComponentName componentName = new ComponentName(activity, m33455c);
            try {
                return m33454d(activity, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + m33455c + "' in manifest");
                return null;
            }
        }
        return parentActivityIntent;
    }

    /* renamed from: b */
    public static Intent m33456b(Context context, ComponentName componentName) {
        String m33454d = m33454d(context, componentName);
        if (m33454d == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), m33454d);
        return m33454d(context, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    /* renamed from: c */
    public static String m33455c(Activity activity) {
        try {
            return m33454d(activity, activity.getComponentName());
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: d */
    public static String m33454d(Context context, ComponentName componentName) {
        String string;
        String str;
        PackageManager packageManager = context.getPackageManager();
        int i = Build.VERSION.SDK_INT;
        int i2 = 640;
        if (i >= 29) {
            i2 = 269222528;
        } else if (i >= 24) {
            i2 = 787072;
        }
        ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, i2);
        if (i < 16 || (str = activityInfo.parentActivityName) == null) {
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
        return str;
    }

    /* renamed from: e */
    public static void m33453e(Activity activity, Intent intent) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.navigateUpTo(intent);
            return;
        }
        intent.addFlags(67108864);
        activity.startActivity(intent);
        activity.finish();
    }

    /* renamed from: f */
    public static boolean m33452f(Activity activity, Intent intent) {
        if (Build.VERSION.SDK_INT >= 16) {
            return activity.shouldUpRecreateTask(intent);
        }
        String action = activity.getIntent().getAction();
        return action != null && !action.equals("android.intent.action.MAIN");
    }
}
