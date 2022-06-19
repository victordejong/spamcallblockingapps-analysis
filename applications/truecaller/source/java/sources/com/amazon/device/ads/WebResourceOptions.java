package com.amazon.device.ads;

import com.tenor.android.core.constant.StringConstant;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/WebResourceOptions.class */
public class WebResourceOptions {
    private static String cdnHost;
    private static String[] jsNames = {"aps-mraid.js", "dtb-m.js"};
    private static boolean useLocalOnly = false;

    public static String getCDNHost() {
        String str = cdnHost;
        if (str == null) {
            str = DtbConstants.DTB_WEB_RESOURCES;
        }
        String str2 = str;
        if (!str.endsWith(StringConstant.SLASH)) {
            str2 = C22128a.m8543z2(str, StringConstant.SLASH);
        }
        return str2;
    }

    public static String[] getCDNResources() {
        return jsNames;
    }

    public static boolean isLocalSourcesOnly() {
        return useLocalOnly;
    }

    public static void setCDNHost(String str) {
        if (str.equals(cdnHost) || cdnHost == null) {
            return;
        }
        cdnHost = str;
        DtbSharedPreferences.getInstance().resetWebResoucesLastPing();
        WebResourceService.getInstance().deleteWebDirContent();
    }

    public static void setCDNResources(String[] strArr) {
        jsNames = strArr;
    }

    public static void setLocalSourcesOnly(boolean z) {
        useLocalOnly = z;
    }
}
