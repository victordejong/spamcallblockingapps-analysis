package com.amazon.device.ads;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Looper;
import com.tenor.android.core.constant.StringConstant;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.net.URI;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbCommonUtils.class */
public class DtbCommonUtils {
    private static String sdkFlavor;

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbCommonUtils$APIVersion.class */
    public static class APIVersion {
        public int majorVersion = 0;
        public int minorVersion = 0;
    }

    private DtbCommonUtils() {
    }

    public static String exceptionStackToString(Exception exc) {
        StringWriter stringWriter = new StringWriter();
        exc.printStackTrace(new PrintWriter(stringWriter));
        String localizedMessage = exc.getLocalizedMessage();
        String str = "\nDetails:";
        if (localizedMessage != null) {
            str = C22128a.m8543z2("\nDetails:", localizedMessage);
        }
        StringBuilder m8728C = C22128a.m8728C(str);
        m8728C.append(stringWriter.toString());
        return m8728C.toString();
    }

    public static String exceptionToString(Exception exc) {
        String localizedMessage = exc.getLocalizedMessage();
        return localizedMessage != null ? C22128a.m8725C2("(", localizedMessage, ")") : "";
    }

    public static APIVersion getAPIVersion(String str) {
        APIVersion aPIVersion = new APIVersion();
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, StringConstant.DOT);
            String nextToken = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : str;
            String nextToken2 = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : DtbConstants.NETWORK_TYPE_UNKNOWN;
            try {
                aPIVersion.majorVersion = Integer.parseInt(nextToken);
                aPIVersion.minorVersion = Integer.parseInt(nextToken2);
            } catch (NumberFormatException e) {
                DtbLog.warn("Invalid API version:" + str);
            }
        }
        return aPIVersion;
    }

    public static Bundle getApplicationBundle() throws PackageManager.NameNotFoundException {
        if (AdRegistration.getContext() != null) {
            return AdRegistration.getContext().getPackageManager().getApplicationInfo(AdRegistration.getContext().getPackageName(), 128).metaData;
        }
        throw new IllegalStateException("Application Context can't be null");
    }

    public static String getHostNameFromUrl(String str) {
        String str2 = str;
        if (!str.startsWith(DtbConstants.HTTPS)) {
            str2 = str;
            if (!str.startsWith(DtbConstants.HTTP)) {
                str2 = C22128a.m8543z2(DtbConstants.HTTPS, str);
            }
        }
        String str3 = null;
        try {
            str3 = new URI(str2).getHost();
        } catch (Exception e) {
            DtbLog.error(String.format("The url %s that is passed for parsing is invalid. Please check the URL", new Object[0]));
        }
        return str3;
    }

    public static Integer getIntegerFieldValue(String str, String str2) {
        Integer num;
        Field declaredField;
        try {
            declaredField = Class.forName(str).getDeclaredField(str2);
            declaredField.setAccessible(true);
        } catch (ClassNotFoundException e) {
            DtbLog.debug("Class notFound:" + str);
            return null;
        } catch (IllegalAccessException e2) {
            StringBuilder m8728C = C22128a.m8728C("Illegal Access exception:");
            m8728C.append(e2.getMessage());
            DtbLog.debug(m8728C.toString());
            num = null;
        } catch (IllegalArgumentException e3) {
            StringBuilder m8728C2 = C22128a.m8728C("Illegal Argument exception:");
            m8728C2.append(e3.getMessage());
            DtbLog.debug(m8728C2.toString());
            num = null;
        } catch (NoSuchFieldException e4) {
            DtbLog.debug("Field:" + str2 + " does not exist");
            num = null;
        } catch (SecurityException e5) {
            DtbLog.debug("Field:" + str2 + " is not accessable");
            num = null;
        }
        if (declaredField.isAccessible()) {
            num = (Integer) declaredField.get(null);
            return num;
        }
        DtbLog.debug("Field:" + str2 + " is not accessable");
        return null;
    }

    public static long getMilliSeconds(String str) {
        return Long.parseLong(str) * 1000;
    }

    public static String getParamsAsJsonString(Map<String, Object> map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : map.keySet()) {
            jSONObject.put(str, map.get(str));
        }
        return jSONObject.toString();
    }

    public static InputStream getResourceAsStream(String str) {
        return DtbCommonUtils.class.getResourceAsStream(str);
    }

    public static String getSDKFlavor() {
        String[] strArr;
        String str = sdkFlavor;
        if (str != null) {
            return str;
        }
        for (String str2 : AdRegistration.serverlessMarkers) {
            try {
                Class.forName(str2);
                if (str2.contains("admob")) {
                    sdkFlavor = "admob";
                } else if (str2.contains("mopub")) {
                    sdkFlavor = "mopub";
                }
                return sdkFlavor;
            } catch (Exception e) {
            }
        }
        return sdkFlavor;
    }

    public static String getSDKMRAIDVersion() {
        String sDKFlavor = getSDKFlavor();
        return sDKFlavor == null ? DtbConstants.SDK_VERSION_PREFIX : C22128a.m8543z2("aps-android-", sDKFlavor);
    }

    public static String getSDKVersion() {
        String sDKFlavor = getSDKFlavor();
        return sDKFlavor == null ? "aps-android-9.2.1" : C22128a.m8543z2("aps-android-9.2.1-", sDKFlavor);
    }

    public static String getStringFieldValue(String str, String str2) {
        String str3;
        Field declaredField;
        try {
            declaredField = Class.forName(str).getDeclaredField(str2);
            declaredField.setAccessible(true);
        } catch (ClassNotFoundException e) {
            DtbLog.debug("Class not found:" + str);
            str3 = null;
        } catch (IllegalAccessException e2) {
            StringBuilder m8728C = C22128a.m8728C("Illegal Access exception:");
            m8728C.append(e2.getMessage());
            DtbLog.debug(m8728C.toString());
            str3 = null;
        } catch (IllegalArgumentException e3) {
            StringBuilder m8728C2 = C22128a.m8728C("Illegal Argument exception:");
            m8728C2.append(e3.getMessage());
            DtbLog.debug(m8728C2.toString());
            str3 = null;
        } catch (NoSuchFieldException e4) {
            DtbLog.debug("Field:" + str2 + " does not exist");
            str3 = null;
        } catch (SecurityException e5) {
            DtbLog.debug("Field:" + str2 + " is not accessable");
            str3 = null;
        }
        if (declaredField.isAccessible()) {
            str3 = (String) declaredField.get(null);
            return str3;
        }
        DtbLog.debug("Field:" + str2 + " is not accessable");
        return null;
    }

    public static String getURLEncodedString(String str) {
        if (isNullOrEmpty(str)) {
            return str;
        }
        try {
            return URLEncoder.encode(str, StringConstant.UTF8).replace("+", "%20").replace("*", "%2A").replace("%7E", "~");
        } catch (UnsupportedEncodingException e) {
            DtbLog.debugError("Unable to url encode :" + str);
            return str;
        }
    }

    public static Bundle initializeEmptyBundle() {
        return new Bundle();
    }

    public static boolean isActivityDestroyed(Activity activity) {
        return activity.isDestroyed();
    }

    public static boolean isClassAvailable(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public static boolean isNetworkConnected() {
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        if (AdRegistration.getContext().checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
            ConnectivityManager connectivityManager = (ConnectivityManager) AdRegistration.getContext().getSystemService("connectivity");
            if (connectivityManager == null || (activeNetwork = connectivityManager.getActiveNetwork()) == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
                return false;
            }
            boolean z = true;
            if (!networkCapabilities.hasTransport(0)) {
                z = networkCapabilities.hasTransport(1);
            }
            return z;
        }
        return true;
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.equals("");
    }

    public static boolean isNullOrEmpty(List list) {
        return list == null || list.size() == 0;
    }

    public static boolean isNullOrEmpty(Map map) {
        return map == null || map.isEmpty();
    }

    public static boolean isNullOrWhiteSpace(String str) {
        return isNullOrEmpty(str) || str.trim().equals("");
    }

    public static boolean isOnMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
        if (r3.equals("") != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean launchActivityForIntentLink(java.lang.String r3, android.content.Context r4) {
        /*
            r0 = r3
            if (r0 == 0) goto Lf
            r0 = r3
            r5 = r0
            r0 = r3
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L13
        Lf:
            java.lang.String r0 = "about:blank"
            r5 = r0
        L13:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r3 = r0
            r0 = r3
            java.lang.String r1 = "Launch Intent: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r3
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r3
            java.lang.String r0 = r0.toString()
            com.amazon.device.ads.DtbLog.debug(r0)
            android.content.Intent r0 = new android.content.Intent
            r1 = r0
            r1.<init>()
            r3 = r0
            r0 = r5
            java.lang.String r1 = "intent:"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L4e
            r0 = r5
            r1 = 1
            android.content.Intent r0 = android.content.Intent.parseUri(r0, r1)     // Catch: java.net.URISyntaxException -> L4b
            r3 = r0
            goto L57
        L4b:
            r3 = move-exception
            r0 = 0
            return r0
        L4e:
            r0 = r3
            r1 = r5
            android.net.Uri r1 = android.net.Uri.parse(r1)
            android.content.Intent r0 = r0.setData(r1)
        L57:
            r0 = r3
            java.lang.String r1 = "android.intent.action.VIEW"
            android.content.Intent r0 = r0.setAction(r1)
            r0 = r3
            r1 = 268435456(0x10000000, float:2.5243549E-29)
            android.content.Intent r0 = r0.setFlags(r1)
            r0 = r4
            r1 = r3
            r0.startActivity(r1)     // Catch: android.content.ActivityNotFoundException -> L6e
            r0 = 1
            return r0
        L6e:
            r4 = move-exception
            r0 = r3
            java.lang.String r0 = r0.getAction()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto Lb2
            java.lang.String r0 = "Could not handle "
            java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
            r5 = r0
            r0 = r4
            java.lang.String r1 = "market://"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L90
            java.lang.String r0 = "market"
            r3 = r0
            goto L94
        L90:
            java.lang.String r0 = "intent"
            r3 = r0
        L94:
            r0 = r5
            r1 = r3
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = " action: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r0 = r0.toString()
            com.amazon.device.ads.DtbLog.warn(r0)
            goto Lb8
        Lb2:
            java.lang.String r0 = "Could not handle nil action "
            com.amazon.device.ads.DtbLog.warn(r0)
        Lb8:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DtbCommonUtils.launchActivityForIntentLink(java.lang.String, android.content.Context):boolean");
    }

    public static int parseInt(String str, int i) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
            DtbLog.debugError("Exception parsing the integer from string:" + str);
        }
        return i;
    }
}
