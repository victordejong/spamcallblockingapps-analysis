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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbCommonUtils.class */
public class DtbCommonUtils {

    /* renamed from: a  reason: collision with root package name */
    private static String f6460a;

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbCommonUtils$APIVersion.class */
    static class APIVersion {

        /* renamed from: a  reason: collision with root package name */
        public int f6461a = 0;

        /* renamed from: b  reason: collision with root package name */
        public int f6462b = 0;
    }

    private DtbCommonUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a() {
        String f = f();
        return f == null ? "aps-android" : "aps-android-".concat(String.valueOf(f));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Exception exc) {
        String localizedMessage = exc.getLocalizedMessage();
        if (localizedMessage == null) {
            return "";
        }
        return "(" + localizedMessage + ")";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, String str2) {
        String str3;
        Field declaredField;
        try {
            declaredField = Class.forName(str).getDeclaredField(str2);
            declaredField.setAccessible(true);
        } catch (ClassNotFoundException e) {
            "Class not found:".concat(String.valueOf(str));
            DtbLog.b();
            str3 = null;
        } catch (IllegalAccessException e2) {
            new StringBuilder("Illegal Access exception:").append(e2.getMessage());
            DtbLog.b();
            str3 = null;
        } catch (IllegalArgumentException e3) {
            new StringBuilder("Illegal Argument exception:").append(e3.getMessage());
            DtbLog.b();
            str3 = null;
        } catch (NoSuchFieldException e4) {
            StringBuilder sb = new StringBuilder("Field:");
            sb.append(str2);
            sb.append(" does not exist");
            DtbLog.b();
            str3 = null;
        } catch (SecurityException e5) {
            StringBuilder sb2 = new StringBuilder("Field:");
            sb2.append(str2);
            sb2.append(" is not accessable");
            DtbLog.b();
            str3 = null;
        }
        if (declaredField.isAccessible()) {
            str3 = (String) declaredField.get(null);
            return str3;
        }
        StringBuilder sb3 = new StringBuilder("Field:");
        sb3.append(str2);
        sb3.append(" is not accessable");
        DtbLog.b();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Map<String, Object> map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : map.keySet()) {
            jSONObject.put(str, map.get(str));
        }
        return jSONObject.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Activity activity) {
        return Build.VERSION.SDK_INT > 16 && activity.isDestroyed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
        if (r4.equals("") != false) goto L_0x000f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.String r4, android.content.Context r5) {
        /*
            r0 = r4
            if (r0 == 0) goto L_0x000f
            r0 = r4
            r6 = r0
            r0 = r4
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0012
        L_0x000f:
            java.lang.String r0 = "about:blank"
            r6 = r0
        L_0x0012:
            java.lang.String r0 = "Launch Intent: "
            r1 = r6
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r0 = r0.concat(r1)
            com.amazon.device.ads.DtbLog.b()
            android.content.Intent r0 = new android.content.Intent
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = r6
            java.lang.String r1 = "intent:"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L_0x003c
            r0 = r6
            r1 = 1
            android.content.Intent r0 = android.content.Intent.parseUri(r0, r1)     // Catch: URISyntaxException -> 0x0039
            r4 = r0
            goto L_0x0045
        L_0x0039:
            r4 = move-exception
            r0 = 0
            return r0
        L_0x003c:
            r0 = r4
            r1 = r6
            android.net.Uri r1 = android.net.Uri.parse(r1)
            android.content.Intent r0 = r0.setData(r1)
        L_0x0045:
            r0 = r4
            java.lang.String r1 = "android.intent.action.VIEW"
            android.content.Intent r0 = r0.setAction(r1)
            r0 = r4
            r1 = 268435456(0x10000000, float:2.5243549E-29)
            android.content.Intent r0 = r0.setFlags(r1)
            r0 = r5
            r1 = r4
            r0.startActivity(r1)     // Catch: ActivityNotFoundException -> 0x005a
            r0 = 1
            return r0
        L_0x005a:
            r5 = move-exception
            r0 = r4
            java.lang.String r0 = r0.getAction()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x009d
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Could not handle "
            r1.<init>(r2)
            r6 = r0
            r0 = r5
            java.lang.String r1 = "market://"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L_0x007d
            java.lang.String r0 = "market"
            r4 = r0
            goto L_0x0080
        L_0x007d:
            java.lang.String r0 = "intent"
            r4 = r0
        L_0x0080:
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
            com.amazon.device.ads.DtbLog.a(r0)
            goto L_0x00a2
        L_0x009d:
            java.lang.String r0 = "Could not handle nil action "
            com.amazon.device.ads.DtbLog.a(r0)
        L_0x00a2:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DtbCommonUtils.a(java.lang.String, android.content.Context):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Integer b(String str, String str2) {
        Integer num;
        Field declaredField;
        try {
            declaredField = Class.forName(str).getDeclaredField(str2);
            declaredField.setAccessible(true);
        } catch (ClassNotFoundException e) {
            "Class notFound:".concat(String.valueOf(str));
            DtbLog.b();
            return null;
        } catch (IllegalAccessException e2) {
            new StringBuilder("Illegal Access exception:").append(e2.getMessage());
            DtbLog.b();
            num = null;
        } catch (IllegalArgumentException e3) {
            new StringBuilder("Illegal Argument exception:").append(e3.getMessage());
            DtbLog.b();
            num = null;
        } catch (NoSuchFieldException e4) {
            StringBuilder sb = new StringBuilder("Field:");
            sb.append(str2);
            sb.append(" does not exist");
            DtbLog.b();
            num = null;
        } catch (SecurityException e5) {
            StringBuilder sb2 = new StringBuilder("Field:");
            sb2.append(str2);
            sb2.append(" is not accessable");
            DtbLog.b();
            num = null;
        }
        if (declaredField.isAccessible()) {
            num = (Integer) declaredField.get(null);
            return num;
        }
        StringBuilder sb3 = new StringBuilder("Field:");
        sb3.append(str2);
        sb3.append(" is not accessable");
        DtbLog.b();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b() {
        String f = f();
        return f == null ? "aps-android-8.4.3" : "aps-android-8.4.3-".concat(String.valueOf(f));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str) {
        if (e(str)) {
            return str;
        }
        try {
            return URLEncoder.encode(str, "UTF-8").replace("+", "%20").replace("*", "%2A").replace("%7E", "~");
        } catch (UnsupportedEncodingException e) {
            DtbLog.b("Unable to url encode :".concat(String.valueOf(str)));
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(String str) {
        int i;
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
            DtbLog.b("Exception parsing the integer from string:".concat(String.valueOf(str)));
            i = 0;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bundle d() throws PackageManager.NameNotFoundException {
        if (AdRegistration.d() != null) {
            return AdRegistration.d().getPackageManager().getApplicationInfo(AdRegistration.d().getPackageName(), 128).metaData;
        }
        throw new IllegalStateException("Application Context can't be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static InputStream d(String str) {
        return DtbCommonUtils.class.getResourceAsStream(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e() {
        NetworkCapabilities networkCapabilities;
        if (AdRegistration.d().checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
            return true;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) AdRegistration.d().getSystemService("connectivity");
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e(String str) {
        return str == null || str.equals("");
    }

    private static String f() {
        String[] strArr;
        String str = f6460a;
        if (str != null) {
            return str;
        }
        for (String str2 : AdRegistration.f6368b) {
            try {
                Class.forName(str2);
                if (str2.contains("admob")) {
                    f6460a = "admob";
                } else if (str2.contains(MoPub.ANALYTICS_MOPUB_TAG)) {
                    f6460a = MoPub.ANALYTICS_MOPUB_TAG;
                }
                return f6460a;
            } catch (Exception e) {
            }
        }
        return f6460a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean f(String str) {
        return e(str) || str.trim().equals("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long g(String str) {
        return Long.parseLong(str) * 1000;
    }

    public static APIVersion h(String str) {
        APIVersion aPIVersion = new APIVersion();
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
            String nextToken = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : str;
            String nextToken2 = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : "0";
            try {
                aPIVersion.f6461a = Integer.parseInt(nextToken);
                aPIVersion.f6462b = Integer.parseInt(nextToken2);
            } catch (NumberFormatException e) {
                DtbLog.a("Invalid API version:".concat(String.valueOf(str)));
            }
        }
        return aPIVersion;
    }

    public static String i(String str) {
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
            DtbLog.c(String.format("The url %s that is passed for parsing is invalid. Please check the URL", new Object[0]));
        }
        return str3;
    }
}
