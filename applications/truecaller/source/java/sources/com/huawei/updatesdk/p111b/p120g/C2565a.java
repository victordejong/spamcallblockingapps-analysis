package com.huawei.updatesdk.p111b.p120g;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.text.TextUtils;
import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import com.huawei.updatesdk.p097a.p106b.p107a.C2530a;
import com.huawei.updatesdk.p111b.p116c.C2548b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.b.g.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/g/a.class */
public final class C2565a {

    /* renamed from: a */
    private static String f8273a;

    /* renamed from: a */
    public static String m36607a() {
        String str = f8273a;
        if (str != null) {
            return str;
        }
        Context m36757a = C2530a.m36754c().m36757a();
        try {
            StringBuilder sb = new StringBuilder("UpdateSDK");
            sb.append("##");
            sb.append("4.0.1.300");
            String str2 = Build.BRAND;
            if (TextUtils.isEmpty(str2)) {
                str2 = "other";
            }
            sb.append("##");
            sb.append(str2);
            sb.append("##");
            sb.append(C2548b.m36671a().m36666e());
            sb.append("##");
            sb.append(m36757a.getPackageName());
            PackageInfo packageInfo = m36757a.getPackageManager().getPackageInfo(m36757a.getPackageName(), 0);
            if (packageInfo != null) {
                sb.append("##");
                sb.append(packageInfo.versionName);
            }
            String sb2 = sb.toString();
            f8273a = sb2;
            return sb2;
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("getUserAgent() ");
            m8728C.append(e.toString());
            C2515a.m36847b("ApplicationSession", m8728C.toString());
            return null;
        }
    }
}
