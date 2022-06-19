package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
/* renamed from: androidx.core.app.f */
/* loaded from: classes-dex2jar.jar:androidx/core/app/f.class */
public final class C0470f {
    /* renamed from: a */
    public static Intent m20801a(Activity activity) {
        Intent intent;
        Intent parentActivityIntent;
        if (Build.VERSION.SDK_INT < 16 || (parentActivityIntent = activity.getParentActivityIntent()) == null) {
            String m20798b = m20798b(activity);
            if (m20798b == null) {
                intent = null;
            } else {
                ComponentName componentName = new ComponentName(activity, m20798b);
                try {
                    intent = m20796b(activity, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
                } catch (PackageManager.NameNotFoundException e) {
                    Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + m20798b + "' in manifest");
                    intent = null;
                }
            }
        } else {
            intent = parentActivityIntent;
        }
        return intent;
    }

    /* renamed from: a */
    public static Intent m20799a(Context context, ComponentName componentName) {
        Intent makeMainActivity;
        String m20796b = m20796b(context, componentName);
        if (m20796b == null) {
            makeMainActivity = null;
        } else {
            ComponentName componentName2 = new ComponentName(componentName.getPackageName(), m20796b);
            makeMainActivity = m20796b(context, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
        }
        return makeMainActivity;
    }

    /* renamed from: a */
    public static boolean m20800a(Activity activity, Intent intent) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 16) {
            z = activity.shouldUpRecreateTask(intent);
        } else {
            String action = activity.getIntent().getAction();
            z = action != null && !action.equals("android.intent.action.MAIN");
        }
        return z;
    }

    /* renamed from: b */
    public static String m20798b(Activity activity) {
        try {
            return m20796b(activity, activity.getComponentName());
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0024, code lost:
        if (r5 != null) goto L8;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m20796b(android.content.Context r4, android.content.ComponentName r5) {
        /*
            r0 = r4
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            r6 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 24
            if (r0 < r1) goto Ld
        Ld:
            r0 = r6
            r1 = r5
            r2 = 640(0x280, float:8.97E-43)
            android.content.pm.ActivityInfo r0 = r0.getActivityInfo(r1, r2)
            r6 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 16
            if (r0 < r1) goto L29
            r0 = r6
            java.lang.String r0 = r0.parentActivityName
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L29
        L27:
            r0 = r5
            return r0
        L29:
            r0 = r6
            android.os.Bundle r0 = r0.metaData
            if (r0 != 0) goto L35
            r0 = 0
            r5 = r0
            goto L27
        L35:
            r0 = r6
            android.os.Bundle r0 = r0.metaData
            java.lang.String r1 = "android.support.PARENT_ACTIVITY"
            java.lang.String r0 = r0.getString(r1)
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L48
            r0 = 0
            r5 = r0
            goto L27
        L48:
            r0 = r6
            r5 = r0
            r0 = r6
            r1 = 0
            char r0 = r0.charAt(r1)
            r1 = 46
            if (r0 != r1) goto L27
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r1 = r4
            java.lang.String r1 = r1.getPackageName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r5 = r0
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.C0470f.m20796b(android.content.Context, android.content.ComponentName):java.lang.String");
    }

    /* renamed from: b */
    public static void m20797b(Activity activity, Intent intent) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.navigateUpTo(intent);
            return;
        }
        intent.addFlags(67108864);
        activity.startActivity(intent);
        activity.finish();
    }
}
