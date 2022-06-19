package com.huawei.hms.framework.network.grs;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/GrsApp.class */
public class GrsApp {
    private static final String BRAND;
    private static final GrsApp INSTANCE = new GrsApp();
    private static final String TAG = "GrsApp";
    private String appConfigName;

    static {
        String str;
        String name = GrsApp.class.getPackage().getName();
        if ("com.huawei.hms.framework.network.grs".equals(name)) {
            str = "";
        } else {
            String[] split = name.split("\\.");
            StringBuilder m8728C = C22128a.m8728C("current brand is:");
            m8728C.append(split[1]);
            Logger.m38042v(TAG, m8728C.toString());
            str = split[1];
        }
        BRAND = str;
    }

    private GrsApp() {
    }

    public static GrsApp getInstance() {
        return INSTANCE;
    }

    public String getAppConfigName() {
        return this.appConfigName;
    }

    public String getBrand(String str) {
        String str2 = BRAND;
        return TextUtils.isEmpty(str2) ? "" : C22128a.m8543z2(str2, str);
    }

    public String getIssueCountryCode(Context context) {
        return C2304a.m38035a(context, false).getCountryCode();
    }

    public void setAppConfigName(String str) {
        this.appConfigName = str;
    }
}
