package com.hjq.permissions;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
/* renamed from: com.hjq.permissions.b */
/* loaded from: classes2-dex2jar.jar:com/hjq/permissions/b.class */
final class C9335b {

    /* renamed from: a */
    private static final String f39930a = Build.MANUFACTURER.toLowerCase();

    /* renamed from: a */
    private static Intent m1065a(Context context) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", context.getPackageName(), null));
        return intent;
    }

    /* renamed from: b */
    private static boolean m1064b(Context context, Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    /* renamed from: c */
    private static Intent m1063c(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.permissionmanager.ui.MainActivity"));
        if (m1064b(context, intent)) {
            return intent;
        }
        intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.systemmanager.addviewmonitor.AddViewMonitorActivity"));
        if (m1064b(context, intent)) {
            return intent;
        }
        intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.notificationmanager.ui.NotificationManagmentActivity"));
        return intent;
    }

    /* renamed from: d */
    private static Intent m1062d(Context context) {
        Intent intent = new Intent("com.meizu.safe.security.SHOW_APPSEC");
        intent.putExtra("packageName", context.getPackageName());
        intent.setComponent(new ComponentName("com.meizu.safe", "com.meizu.safe.security.AppSecActivity"));
        return intent;
    }

    /* renamed from: e */
    private static Intent m1061e(Context context) {
        Intent intent = new Intent();
        intent.putExtra("packageName", context.getPackageName());
        intent.setClassName("com.color.safecenter", "com.color.safecenter.permission.floatwindow.FloatWindowListActivity");
        if (m1064b(context, intent)) {
            return intent;
        }
        intent.setClassName("com.coloros.safecenter", "com.coloros.safecenter.sysfloatwindow.FloatWindowListActivity");
        if (m1064b(context, intent)) {
            return intent;
        }
        intent.setClassName("com.oppo.safe", "com.oppo.safe.permission.PermissionAppListActivity");
        return intent;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0066, code lost:
        if (m1064b(r3, r5) == false) goto L22;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m1060f(android.content.Context r3, boolean r4) {
        /*
            java.lang.String r0 = com.hjq.permissions.C9335b.f39930a
            r5 = r0
            r0 = r5
            java.lang.String r1 = "huawei"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L15
            r0 = r3
            android.content.Intent r0 = m1063c(r0)
            r5 = r0
            goto L5b
        L15:
            r0 = r5
            java.lang.String r1 = "xiaomi"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L26
            r0 = r3
            android.content.Intent r0 = m1058h(r0)
            r5 = r0
            goto L5b
        L26:
            r0 = r5
            java.lang.String r1 = "oppo"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L37
            r0 = r3
            android.content.Intent r0 = m1061e(r0)
            r5 = r0
            goto L5b
        L37:
            r0 = r5
            java.lang.String r1 = "vivo"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L48
            r0 = r3
            android.content.Intent r0 = m1059g(r0)
            r5 = r0
            goto L5b
        L48:
            r0 = r5
            java.lang.String r1 = "meizu"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L59
            r0 = r3
            android.content.Intent r0 = m1062d(r0)
            r5 = r0
            goto L5b
        L59:
            r0 = 0
            r5 = r0
        L5b:
            r0 = r5
            if (r0 == 0) goto L69
            r0 = r5
            r6 = r0
            r0 = r3
            r1 = r5
            boolean r0 = m1064b(r0, r1)
            if (r0 != 0) goto L6e
        L69:
            r0 = r3
            android.content.Intent r0 = m1065a(r0)
            r6 = r0
        L6e:
            r0 = r4
            if (r0 == 0) goto L79
            r0 = r6
            r1 = 268435456(0x10000000, float:2.5243549E-29)
            android.content.Intent r0 = r0.addFlags(r1)
        L79:
            r0 = r3
            r1 = r6
            r0.startActivity(r1)     // Catch: java.lang.Exception -> L81
            goto L8a
        L81:
            r5 = move-exception
            r0 = r3
            r1 = r3
            android.content.Intent r1 = m1065a(r1)
            r0.startActivity(r1)
        L8a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hjq.permissions.C9335b.m1060f(android.content.Context, boolean):void");
    }

    /* renamed from: g */
    private static Intent m1059g(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.iqoo.secure", "com.iqoo.secure.ui.phoneoptimize.FloatWindowManager");
        intent.putExtra("packagename", context.getPackageName());
        if (m1064b(context, intent)) {
            return intent;
        }
        intent.setComponent(new ComponentName("com.iqoo.secure", "com.iqoo.secure.safeguard.SoftPermissionDetailActivity"));
        return intent;
    }

    /* renamed from: h */
    private static Intent m1058h(Context context) {
        Intent intent = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent.putExtra("extra_pkgname", context.getPackageName());
        if (m1064b(context, intent)) {
            return intent;
        }
        intent.setPackage("com.miui.securitycenter");
        if (m1064b(context, intent)) {
            return intent;
        }
        intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
        if (m1064b(context, intent)) {
            return intent;
        }
        intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity");
        return intent;
    }
}
