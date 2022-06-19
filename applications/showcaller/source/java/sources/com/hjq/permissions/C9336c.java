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
final class C9336c {
    /* renamed from: a */
    public static boolean m1057a(Activity activity, List<String> list) {
        for (String str : list) {
            if (m1055c(activity, str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static void m1056b(Activity activity, List<String> list) {
        List<String> m1051g = m1051g(activity);
        if (m1051g == null || m1051g.size() == 0) {
            throw new ManifestRegisterException(null);
        }
        for (String str : list) {
            if (!m1051g.contains(str)) {
                throw new ManifestRegisterException(str);
            }
        }
    }

    /* renamed from: c */
    static boolean m1055c(Activity activity, String str) {
        if (str.equals("android.permission.REQUEST_INSTALL_PACKAGES") || str.equals("android.permission.SYSTEM_ALERT_WINDOW")) {
            return false;
        }
        return ((!str.equals("android.permission.ANSWER_PHONE_CALLS") && !str.equals("android.permission.READ_PHONE_NUMBERS")) || m1046l()) && m1047k() && activity.checkSelfPermission(str) == -1 && !activity.shouldShowRequestPermissionRationale(str);
    }

    /* renamed from: d */
    public static void m1054d(Context context, List<String> list) {
        if (list.contains("android.permission.REQUEST_INSTALL_PACKAGES") || list.contains("android.permission.ANSWER_PHONE_CALLS") || list.contains("android.permission.READ_PHONE_NUMBERS")) {
            if (context.getApplicationInfo().targetSdkVersion < 26) {
                throw new RuntimeException("The targetSdkVersion SDK must be 26 or more");
            }
        } else if (context.getApplicationInfo().targetSdkVersion < 23) {
            throw new RuntimeException("The targetSdkVersion SDK must be 23 or more");
        }
    }

    /* renamed from: e */
    public static ArrayList<String> m1053e(Context context, List<String> list) {
        if (!m1047k()) {
            return null;
        }
        ArrayList<String> arrayList = null;
        for (String str : list) {
            if (str.equals("android.permission.REQUEST_INSTALL_PACKAGES")) {
                if (!m1049i(context)) {
                    ArrayList<String> arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    arrayList2.add(str);
                    arrayList = arrayList2;
                }
            } else if (str.equals("android.permission.SYSTEM_ALERT_WINDOW")) {
                if (!m1048j(context)) {
                    ArrayList<String> arrayList3 = arrayList;
                    if (arrayList == null) {
                        arrayList3 = new ArrayList<>();
                    }
                    arrayList3.add(str);
                    arrayList = arrayList3;
                }
            } else if ((!str.equals("android.permission.ANSWER_PHONE_CALLS") && !str.equals("android.permission.READ_PHONE_NUMBERS")) || m1046l()) {
                if (context.checkSelfPermission(str) == -1) {
                    ArrayList<String> arrayList4 = arrayList;
                    if (arrayList == null) {
                        arrayList4 = new ArrayList<>();
                    }
                    arrayList4.add(str);
                    arrayList = arrayList4;
                }
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    public static List<String> m1052f(String[] strArr, int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < iArr.length; i++) {
            if (iArr[i] == -1) {
                arrayList.add(strArr[i]);
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    public static List<String> m1051g(Context context) {
        try {
            return Arrays.asList(context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: h */
    public static List<String> m1050h(String[] strArr, int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < iArr.length; i++) {
            if (iArr[i] == 0) {
                arrayList.add(strArr[i]);
            }
        }
        return arrayList;
    }

    /* renamed from: i */
    public static boolean m1049i(Context context) {
        if (m1046l()) {
            return context.getPackageManager().canRequestPackageInstalls();
        }
        return true;
    }

    /* renamed from: j */
    public static boolean m1048j(Context context) {
        if (m1047k()) {
            return Settings.canDrawOverlays(context);
        }
        return true;
    }

    /* renamed from: k */
    public static boolean m1047k() {
        return Build.VERSION.SDK_INT >= 23;
    }

    /* renamed from: l */
    public static boolean m1046l() {
        return Build.VERSION.SDK_INT >= 26;
    }

    /* renamed from: m */
    public static boolean m1045m(Activity activity, List<String> list) {
        for (String str : list) {
            if (!m1055c(activity, str)) {
                return true;
            }
        }
        return false;
    }
}
