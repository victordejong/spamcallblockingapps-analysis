package com.flurry.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.criteo.sync.sdk.customtabs.CustomTabsHelper;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.flurry.sdk.dy */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/dy.class */
public class C3011dy {

    /* renamed from: a */
    public static final String f4694a = "dy";

    /* renamed from: b */
    public static final List<String> f4695b = Arrays.asList(CustomTabsHelper.STABLE_PACKAGE, "org.mozilla.firefox", "mobi.mgeek.TunnyBrowser", "com.UCMobile.intl", "com.opera.mini.android", "com.jiubang.browser", "com.opera.browser", "com.uc.browser.en", "acr.browser.barebones", "com.boatbrowser.free", "com.mx.browser", "com.ilegendsoft.mercury", "gpc.myweb.hinet.net.PopupWeb", "mobi.browser.flashfox", "com.baidu.browser.inter", "com.sec.webbrowserminiapp", "com.android.browser", "com.android.vending", "com.sec.android.app.sbrowser");

    /* renamed from: a */
    public static Intent m33308a(Context context, String str) {
        Intent intent;
        ActivityInfo a;
        if (context == null || TextUtils.isEmpty(str) || (a = m33306a(context.getPackageManager(), (intent = new Intent("android.intent.action.VIEW", Uri.parse(str))))) == null) {
            return null;
        }
        m33307a(a, intent);
        return intent;
    }

    /* renamed from: a */
    public static Intent m33307a(ActivityInfo activityInfo, Intent intent) {
        String str = f4694a;
        C3356jq.m32615a(3, str, "Launching App in package: " + activityInfo.packageName);
        ComponentName componentName = new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setComponent(componentName);
        return intent;
    }

    /* renamed from: a */
    public static ActivityInfo m33306a(PackageManager packageManager, Intent intent) {
        if (packageManager == null) {
            return null;
        }
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        if (queryIntentActivities != null && queryIntentActivities.size() > 0) {
            Iterator<ResolveInfo> it = queryIntentActivities.iterator();
            while (it.hasNext()) {
                String str = it.next().activityInfo.packageName;
                if (f4695b.contains(str)) {
                    it.remove();
                } else {
                    String str2 = f4694a;
                    C3356jq.m32615a(3, str2, "Package not blacklisted: " + str);
                }
            }
        }
        if (queryIntentActivities == null || queryIntentActivities.size() <= 0) {
            return null;
        }
        return queryIntentActivities.get(0).activityInfo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x007d, code lost:
        if ("com.google.market".equalsIgnoreCase(r0) != false) goto L_0x0080;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.Intent m33305b(android.content.Context r5, java.lang.String r6) {
        /*
            r0 = r5
            if (r0 == 0) goto L_0x0090
            r0 = r6
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x000e
            goto L_0x0090
        L_0x000e:
            r0 = r5
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            r7 = r0
            android.content.Intent r0 = new android.content.Intent
            r1 = r0
            java.lang.String r2 = "android.intent.action.VIEW"
            r3 = r6
            android.net.Uri r3 = android.net.Uri.parse(r3)
            r1.<init>(r2, r3)
            r5 = r0
            r0 = r7
            r1 = r5
            r2 = 65536(0x10000, float:9.18355E-41)
            java.util.List r0 = r0.queryIntentActivities(r1, r2)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0090
            r0 = r6
            int r0 = r0.size()
            if (r0 <= 0) goto L_0x0090
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r8 = r0
        L_0x003d:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0090
            r0 = r8
            java.lang.Object r0 = r0.next()
            android.content.pm.ResolveInfo r0 = (android.content.pm.ResolveInfo) r0
            android.content.pm.ActivityInfo r0 = r0.activityInfo
            r7 = r0
            r0 = r7
            java.lang.String r0 = r0.packageName
            r6 = r0
            r0 = r6
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0083
            java.lang.String r0 = "com.android.vending"
            r1 = r6
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L_0x0080
            r0 = r10
            r11 = r0
            java.lang.String r0 = "com.google.market"
            r1 = r6
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L_0x0083
        L_0x0080:
            r0 = 1
            r11 = r0
        L_0x0083:
            r0 = r11
            if (r0 == 0) goto L_0x003d
            r0 = r7
            r1 = r5
            android.content.Intent r0 = m33307a(r0, r1)
            r0 = r5
            return r0
        L_0x0090:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3011dy.m33305b(android.content.Context, java.lang.String):android.content.Intent");
    }
}
