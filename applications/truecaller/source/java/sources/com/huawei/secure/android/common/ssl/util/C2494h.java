package com.huawei.secure.android.common.ssl.util;

import android.content.Context;
import android.content.pm.PackageManager;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.secure.android.common.ssl.util.h */
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/util/h.class */
public class C2494h {

    /* renamed from: a */
    private static final String f8105a = "h";

    /* renamed from: a */
    public static String m36952a(String str) {
        Context m36979a = C2489c.m36979a();
        if (m36979a == null) {
            return "";
        }
        try {
            return m36979a.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            String str2 = f8105a;
            StringBuilder m8728C = C22128a.m8728C("getVersion NameNotFoundException : ");
            m8728C.append(e.getMessage());
            C2493g.m36956b(str2, m8728C.toString());
            return "";
        } catch (Exception e2) {
            String str3 = f8105a;
            StringBuilder m8728C2 = C22128a.m8728C("getVersion: ");
            m8728C2.append(e2.getMessage());
            C2493g.m36956b(str3, m8728C2.toString());
            return "";
        } catch (Throwable th) {
            C2493g.m36956b(f8105a, "throwable");
            return "";
        }
    }

    /* renamed from: b */
    public static int m36951b(String str) {
        Context m36979a = C2489c.m36979a();
        if (m36979a == null) {
            return 0;
        }
        try {
            return m36979a.getPackageManager().getPackageInfo(str, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            C2493g.m36956b(f8105a, "getVersion NameNotFoundException");
            return 0;
        } catch (Exception e2) {
            String str2 = f8105a;
            StringBuilder m8728C = C22128a.m8728C("getVersion: ");
            m8728C.append(e2.getMessage());
            C2493g.m36956b(str2, m8728C.toString());
            return 0;
        }
    }
}
