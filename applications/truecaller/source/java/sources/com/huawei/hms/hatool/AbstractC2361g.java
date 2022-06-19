package com.huawei.hms.hatool;

import android.content.Context;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
/* renamed from: com.huawei.hms.hatool.g */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/g.class */
public abstract class AbstractC2361g {
    /* renamed from: a */
    public static String m37702a(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(AbstractC2345a.m37821a(str, str2))) {
            return AbstractC2345a.m37821a(str, str2);
        }
        C2398y.m37473c("hmsSdk", "getAndroidId(): to getConfigByType()");
        return m37700c(context, str, str2);
    }

    /* renamed from: b */
    public static String m37701b(Context context, String str, String str2) {
        if (!str2.equals("oper") && !str2.equals("maint") && !str2.equals("diffprivacy") && !str2.equals("preins")) {
            C2398y.m37469f("hmsSdk", "getChannel(): Invalid type: " + str2);
            return "";
        }
        return m37699d(context, str, str2);
    }

    /* renamed from: c */
    public static String m37700c(Context context, String str, String str2) {
        if (AbstractC2345a.m37820b(str, str2)) {
            if (TextUtils.isEmpty(AbstractC2349b.m37789d())) {
                C2366i.m37672c().m37673b().m37607b(AbstractC2357f.m37721a(context));
            }
            return AbstractC2349b.m37789d();
        }
        return "";
    }

    /* renamed from: d */
    public static String m37699d(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(AbstractC2351c.m37766d(str, str2))) {
            return AbstractC2351c.m37766d(str, str2);
        }
        C2372l m37673b = C2366i.m37672c().m37673b();
        if (TextUtils.isEmpty(m37673b.m37596h())) {
            String m37715b = AbstractC2357f.m37715b(context);
            String str3 = m37715b;
            if (!C2386s0.m37535a(AppsFlyerProperties.CHANNEL, m37715b, 256)) {
                str3 = "";
            }
            m37673b.m37599f(str3);
        }
        return m37673b.m37596h();
    }
}
