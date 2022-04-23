package com.amazon.device.ads;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbDebugProperties.class */
class DtbDebugProperties {

    /* renamed from: a  reason: collision with root package name */
    static boolean f6467a = false;

    /* renamed from: b  reason: collision with root package name */
    private static DtbDebugProperties f6468b;

    /* renamed from: c  reason: collision with root package name */
    private static HashMap<String, String> f6469c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f6470d = false;
    private static Set<String> e;

    DtbDebugProperties() {
    }

    public static DtbDebugProperties a() {
        if (!f6470d) {
            DtbLog.b();
            f6468b = new DtbDebugProperties();
            HashSet hashSet = new HashSet();
            e = hashSet;
            hashSet.add("aaxHostname".toLowerCase());
            e.add("sisUrl".toLowerCase());
            e.add("useSecure".toLowerCase());
            e.add("configHostname".toLowerCase());
            e.add("internalDebugMode".toLowerCase());
            d();
        }
        return f6468b;
    }

    public static String a(String str) {
        return a("aaxHostname", str);
    }

    private static String a(String str, String str2) {
        HashMap<String, String> hashMap;
        return (!AdRegistration.g() || !f6467a || (hashMap = f6469c) == null || hashMap.get(str) == null) ? str2 : f6469c.get(str);
    }

    public static String b(String str) {
        return a("route53EnabledAAXCname", str);
    }

    public static boolean b() {
        String a2 = a("useSecure", "");
        return a2.equals("true") || !a2.equals("false");
    }

    public static String c() {
        if (!f6467a) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : f6469c.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            try {
                if (!e.contains(key.toLowerCase())) {
                    sb.append('&');
                    sb.append(key);
                    sb.append('=');
                    sb.append(URLEncoder.encode(value, "UTF-8"));
                }
            } catch (UnsupportedEncodingException e2) {
                DtbLog.b(String.format("Cannot encode %d=%d due to exception %d", key, value, e2.getMessage()));
            }
        }
        return sb.toString();
    }

    public static String c(String str) {
        return a("sisUrl", str);
    }

    public static String d(String str) {
        return a("configHostname", str);
    }

    private static void d() {
        try {
            if (AdRegistration.g() && AdRegistration.d() == null) {
                DtbLog.b("unable to initialize debug preferences without setting app context");
                throw new IllegalArgumentException("unable to initialize debug preferences without setting app context");
            }
            String string = DtbCommonUtils.d().getString("com.amazon.device.ads.dtb.debug.override");
            if (!DtbCommonUtils.e(string)) {
                "Override file: ".concat(String.valueOf(string));
                DtbLog.b();
                InputStream d2 = DtbCommonUtils.d(string);
                InputStream inputStream = d2;
                if (d2 == null) {
                    "Failed to read override from classpath, trying to read override file from absolute location: ".concat(String.valueOf(string));
                    DtbLog.b();
                    File file = new File(string);
                    if (!file.exists()) {
                        DtbLog.b();
                        return;
                    }
                    inputStream = new FileInputStream(file);
                }
                DtbLog.b();
                Properties properties = new Properties();
                properties.load(inputStream);
                for (Map.Entry entry : properties.entrySet()) {
                    String str = (String) entry.getKey();
                    if (DtbCommonUtils.f(str)) {
                        DtbLog.b();
                    } else {
                        String str2 = (String) entry.getValue();
                        String str3 = str2;
                        if (str2 != null) {
                            str3 = str2.trim();
                        }
                        StringBuilder sb = new StringBuilder("Overrides found: ");
                        sb.append(str);
                        sb.append(" --> ");
                        sb.append(str3);
                        DtbLog.b();
                        if (str.equalsIgnoreCase("internalDebugMode")) {
                            f6467a = str3.equalsIgnoreCase("true");
                        }
                        f6469c.put(str, str3);
                    }
                }
                inputStream.close();
            }
        } catch (Exception e2) {
            new StringBuilder("Error:: Failed to read the debug params. ignoring.").append(e2.getStackTrace());
            DtbLog.b();
        }
        f6470d = true;
    }
}
