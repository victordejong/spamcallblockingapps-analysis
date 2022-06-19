package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/WebResourceOptions.class */
class WebResourceOptions {

    /* renamed from: a */
    private static boolean f11935a = false;

    /* renamed from: b */
    private static String f11936b;

    /* renamed from: c */
    private static String[] f11937c = {"aps-mraid.js", "dtb-m.js"};

    WebResourceOptions() {
    }

    /* renamed from: a */
    public static String m38741a() {
        String str = f11936b;
        if (str == null) {
            str = "c.amazon-adsystem.com/";
        }
        String str2 = str;
        if (!str.endsWith("/")) {
            str2 = str + "/";
        }
        return str2;
    }

    /* renamed from: b */
    public static String[] m38740b() {
        return f11937c;
    }

    /* renamed from: c */
    public static boolean m38739c() {
        return f11935a;
    }
}
