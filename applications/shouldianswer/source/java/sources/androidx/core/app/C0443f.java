package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
/* renamed from: androidx.core.app.f */
/* loaded from: classes-dex2jar.jar:androidx/core/app/f.class */
public final class C0443f {
    /* renamed from: a */
    public static Intent m6654a(Activity activity) {
        Intent parentActivityIntent;
        if (Build.VERSION.SDK_INT < 16 || (parentActivityIntent = activity.getParentActivityIntent()) == null) {
            String m6651b = m6651b(activity);
            if (m6651b == null) {
                return null;
            }
            ComponentName componentName = new ComponentName(activity, m6651b);
            try {
                return m6649b(activity, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + m6651b + "' in manifest");
                return null;
            }
        }
        return parentActivityIntent;
    }

    /* renamed from: a */
    public static Intent m6652a(Context context, ComponentName componentName) {
        String m6649b = m6649b(context, componentName);
        if (m6649b == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), m6649b);
        return m6649b(context, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    /* renamed from: a */
    public static boolean m6653a(Activity activity, Intent intent) {
        if (Build.VERSION.SDK_INT >= 16) {
            return activity.shouldUpRecreateTask(intent);
        }
        String action = activity.getIntent().getAction();
        return action != null && !action.equals("android.intent.action.MAIN");
    }

    /* renamed from: b */
    public static String m6651b(Activity activity) {
        try {
            return m6649b(activity, activity.getComponentName());
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: b */
    public static String m6649b(Context context, ComponentName componentName) {
        String string;
        String str;
        PackageManager packageManager = context.getPackageManager();
        int i = Build.VERSION.SDK_INT;
        ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 640);
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

    /* renamed from: b */
    public static void m6650b(Activity activity, Intent intent) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.navigateUpTo(intent);
            return;
        }
        intent.addFlags(67108864);
        activity.startActivity(intent);
        activity.finish();
    }
}
