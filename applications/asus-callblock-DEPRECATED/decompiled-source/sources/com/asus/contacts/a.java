package com.asus.contacts;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.SystemProperties;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2576a = a.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f2577b = true;

    public static String a(String str) {
        return SystemProperties.get(str);
    }

    public static String a(String str, String str2) {
        return SystemProperties.get(str, str2);
    }

    public static boolean a() {
        return f2577b;
    }

    public static boolean a(Context context, String str) {
        boolean z = false;
        if (context != null) {
            z = false;
            for (ApplicationInfo applicationInfo : context.getPackageManager().getInstalledApplications(0)) {
                if (applicationInfo.packageName.equals(str)) {
                    z = applicationInfo.enabled;
                }
            }
        }
        return z;
    }

    public static boolean a(String str, boolean z) {
        return SystemProperties.getBoolean(str, z);
    }

    public static int b(String str) {
        return SystemProperties.getInt(str, 0);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0041 -> B:11:0x0024). Please submit an issue!!! */
    public static void b(Context context, String str) {
        if (context != null) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 0);
                if (!(applicationInfo == null || (applicationInfo.flags & 128) == 0)) {
                    f2577b = false;
                }
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
            Log.d(f2576a, "isPreloadChecking:" + f2577b);
        }
    }

    public static String c(String str) {
        int indexOf = str.indexOf(64);
        int i = indexOf;
        if (indexOf < 0) {
            i = str.indexOf("%40");
        }
        int i2 = i;
        if (i < 0) {
            Log.w(f2576a, "getUsernameFromUriNumber: no delimiter found in SIP addr '" + str + "'");
            i2 = str.length();
        }
        return str.substring(0, i2);
    }

    public static boolean d(String str) {
        boolean z;
        int length = str.length();
        while (true) {
            int i = length - 1;
            if (i < 0) {
                z = true;
                break;
            }
            length = i;
            if (!Character.isDigit(str.charAt(i))) {
                z = false;
                break;
            }
        }
        return z;
    }
}
