package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/WebResourceOptions.class */
class WebResourceOptions {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f6527a = false;

    /* renamed from: b  reason: collision with root package name */
    private static String f6528b;

    /* renamed from: c  reason: collision with root package name */
    private static String[] f6529c = {"aps-mraid.js", "dtb-m.js"};

    WebResourceOptions() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a() {
        String str = f6528b;
        if (str == null) {
            str = "c.amazon-adsystem.com/";
        }
        String str2 = str;
        if (!str.endsWith("/")) {
            str2 = str + "/";
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String[] b() {
        return f6529c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c() {
        return f6527a;
    }
}
