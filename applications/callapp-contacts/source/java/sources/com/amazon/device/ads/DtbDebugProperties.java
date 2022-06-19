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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbDebugProperties.class */
public class DtbDebugProperties {

    /* renamed from: a */
    static boolean f11852a = false;

    /* renamed from: b */
    private static DtbDebugProperties f11853b;

    /* renamed from: c */
    private static HashMap<String, String> f11854c = new HashMap<>();

    /* renamed from: d */
    private static boolean f11855d = false;

    /* renamed from: e */
    private static Set<String> f11856e;

    DtbDebugProperties() {
    }

    /* renamed from: a */
    public static DtbDebugProperties m38876a() {
        if (!f11855d) {
            DtbLog.m38825b();
            f11853b = new DtbDebugProperties();
            HashSet hashSet = new HashSet();
            f11856e = hashSet;
            hashSet.add("aaxHostname".toLowerCase());
            f11856e.add("sisUrl".toLowerCase());
            f11856e.add("useSecure".toLowerCase());
            f11856e.add("configHostname".toLowerCase());
            f11856e.add("internalDebugMode".toLowerCase());
            m38869d();
        }
        return f11853b;
    }

    /* renamed from: a */
    public static String m38875a(String str) {
        return m38874a("aaxHostname", str);
    }

    /* renamed from: a */
    private static String m38874a(String str, String str2) {
        HashMap<String, String> hashMap;
        return (!AdRegistration.m39068g() || !f11852a || (hashMap = f11854c) == null || hashMap.get(str) == null) ? str2 : f11854c.get(str);
    }

    /* renamed from: b */
    public static String m38872b(String str) {
        return m38874a("route53EnabledAAXCname", str);
    }

    /* renamed from: b */
    public static boolean m38873b() {
        String m38874a = m38874a("useSecure", "");
        return m38874a.equals("true") || !m38874a.equals("false");
    }

    /* renamed from: c */
    public static String m38871c() {
        if (!f11852a) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : f11854c.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            try {
                if (!f11856e.contains(key.toLowerCase())) {
                    sb.append('&');
                    sb.append(key);
                    sb.append('=');
                    sb.append(URLEncoder.encode(value, "UTF-8"));
                }
            } catch (UnsupportedEncodingException e) {
                DtbLog.m38824b(String.format("Cannot encode %d=%d due to exception %d", key, value, e.getMessage()));
            }
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static String m38870c(String str) {
        return m38874a("sisUrl", str);
    }

    /* renamed from: d */
    public static String m38868d(String str) {
        return m38874a("configHostname", str);
    }

    /* renamed from: d */
    private static void m38869d() {
        try {
            if (AdRegistration.m39068g() && AdRegistration.m39071d() == null) {
                DtbLog.m38824b("unable to initialize debug preferences without setting app context");
                throw new IllegalArgumentException("unable to initialize debug preferences without setting app context");
            }
            String string = DtbCommonUtils.m38885d().getString("com.amazon.device.ads.dtb.debug.override");
            if (!DtbCommonUtils.m38882e(string)) {
                "Override file: ".concat(String.valueOf(string));
                DtbLog.m38825b();
                InputStream m38884d = DtbCommonUtils.m38884d(string);
                InputStream inputStream = m38884d;
                if (m38884d == null) {
                    "Failed to read override from classpath, trying to read override file from absolute location: ".concat(String.valueOf(string));
                    DtbLog.m38825b();
                    File file = new File(string);
                    if (!file.exists()) {
                        DtbLog.m38825b();
                        return;
                    }
                    inputStream = new FileInputStream(file);
                }
                DtbLog.m38825b();
                Properties properties = new Properties();
                properties.load(inputStream);
                for (Map.Entry entry : properties.entrySet()) {
                    String str = (String) entry.getKey();
                    if (DtbCommonUtils.m38880f(str)) {
                        DtbLog.m38825b();
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
                        DtbLog.m38825b();
                        if (str.equalsIgnoreCase("internalDebugMode")) {
                            f11852a = str3.equalsIgnoreCase("true");
                        }
                        f11854c.put(str, str3);
                    }
                }
                inputStream.close();
            }
        } catch (Exception e) {
            new StringBuilder("Error:: Failed to read the debug params. ignoring.").append(e.getStackTrace());
            DtbLog.m38825b();
        }
        f11855d = true;
    }
}
