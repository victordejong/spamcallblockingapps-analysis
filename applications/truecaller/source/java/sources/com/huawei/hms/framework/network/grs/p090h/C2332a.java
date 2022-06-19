package com.huawei.hms.framework.network.grs.p090h;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.huawei.hms.framework.common.ContextHolder;
import com.huawei.hms.framework.common.Logger;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.framework.network.grs.h.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/h/a.class */
public class C2332a {
    /* renamed from: a */
    public static String m37862a() {
        return "5.0.8.301";
    }

    /* renamed from: a */
    public static String m37861a(Context context) {
        if (context == null) {
            return "";
        }
        if (ContextHolder.getAppContext() != null) {
            context = ContextHolder.getAppContext();
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            Logger.m38039w("AgentUtil", "", e);
            return "";
        }
    }

    /* renamed from: a */
    public static String m37860a(Context context, String str, String str2) {
        if (context == null) {
            return String.format(Locale.ROOT, C22128a.m8543z2(str, "/%s"), m37862a());
        }
        String packageName = context.getPackageName();
        String m37861a = m37861a(context);
        String str3 = Build.VERSION.RELEASE;
        String str4 = Build.MODEL;
        Locale locale = Locale.ROOT;
        String m8725C2 = C22128a.m8725C2("%s/%s (Linux; Android %s; %s) ", str, "/%s %s");
        String m37862a = m37862a();
        String str5 = str2;
        if (TextUtils.isEmpty(str2)) {
            str5 = "no_service_name";
        }
        return String.format(locale, m8725C2, packageName, m37861a, str3, str4, m37862a, str5);
    }

    /* renamed from: b */
    public static String m37859b(Context context, String str, String str2) {
        return m37860a(context, str, str2);
    }
}
