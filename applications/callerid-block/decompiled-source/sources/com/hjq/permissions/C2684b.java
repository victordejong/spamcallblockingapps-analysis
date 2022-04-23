package com.hjq.permissions;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
/* renamed from: com.hjq.permissions.b */
/* loaded from: classes2-dex2jar.jar:com/hjq/permissions/b.class */
final class C2684b {

    /* renamed from: a */
    private static final String f11239a = Build.MANUFACTURER.toLowerCase();

    /* renamed from: a */
    private static Intent m2173a(Context context) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", context.getPackageName(), null));
        return intent;
    }

    /* renamed from: b */
    private static boolean m2172b(Context context, Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    /* renamed from: c */
    private static Intent m2171c(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.permissionmanager.ui.MainActivity"));
        if (m2172b(context, intent)) {
            return intent;
        }
        intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.systemmanager.addviewmonitor.AddViewMonitorActivity"));
        if (m2172b(context, intent)) {
            return intent;
        }
        intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.notificationmanager.ui.NotificationManagmentActivity"));
        return intent;
    }

    /* renamed from: d */
    private static Intent m2170d(Context context) {
        Intent intent = new Intent("com.meizu.safe.security.SHOW_APPSEC");
        intent.putExtra("packageName", context.getPackageName());
        intent.setComponent(new ComponentName("com.meizu.safe", "com.meizu.safe.security.AppSecActivity"));
        return intent;
    }

    /* renamed from: e */
    private static Intent m2169e(Context context) {
        Intent intent = new Intent();
        intent.putExtra("packageName", context.getPackageName());
        intent.setClassName("com.color.safecenter", "com.color.safecenter.permission.floatwindow.FloatWindowListActivity");
        if (m2172b(context, intent)) {
            return intent;
        }
        intent.setClassName("com.coloros.safecenter", "com.coloros.safecenter.sysfloatwindow.FloatWindowListActivity");
        if (m2172b(context, intent)) {
            return intent;
        }
        intent.setClassName("com.oppo.safe", "com.oppo.safe.permission.PermissionAppListActivity");
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0066, code lost:
        if (m2172b(r3, r5) == false) goto L_0x0069;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2168f(android.content.Context r3, boolean r4) {
        /*
            java.lang.String r0 = com.hjq.permissions.C2684b.f11239a
            r5 = r0
            r0 = r5
            java.lang.String r1 = "huawei"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x0015
            r0 = r3
            android.content.Intent r0 = m2171c(r0)
            r5 = r0
            goto L_0x005b
        L_0x0015:
            r0 = r5
            java.lang.String r1 = "xiaomi"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x0026
            r0 = r3
            android.content.Intent r0 = m2166h(r0)
            r5 = r0
            goto L_0x005b
        L_0x0026:
            r0 = r5
            java.lang.String r1 = "oppo"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x0037
            r0 = r3
            android.content.Intent r0 = m2169e(r0)
            r5 = r0
            goto L_0x005b
        L_0x0037:
            r0 = r5
            java.lang.String r1 = "vivo"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x0048
            r0 = r3
            android.content.Intent r0 = m2167g(r0)
            r5 = r0
            goto L_0x005b
        L_0x0048:
            r0 = r5
            java.lang.String r1 = "meizu"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x0059
            r0 = r3
            android.content.Intent r0 = m2170d(r0)
            r5 = r0
            goto L_0x005b
        L_0x0059:
            r0 = 0
            r5 = r0
        L_0x005b:
            r0 = r5
            if (r0 == 0) goto L_0x0069
            r0 = r5
            r6 = r0
            r0 = r3
            r1 = r5
            boolean r0 = m2172b(r0, r1)
            if (r0 != 0) goto L_0x006e
        L_0x0069:
            r0 = r3
            android.content.Intent r0 = m2173a(r0)
            r6 = r0
        L_0x006e:
            r0 = r4
            if (r0 == 0) goto L_0x0079
            r0 = r6
            r1 = 268435456(0x10000000, float:2.5243549E-29)
            android.content.Intent r0 = r0.addFlags(r1)
        L_0x0079:
            r0 = r3
            r1 = r6
            r0.startActivity(r1)     // Catch: Exception -> 0x0081
            goto L_0x008a
        L_0x0081:
            r5 = move-exception
            r0 = r3
            r1 = r3
            android.content.Intent r1 = m2173a(r1)
            r0.startActivity(r1)
        L_0x008a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hjq.permissions.C2684b.m2168f(android.content.Context, boolean):void");
    }

    /* renamed from: g */
    private static Intent m2167g(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.iqoo.secure", "com.iqoo.secure.ui.phoneoptimize.FloatWindowManager");
        intent.putExtra("packagename", context.getPackageName());
        if (m2172b(context, intent)) {
            return intent;
        }
        intent.setComponent(new ComponentName("com.iqoo.secure", "com.iqoo.secure.safeguard.SoftPermissionDetailActivity"));
        return intent;
    }

    /* renamed from: h */
    private static Intent m2166h(Context context) {
        Intent intent = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent.putExtra("extra_pkgname", context.getPackageName());
        if (m2172b(context, intent)) {
            return intent;
        }
        intent.setPackage("com.miui.securitycenter");
        if (m2172b(context, intent)) {
            return intent;
        }
        intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
        if (m2172b(context, intent)) {
            return intent;
        }
        intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity");
        return intent;
    }
}
