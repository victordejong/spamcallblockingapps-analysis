package com.hjq.permissions;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.hjq.permissions.c */
/* loaded from: classes2-dex2jar.jar:com/hjq/permissions/c.class */
final class C2685c {
    /* renamed from: a */
    public static boolean m2165a(Activity activity, List<String> list) {
        for (String str : list) {
            if (m2163c(activity, str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static void m2164b(Activity activity, List<String> list) {
        List<String> m2159g = m2159g(activity);
        if (m2159g == null || m2159g.size() == 0) {
            throw new ManifestRegisterException(null);
        }
        for (String str : list) {
            if (!m2159g.contains(str)) {
                throw new ManifestRegisterException(str);
            }
        }
    }

    /* renamed from: c */
    static boolean m2163c(Activity activity, String str) {
        if (str.equals("android.permission.REQUEST_INSTALL_PACKAGES") || str.equals("android.permission.SYSTEM_ALERT_WINDOW")) {
            return false;
        }
        return ((!str.equals("android.permission.ANSWER_PHONE_CALLS") && !str.equals("android.permission.READ_PHONE_NUMBERS")) || m2154l()) && m2155k() && activity.checkSelfPermission(str) == -1 && !activity.shouldShowRequestPermissionRationale(str);
    }

    /* renamed from: d */
    public static void m2162d(Context context, List<String> list) {
        if (list.contains("android.permission.REQUEST_INSTALL_PACKAGES") || list.contains("android.permission.ANSWER_PHONE_CALLS") || list.contains("android.permission.READ_PHONE_NUMBERS")) {
            if (context.getApplicationInfo().targetSdkVersion < 26) {
                throw new RuntimeException("The targetSdkVersion SDK must be 26 or more");
            }
        } else if (context.getApplicationInfo().targetSdkVersion < 23) {
            throw new RuntimeException("The targetSdkVersion SDK must be 23 or more");
        }
    }

    /* renamed from: e */
    public static ArrayList<String> m2161e(Context context, List<String> list) {
        ArrayList<String> arrayList;
        ArrayList<String> arrayList2 = null;
        if (!m2155k()) {
            return null;
        }
        for (String str : list) {
            if (str.equals("android.permission.REQUEST_INSTALL_PACKAGES")) {
                if (!m2157i(context)) {
                    arrayList = arrayList2;
                    if (arrayList2 == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(str);
                    arrayList2 = arrayList;
                }
            } else if (str.equals("android.permission.SYSTEM_ALERT_WINDOW")) {
                if (!m2156j(context)) {
                    arrayList = arrayList2;
                    if (arrayList2 == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(str);
                    arrayList2 = arrayList;
                }
            } else if ((!str.equals("android.permission.ANSWER_PHONE_CALLS") && !str.equals("android.permission.READ_PHONE_NUMBERS")) || m2154l()) {
                if (context.checkSelfPermission(str) == -1) {
                    arrayList = arrayList2;
                    if (arrayList2 == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(str);
                    arrayList2 = arrayList;
                }
            }
        }
        return arrayList2;
    }

    /* renamed from: f */
    public static List<String> m2160f(String[] strArr, int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < iArr.length; i++) {
            if (iArr[i] == -1) {
                arrayList.add(strArr[i]);
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    public static List<String> m2159g(Context context) {
        try {
            return Arrays.asList(context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: h */
    public static List<String> m2158h(String[] strArr, int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < iArr.length; i++) {
            if (iArr[i] == 0) {
                arrayList.add(strArr[i]);
            }
        }
        return arrayList;
    }

    /* renamed from: i */
    public static boolean m2157i(Context context) {
        if (m2154l()) {
            return context.getPackageManager().canRequestPackageInstalls();
        }
        return true;
    }

    /* renamed from: j */
    public static boolean m2156j(Context context) {
        if (m2155k()) {
            return Settings.canDrawOverlays(context);
        }
        return true;
    }

    /* renamed from: k */
    public static boolean m2155k() {
        return Build.VERSION.SDK_INT >= 23;
    }

    /* renamed from: l */
    public static boolean m2154l() {
        return Build.VERSION.SDK_INT >= 26;
    }

    /* renamed from: m */
    public static boolean m2153m(Activity activity, List<String> list) {
        for (String str : list) {
            if (!m2163c(activity, str)) {
                return true;
            }
        }
        return false;
    }
}
