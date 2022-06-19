package com.amazon.device.ads;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import com.mopub.common.MoPub;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.net.URI;
import java.net.URLEncoder;
import java.util.Map;
import java.util.StringTokenizer;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbCommonUtils.class */
public class DtbCommonUtils {

    /* renamed from: a */
    private static String f11845a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbCommonUtils$APIVersion.class */
    public static class APIVersion {

        /* renamed from: a */
        public int f11846a = 0;

        /* renamed from: b */
        public int f11847b = 0;
    }

    private DtbCommonUtils() {
    }

    /* renamed from: a */
    public static String m38897a() {
        String m38881f = m38881f();
        return m38881f == null ? "aps-android" : "aps-android-".concat(String.valueOf(m38881f));
    }

    /* renamed from: a */
    public static String m38895a(Exception exc) {
        String localizedMessage = exc.getLocalizedMessage();
        if (localizedMessage != null) {
            return "(" + localizedMessage + ")";
        }
        return "";
    }

    /* renamed from: a */
    public static String m38892a(String str, String str2) {
        String str3;
        Field declaredField;
        try {
            declaredField = Class.forName(str).getDeclaredField(str2);
            declaredField.setAccessible(true);
        } catch (ClassNotFoundException e) {
            "Class not found:".concat(String.valueOf(str));
            DtbLog.m38825b();
            str3 = null;
        } catch (IllegalAccessException e2) {
            new StringBuilder("Illegal Access exception:").append(e2.getMessage());
            DtbLog.m38825b();
            str3 = null;
        } catch (IllegalArgumentException e3) {
            new StringBuilder("Illegal Argument exception:").append(e3.getMessage());
            DtbLog.m38825b();
            str3 = null;
        } catch (NoSuchFieldException e4) {
            StringBuilder sb = new StringBuilder("Field:");
            sb.append(str2);
            sb.append(" does not exist");
            DtbLog.m38825b();
            str3 = null;
        } catch (SecurityException e5) {
            StringBuilder sb2 = new StringBuilder("Field:");
            sb2.append(str2);
            sb2.append(" is not accessable");
            DtbLog.m38825b();
            str3 = null;
        }
        if (declaredField.isAccessible()) {
            str3 = (String) declaredField.get(null);
            return str3;
        }
        StringBuilder sb3 = new StringBuilder("Field:");
        sb3.append(str2);
        sb3.append(" is not accessable");
        DtbLog.m38825b();
        return null;
    }

    /* renamed from: a */
    public static String m38891a(Map<String, Object> map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : map.keySet()) {
            jSONObject.put(str, map.get(str));
        }
        return jSONObject.toString();
    }

    /* renamed from: a */
    public static boolean m38896a(Activity activity) {
        return Build.VERSION.SDK_INT > 16 && activity.isDestroyed();
    }

    /* renamed from: a */
    public static boolean m38894a(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
        if (r4.equals("") != false) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m38893a(java.lang.String r4, android.content.Context r5) {
        /*
            r0 = r4
            if (r0 == 0) goto Lf
            r0 = r4
            r6 = r0
            r0 = r4
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L12
        Lf:
            java.lang.String r0 = "about:blank"
            r6 = r0
        L12:
            java.lang.String r0 = "Launch Intent: "
            r1 = r6
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r0 = r0.concat(r1)
            com.amazon.device.ads.DtbLog.m38825b()
            android.content.Intent r0 = new android.content.Intent
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = r6
            java.lang.String r1 = "intent:"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L3c
            r0 = r6
            r1 = 1
            android.content.Intent r0 = android.content.Intent.parseUri(r0, r1)     // Catch: java.net.URISyntaxException -> L39
            r4 = r0
            goto L45
        L39:
            r4 = move-exception
            r0 = 0
            return r0
        L3c:
            r0 = r4
            r1 = r6
            android.net.Uri r1 = android.net.Uri.parse(r1)
            android.content.Intent r0 = r0.setData(r1)
        L45:
            r0 = r4
            java.lang.String r1 = "android.intent.action.VIEW"
            android.content.Intent r0 = r0.setAction(r1)
            r0 = r4
            r1 = 268435456(0x10000000, float:2.5243549E-29)
            android.content.Intent r0 = r0.setFlags(r1)
            r0 = r5
            r1 = r4
            r0.startActivity(r1)     // Catch: android.content.ActivityNotFoundException -> L5a
            r0 = 1
            return r0
        L5a:
            r5 = move-exception
            r0 = r4
            java.lang.String r0 = r0.getAction()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L9d
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Could not handle "
            r1.<init>(r2)
            r6 = r0
            r0 = r5
            java.lang.String r1 = "market://"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L7d
            java.lang.String r0 = "market"
            r4 = r0
            goto L80
        L7d:
            java.lang.String r0 = "intent"
            r4 = r0
        L80:
            r0 = r6
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = " action: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r0 = r0.toString()
            com.amazon.device.ads.DtbLog.m38828a(r0)
            goto La2
        L9d:
            java.lang.String r0 = "Could not handle nil action "
            com.amazon.device.ads.DtbLog.m38828a(r0)
        La2:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DtbCommonUtils.m38893a(java.lang.String, android.content.Context):boolean");
    }

    /* renamed from: b */
    public static Integer m38888b(String str, String str2) {
        Integer num;
        Field declaredField;
        try {
            declaredField = Class.forName(str).getDeclaredField(str2);
            declaredField.setAccessible(true);
        } catch (ClassNotFoundException e) {
            "Class notFound:".concat(String.valueOf(str));
            DtbLog.m38825b();
            return null;
        } catch (IllegalAccessException e2) {
            new StringBuilder("Illegal Access exception:").append(e2.getMessage());
            DtbLog.m38825b();
            num = null;
        } catch (IllegalArgumentException e3) {
            new StringBuilder("Illegal Argument exception:").append(e3.getMessage());
            DtbLog.m38825b();
            num = null;
        } catch (NoSuchFieldException e4) {
            StringBuilder sb = new StringBuilder("Field:");
            sb.append(str2);
            sb.append(" does not exist");
            DtbLog.m38825b();
            num = null;
        } catch (SecurityException e5) {
            StringBuilder sb2 = new StringBuilder("Field:");
            sb2.append(str2);
            sb2.append(" is not accessable");
            DtbLog.m38825b();
            num = null;
        }
        if (declaredField.isAccessible()) {
            num = (Integer) declaredField.get(null);
            return num;
        }
        StringBuilder sb3 = new StringBuilder("Field:");
        sb3.append(str2);
        sb3.append(" is not accessable");
        DtbLog.m38825b();
        return null;
    }

    /* renamed from: b */
    public static String m38890b() {
        String m38881f = m38881f();
        return m38881f == null ? "aps-android-8.4.3" : "aps-android-8.4.3-".concat(String.valueOf(m38881f));
    }

    /* renamed from: b */
    public static String m38889b(String str) {
        if (m38882e(str)) {
            return str;
        }
        try {
            return URLEncoder.encode(str, "UTF-8").replace("+", "%20").replace("*", "%2A").replace("%7E", "~");
        } catch (UnsupportedEncodingException e) {
            DtbLog.m38824b("Unable to url encode :".concat(String.valueOf(str)));
            return str;
        }
    }

    /* renamed from: c */
    public static int m38886c(String str) {
        int i;
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
            DtbLog.m38824b("Exception parsing the integer from string:".concat(String.valueOf(str)));
            i = 0;
        }
        return i;
    }

    /* renamed from: c */
    public static boolean m38887c() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* renamed from: d */
    public static Bundle m38885d() throws PackageManager.NameNotFoundException {
        if (AdRegistration.m39071d() != null) {
            return AdRegistration.m39071d().getPackageManager().getApplicationInfo(AdRegistration.m39071d().getPackageName(), 128).metaData;
        }
        throw new IllegalStateException("Application Context can't be null");
    }

    /* renamed from: d */
    public static InputStream m38884d(String str) {
        return DtbCommonUtils.class.getResourceAsStream(str);
    }

    /* renamed from: e */
    public static boolean m38883e() {
        NetworkCapabilities networkCapabilities;
        if (AdRegistration.m39071d().checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
            ConnectivityManager connectivityManager = (ConnectivityManager) AdRegistration.m39071d().getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            if (Build.VERSION.SDK_INT < 23) {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                    return false;
                }
                return activeNetworkInfo.getType() == 1 || activeNetworkInfo.getType() == 0;
            }
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
                return false;
            }
            return networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(1);
        }
        return true;
    }

    /* renamed from: e */
    public static boolean m38882e(String str) {
        return str == null || str.equals("");
    }

    /* renamed from: f */
    private static String m38881f() {
        String[] strArr;
        String str = f11845a;
        if (str != null) {
            return str;
        }
        for (String str2 : AdRegistration.f11670b) {
            try {
                Class.forName(str2);
                if (str2.contains("admob")) {
                    f11845a = "admob";
                } else if (str2.contains(MoPub.ANALYTICS_MOPUB_TAG)) {
                    f11845a = MoPub.ANALYTICS_MOPUB_TAG;
                }
                return f11845a;
            } catch (Exception e) {
            }
        }
        return f11845a;
    }

    /* renamed from: f */
    public static boolean m38880f(String str) {
        return m38882e(str) || str.trim().equals("");
    }

    /* renamed from: g */
    public static long m38879g(String str) {
        return Long.parseLong(str) * 1000;
    }

    /* renamed from: h */
    public static APIVersion m38878h(String str) {
        APIVersion aPIVersion = new APIVersion();
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
            String nextToken = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : str;
            String nextToken2 = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : "0";
            try {
                aPIVersion.f11846a = Integer.parseInt(nextToken);
                aPIVersion.f11847b = Integer.parseInt(nextToken2);
            } catch (NumberFormatException e) {
                DtbLog.m38828a("Invalid API version:".concat(String.valueOf(str)));
            }
        }
        return aPIVersion;
    }

    /* renamed from: i */
    public static String m38877i(String str) {
        String str2 = str;
        if (!str.startsWith("https://")) {
            str2 = str;
            if (!str.startsWith("http://")) {
                str2 = "https://".concat(String.valueOf(str));
            }
        }
        String str3 = null;
        try {
            str3 = new URI(str2).getHost();
        } catch (Exception e) {
            DtbLog.m38821c(String.format("The url %s that is passed for parsing is invalid. Please check the URL", new Object[0]));
        }
        return str3;
    }
}
