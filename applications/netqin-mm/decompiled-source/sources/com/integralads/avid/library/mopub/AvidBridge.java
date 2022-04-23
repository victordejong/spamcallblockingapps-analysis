package com.integralads.avid.library.mopub;

import android.text.TextUtils;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/AvidBridge.class */
public class AvidBridge {
    public static final String APP_STATE_ACTIVE = "active";
    public static final String APP_STATE_INACTIVE = "inactive";

    /* renamed from: a */
    public static String f33005a;

    public static void cleanUpAvidJS() {
        f33005a = null;
    }

    public static String getAvidJs() {
        return f33005a;
    }

    public static boolean isAvidJsReady() {
        return !TextUtils.isEmpty(f33005a);
    }

    public static void setAvidJs(String str) {
        f33005a = str;
    }
}
