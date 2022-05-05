package com.tmobile.services.nameid.utility;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/PermissionChecker.class */
public class PermissionChecker {
    private PermissionChecker() {
        throw new IllegalAccessError("This is a utility class, no need to create it");
    }

    /* renamed from: a */
    public static boolean m5424a(Activity activity) {
        boolean f = m5419f(activity);
        boolean z = false;
        boolean b = PreferenceUtils.m5395b("PREF_USER_HAS_DENIED_CONTACTS", false);
        if (f || !b) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m5423b(Context context) {
        return ContextCompat.m19678a(context, "android.permission.READ_CONTACTS") == 0;
    }

    /* renamed from: c */
    public static boolean m5422c() {
        return PreferenceUtils.m5395b("PREF_USER_HAS_DENIED_CONTACTS", false);
    }

    /* renamed from: d */
    public static void m5421d(Activity activity) {
        LogUtil.m5639h("PermissionsHandling#requestPermission", "asking for contact permissions");
        ActivityCompat.m19856n(activity, new String[]{"android.permission.READ_CONTACTS"}, 2);
    }

    /* renamed from: e */
    public static boolean m5420e(Activity activity) {
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 23) {
            z = false;
            if (!activity.shouldShowRequestPermissionRationale("android.permission.READ_CONTACTS")) {
                z = false;
                if (!m5423b(activity)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public static boolean m5419f(Activity activity) {
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale("android.permission.READ_CONTACTS");
        }
        return false;
    }
}
