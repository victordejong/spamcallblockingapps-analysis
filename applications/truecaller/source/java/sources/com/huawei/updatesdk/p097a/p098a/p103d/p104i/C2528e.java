package com.huawei.updatesdk.p097a.p098a.p103d.p104i;

import android.text.TextUtils;
import com.huawei.updatesdk.p097a.p098a.C2511a;
/* renamed from: com.huawei.updatesdk.a.a.d.i.e */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/a/d/i/e.class */
public class C2528e {

    /* renamed from: a */
    private static String f8210a = "";

    /* renamed from: a */
    public static boolean m36763a() {
        if ("KidWatch".equals(f8210a)) {
            return true;
        }
        String m36793a = C2526c.m36793a("ro.vendor.market.type", "");
        f8210a = m36793a;
        C2511a.m36862b("WearDeviceUtil", "Children watch property value is " + m36793a);
        if (TextUtils.isEmpty(m36793a)) {
            return false;
        }
        return "KidWatch".equals(m36793a);
    }
}
