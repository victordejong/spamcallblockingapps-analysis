package com.applovin.impl.sdk.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.icu.util.VersionInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Toast;
import androidx.annotation.Keep;
import com.applovin.impl.p035a.C0875a;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p053ad.AppLovinAdImpl;
import com.applovin.impl.sdk.p053ad.C1285d;
import com.applovin.impl.sdk.p053ad.C1292f;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p056d.C1322a;
import com.applovin.impl.sdk.p056d.C1328f;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.ads.mediation.applovin.AppLovinMediationAdapter;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Field;
import java.net.HttpURLConnection;
import java.net.NetworkInterface;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;
@Keep
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/Utils.class */
public abstract class Utils {
    public static final int BYTES_PER_KB = 1000;
    public static final String MACRO_CLCODE = "{CLCODE}";
    public static final String MACRO_CLICK_X = "{CLICK_X}";
    public static final String MACRO_CLICK_Y = "{CLICK_Y}";
    private static final String MACRO_EVENT_ID = "{EVENT_ID}";
    public static final String MACRO_IS_VIDEO_CLICK = "{IS_VIDEO_CLICK}";
    public static final String MACRO_SCREEN_HEIGHT = "{SCREEN_HEIGHT}";
    public static final String MACRO_SCREEN_WIDTH = "{SCREEN_WIDTH}";
    private static final String PLACEMENT_MACRO = "{PLACEMENT}";
    public static final String PLAY_STORE_PACKAGE_NAME = "com.android.vending";
    public static final String PLAY_STORE_SCHEME = "market";
    public static final String SHOWN_OUT_OF_CONTEXT_MACRO = "{SOC}";
    private static final String TAG = "Utils";
    private static final DecimalFormat decimalFormat = new DecimalFormat();
    public static Boolean isDspDemoApp;
    public static Boolean isExoPlayerEligible;

    public static boolean bitMaskContainsFlag(long j, long j2) {
        return (j & j2) != 0;
    }

    public static List<Uri> checkCachedResourcesExist(boolean z, AbstractC1286e abstractC1286e, C1408l c1408l, Context context) {
        if (abstractC1286e instanceof C0875a) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = new ArrayList(abstractC1286e.m5893y()).iterator();
        while (it2.hasNext()) {
            Uri uri = (Uri) it2.next();
            if (!c1408l.m5517Z().m5142b(uri.getLastPathSegment(), context)) {
                C1479t m5542A = c1408l.m5542A();
                m5542A.m5111e(TAG, "Cached HTML asset missing: " + uri);
                arrayList.add(uri);
            }
        }
        if (z) {
            Uri mo5908g = abstractC1286e.mo5908g();
            if (!c1408l.m5517Z().m5142b(mo5908g.getLastPathSegment(), context)) {
                C1479t m5542A2 = c1408l.m5542A();
                m5542A2.m5111e(TAG, "Cached video missing: " + mo5908g);
                arrayList.add(mo5908g);
            }
        }
        return arrayList;
    }

    public static boolean checkClassExistence(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Class.forName(str);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    public static boolean checkClassesExistence(List<String> list) {
        for (String str : list) {
            if (checkClassExistence(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean checkExoPlayerEligibility(C1408l c1408l) {
        if (isExoPlayerEligible == null) {
            int tryToGetExoPlayerVersionCode = tryToGetExoPlayerVersionCode();
            int intValue = ((Integer) c1408l.m5511a(C1314b.f4828cE)).intValue();
            isExoPlayerEligible = Boolean.valueOf(checkClassExistence("com.google.android.exoplayer2.ui.PlayerView") && tryToGetExoPlayerVersionCode >= ((Integer) c1408l.m5511a(C1314b.f4827cD)).intValue() && (intValue < 0 || tryToGetExoPlayerVersionCode <= intValue));
        }
        return isExoPlayerEligible.booleanValue();
    }

    public static void close(Closeable closeable, C1408l c1408l) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Throwable th) {
            if (c1408l == null) {
                return;
            }
            C1479t m5542A = c1408l.m5542A();
            m5542A.m5115b(TAG, "Unable to close stream: " + closeable, th);
        }
    }

    public static int compare(String str, String str2) {
        String digitsOnlyVersionString = StringUtils.toDigitsOnlyVersionString(str);
        String digitsOnlyVersionString2 = StringUtils.toDigitsOnlyVersionString(str2);
        try {
            int i = -1;
            if (Build.VERSION.SDK_INT >= 24) {
                int compareTo = VersionInfo.getInstance(digitsOnlyVersionString).compareTo(VersionInfo.getInstance(digitsOnlyVersionString2));
                if (compareTo == 0) {
                    return compareTo;
                }
                if (compareTo > 0) {
                    i = 1;
                }
                return i;
            }
            String[] split = digitsOnlyVersionString.split("\\.");
            String[] split2 = digitsOnlyVersionString2.split("\\.");
            int max = Math.max(split.length, split2.length);
            int i2 = 0;
            while (i2 < max) {
                String str3 = "0";
                String str4 = StringUtils.isValidString(split[i2]) ? split[i2] : "0";
                if (StringUtils.isValidString(split2[i2])) {
                    str3 = split2[i2];
                }
                int parseInt = i2 < split.length ? Integer.parseInt(str4) : 0;
                int parseInt2 = i2 < split2.length ? Integer.parseInt(str3) : 0;
                if (parseInt < parseInt2) {
                    return -1;
                }
                if (parseInt > parseInt2) {
                    return 1;
                }
                i2++;
            }
            return 0;
        } catch (Throwable th) {
            C1479t.m5113c(TAG, "Failed to process version string.", th);
            return 0;
        }
    }

    public static void disconnect(HttpURLConnection httpURLConnection, C1408l c1408l) {
        if (httpURLConnection == null) {
            return;
        }
        try {
            httpURLConnection.disconnect();
        } catch (Throwable th) {
            if (c1408l == null) {
                return;
            }
            C1479t m5542A = c1408l.m5542A();
            m5542A.m5115b(TAG, "Unable to disconnect connection: " + httpURLConnection, th);
        }
    }

    public static String encodeUrlMap(Map<String, String> map, boolean z) {
        if (map == null || map.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        TreeMap treeMap = map;
        if (z) {
            TreeMap treeMap2 = new TreeMap(new Comparator<String>() { // from class: com.applovin.impl.sdk.utils.Utils.1
                /* renamed from: a */
                public int compare(String str, String str2) {
                    return str.compareToIgnoreCase(str2);
                }
            });
            treeMap2.putAll(map);
            treeMap = treeMap2;
        }
        for (Map.Entry<String, String> entry : treeMap.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append((Object) entry.getKey());
            sb.append('=');
            sb.append((Object) entry.getValue());
        }
        return sb.toString();
    }

    private static long floatToLong(float f) {
        return Math.round(f);
    }

    public static String formatDoubleValue(double d, int i) {
        DecimalFormat decimalFormat2 = decimalFormat;
        decimalFormat2.setMaximumFractionDigits(i);
        return decimalFormat2.format(d);
    }

    private static List<Class> generateClassesList(List<String> list, C1408l c1408l) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list) {
            try {
                arrayList.add(Class.forName(str));
            } catch (ClassNotFoundException e) {
                C1479t m5542A = c1408l.m5542A();
                m5542A.m5111e(TAG, "Failed to create class for name: " + str);
            }
        }
        return arrayList;
    }

    public static int getAlwaysFinishActivitiesSetting(Context context) {
        C1492g.m5073b();
        return Settings.System.getInt(context.getContentResolver(), "always_finish_activities", 0);
    }

    public static String getAndroidOSInfo() {
        try {
            return Build.VERSION.RELEASE + " (" + getAndroidSdkCodename() + " - API " + Build.VERSION.SDK_INT + ")";
        } catch (Throwable th) {
            C1479t.m5113c(TAG, "Unable to get Android OS info", th);
            return "";
        }
    }

    public static String getAndroidSdkCodename() {
        Field[] fields;
        try {
            for (Field field : Build.VERSION_CODES.class.getFields()) {
                if (field.getInt(null) == Build.VERSION.SDK_INT) {
                    return field.getName();
                }
            }
            return "";
        } catch (Throwable th) {
            C1479t.m5113c(TAG, "Unable to get Android SDK codename", th);
            return "";
        }
    }

    public static boolean getBooleanForProbability(int i) {
        boolean z = false;
        if (i > 0) {
            if (i > 100) {
                z = false;
            } else {
                z = false;
                if (((int) (Math.random() * 100.0d)) + 1 <= i) {
                    z = true;
                }
            }
        }
        return z;
    }

    public static Field getField(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Class superclass = cls.getSuperclass();
            if (superclass != null) {
                return getField(superclass, str);
            }
            return null;
        }
    }

    public static Map<String, String> getMetaData(AppLovinSdkSettings appLovinSdkSettings) {
        try {
            Field field = getField(appLovinSdkSettings.getClass(), "metaData");
            if (field != null) {
                field.setAccessible(true);
            }
            return (Map) field.get(appLovinSdkSettings);
        } catch (Throwable th) {
            return null;
        }
    }

    public static int getOrientation(Context context) {
        Resources resources;
        Configuration configuration;
        if (context == null || (resources = context.getResources()) == null || (configuration = resources.getConfiguration()) == null) {
            return 0;
        }
        return configuration.orientation;
    }

    public static List<C1322a> getPostbacks(String str, JSONObject jSONObject, String str2, String str3, C1408l c1408l) {
        return getPostbacks(str, jSONObject, str2, (Map<String, String>) null, str3, c1408l);
    }

    public static List<C1322a> getPostbacks(String str, JSONObject jSONObject, String str2, String str3, Map<String, String> map, C1408l c1408l) {
        return getPostbacks(str, jSONObject, str2, Collections.emptyMap(), str3, map, false, c1408l);
    }

    public static List<C1322a> getPostbacks(String str, JSONObject jSONObject, String str2, Map<String, String> map, String str3, C1408l c1408l) {
        return getPostbacks(str, jSONObject, str2, map, str3, null, false, c1408l);
    }

    public static List<C1322a> getPostbacks(String str, JSONObject jSONObject, String str2, Map<String, String> map, String str3, Map<String, String> map2, boolean z, C1408l c1408l) {
        if (map == null) {
            map = new HashMap(1);
        }
        map.put(MACRO_CLCODE, str2);
        return getPostbacks(str, jSONObject, map, str3, map2, z, c1408l);
    }

    public static List<C1322a> getPostbacks(String str, JSONObject jSONObject, Map<String, String> map, String str2, C1408l c1408l) {
        return getPostbacks(str, jSONObject, map, str2, (Map<String, String>) null, c1408l);
    }

    public static List<C1322a> getPostbacks(String str, JSONObject jSONObject, Map<String, String> map, String str2, Map<String, String> map2, C1408l c1408l) {
        return getPostbacks(str, jSONObject, map, str2, map2, false, c1408l);
    }

    public static List<C1322a> getPostbacks(String str, JSONObject jSONObject, Map<String, String> map, String str2, Map<String, String> map2, boolean z, C1408l c1408l) {
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, str, new JSONObject());
        ArrayList arrayList = new ArrayList(jSONObject2.length() + 1);
        if (StringUtils.isValidString(str2)) {
            arrayList.add(new C1322a(str2, null, map2, z));
        }
        if (jSONObject2.length() > 0) {
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                try {
                    String next = keys.next();
                    if (!TextUtils.isEmpty(next)) {
                        String optString = jSONObject2.optString(next);
                        String replace = StringUtils.replace(next, map);
                        String str3 = optString;
                        if (!TextUtils.isEmpty(optString)) {
                            str3 = StringUtils.replace(optString, map);
                        }
                        arrayList.add(new C1322a(replace, str3, map2, z));
                    }
                } catch (Throwable th) {
                    c1408l.m5542A().m5115b(TAG, "Failed to create and add postback url.", th);
                }
            }
        }
        return arrayList;
    }

    public static View getRootView(View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        if (rootView == null) {
            return null;
        }
        View findViewById = rootView.findViewById(16908290);
        if (findViewById != null) {
            rootView = findViewById;
        }
        return rootView;
    }

    public static int getRotation(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null) {
            return 0;
        }
        return windowManager.getDefaultDisplay().getRotation();
    }

    public static String getSafedkSdkKey() {
        return getSafedkString("getSdkKey");
    }

    private static String getSafedkString(String str) {
        try {
            return (String) Class.forName("com.applovin.quality.AppLovinQualityService").getMethod(str, new Class[0]).invoke(null, new Object[0]);
        }
    }

    public static String getSafedkVersion() {
        return getSafedkString("getVersion");
    }

    public static long getServerAdjustedUnixTimestampMillis(C1408l c1408l) {
        long longValue = ((Long) c1408l.m5511a(C1314b.f4965er)).longValue();
        long longValue2 = ((Long) c1408l.m5511a(C1314b.f4966es)).longValue();
        long currentTimeMillis = System.currentTimeMillis();
        return (longValue <= 0 || longValue2 <= 0) ? currentTimeMillis : (longValue - longValue2) + currentTimeMillis;
    }

    public static String getString(Class cls, String str) {
        try {
            Field field = getField(cls, str);
            field.setAccessible(true);
            return (String) field.get(null);
        } catch (Throwable th) {
            return null;
        }
    }

    public static String getUserEngagementSdkVersion() {
        try {
            return (String) Class.forName("com.applovin.sdk.userengagement.impl.api.AppLovinUserEngagementSdkImpl").getMethod("getVersion", new Class[0]).invoke(null, new Object[0]);
        } catch (Throwable th) {
            return "";
        }
    }

    public static int getVideoCompletionPercent(JSONObject jSONObject) {
        int i = JsonUtils.getInt(jSONObject, "video_completion_percent", -1);
        if (i < 0 || i > 100) {
            return 95;
        }
        return i;
    }

    public static C1285d getZone(JSONObject jSONObject, C1408l c1408l) {
        return C1285d.m6007a(AppLovinAdSize.fromString(JsonUtils.getString(jSONObject, "ad_size", null)), AppLovinAdType.fromString(JsonUtils.getString(jSONObject, "ad_type", null)), JsonUtils.getString(jSONObject, AppLovinUtils.ServerParameterKeys.ZONE_ID, null));
    }

    public static byte[] gzip(byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(bArr);
        gZIPOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static boolean hasAndroidCoreJsonLibrary(C1408l c1408l) {
        if (C1492g.m5072c()) {
            try {
                JSONObject.wrap(JSONObject.NULL);
                return true;
            } catch (Throwable th) {
                c1408l.m5542A().m5118a(TAG, "Failed to wrap JSONObject with exception", th);
                return false;
            }
        }
        return true;
    }

    public static boolean isAppLovinTestEnvironment(Context context) {
        return C1488d.m5084a(context).m5083a("applovin.sdk.is_test_environment");
    }

    public static boolean isBML(AppLovinAdSize appLovinAdSize) {
        return appLovinAdSize == AppLovinAdSize.BANNER || appLovinAdSize == AppLovinAdSize.MREC || appLovinAdSize == AppLovinAdSize.LEADER || appLovinAdSize == AppLovinAdSize.CROSS_PROMO;
    }

    public static boolean isCurrentProcessInForeground() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        try {
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
        } catch (Throwable th) {
            C1479t.m5113c(TAG, "Exception thrown while getting memory state.", th);
        }
        int i = runningAppProcessInfo.importance;
        return i == 100 || i == 200;
    }

    public static boolean isDeepLinkPlusUrl(Uri uri) {
        if (uri == null) {
            return false;
        }
        boolean z = false;
        if ("applovin".equalsIgnoreCase(uri.getScheme())) {
            z = false;
            if (AppLovinMediationAdapter.APPLOVIN_SDK_ERROR_DOMAIN.equalsIgnoreCase(uri.getHost())) {
                z = false;
                if ("/adservice/deeplink".equals(uri.getPath())) {
                    z = true;
                }
            }
        }
        return z;
    }

    public static boolean isDomainWhitelisted(String str, List<String> list) {
        for (String str2 : list) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isDspDemoApp(Context context) {
        if (isDspDemoApp == null) {
            isDspDemoApp = Boolean.valueOf("com.applovin.apps.dspdemo".equals(context.getPackageName()));
        }
        return isDspDemoApp.booleanValue();
    }

    public static boolean isMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean isProguardRulesOmitted() {
        try {
            String str = AppLovinSdk.VERSION;
            return false;
        } catch (ClassNotFoundException e) {
            return true;
        }
    }

    public static boolean isPubInDebugMode(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    public static boolean isTestApp(Context context) {
        String packageName = context.getPackageName();
        return "com.revolverolver.fliptrickster".equals(packageName) || "com.mindstormstudios.idlemakeover".equals(packageName);
    }

    public static boolean isVPNConnected() {
        String displayName;
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            do {
                if (!networkInterfaces.hasMoreElements()) {
                    return false;
                }
                displayName = networkInterfaces.nextElement().getDisplayName();
                if (displayName.contains("tun") || displayName.contains("ppp")) {
                    return true;
                }
            } while (!displayName.contains("ipsec"));
            return true;
        } catch (Throwable th) {
            C1479t.m5113c(TAG, "Unable to check Network Interfaces", th);
            return false;
        }
    }

    @Keep
    public static boolean isVerboseLoggingConfigured() {
        Context m5531L = C1408l.m5531L();
        if (m5531L != null) {
            return C1488d.m5084a(m5531L).m5083a("applovin.sdk.verbose_logging");
        }
        return false;
    }

    public static boolean isVerboseLoggingEnabled(Context context) {
        Context context2 = context;
        if (context == null) {
            context2 = C1408l.m5531L();
        }
        if (context2 != null) {
            return C1488d.m5084a(context2).m5081a("applovin.sdk.verbose_logging", false);
        }
        return false;
    }

    public static boolean isVideoMutedInitially(C1408l c1408l) {
        return ((Boolean) c1408l.m5511a(C1314b.f4870cu)).booleanValue() ? c1408l.m5454p().isMuted() : ((Boolean) c1408l.m5511a(C1314b.f4868cs)).booleanValue();
    }

    public static boolean isViewInChildView(View view, View view2) {
        if (view == view2) {
            return true;
        }
        if (!(view2 instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view2;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            if (isViewInChildView(view, viewGroup.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    public static boolean isViewInTopActivity(View view, Activity activity) {
        View rootView;
        if (activity == null || view == null) {
            return false;
        }
        Window window = activity.getWindow();
        if (window != null) {
            rootView = window.getDecorView();
        } else {
            View findViewById = activity.findViewById(16908290);
            if (findViewById == null) {
                return false;
            }
            rootView = findViewById.getRootView();
        }
        return isViewInChildView(view, rootView);
    }

    public static void maybeHandleNoFillResponseForPublisher(String str, MaxAdFormat maxAdFormat, JSONObject jSONObject, C1408l c1408l) {
        if (jSONObject.has("no_fill_reason")) {
            Object object = JsonUtils.getObject(jSONObject, "no_fill_reason", new Object());
            C1479t.m5107i("AppLovinSdk", "\n**************************************************\nNO FILL received:\n..ID: \"" + str + "\"\n..FORMAT: \"" + maxAdFormat.getLabel() + "\"\n..SDK KEY: \"" + c1408l.m5444z() + "\"\n..PACKAGE NAME: \"" + c1408l.m5532K().getPackageName() + "\"\n..Reason: " + object + "\n**************************************************\n");
        }
    }

    public static AppLovinAd maybeRetrieveNonDummyAd(AppLovinAd appLovinAd, C1408l c1408l) {
        AppLovinAd appLovinAd2 = appLovinAd;
        if (appLovinAd instanceof C1292f) {
            C1292f c1292f = (C1292f) appLovinAd;
            AppLovinAd dequeueAd = c1408l.m5449u().dequeueAd(c1292f.getAdZone());
            C1479t m5542A = c1408l.m5542A();
            m5542A.m5116b(TAG, "Dequeued ad for dummy ad: " + dequeueAd);
            if (dequeueAd != null) {
                c1292f.m5890a(dequeueAd);
                ((AppLovinAdImpl) dequeueAd).setDummyAd(c1292f);
                return dequeueAd;
            }
            appLovinAd2 = c1292f.m5891a();
        }
        return appLovinAd2;
    }

    public static double millisToSeconds(long j) {
        return j / 1000.0d;
    }

    public static boolean objectIsOfType(Object obj, List<String> list, C1408l c1408l) {
        if (list == null) {
            return false;
        }
        for (Class cls : generateClassesList(list, c1408l)) {
            if (cls.isInstance(obj)) {
                if (!(obj instanceof Map)) {
                    if (!(obj instanceof List)) {
                        return true;
                    }
                    for (Object obj2 : (List) obj) {
                        if (!objectIsOfType(obj2, list, c1408l)) {
                            return false;
                        }
                    }
                    return true;
                }
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    if (!(entry.getKey() instanceof String)) {
                        c1408l.m5542A().m5116b(TAG, "Invalid key type used. Map keys should be of type String.");
                        return false;
                    } else if (!objectIsOfType(entry.getValue(), list, c1408l)) {
                        return false;
                    }
                }
                return true;
            }
        }
        C1479t m5542A = c1408l.m5542A();
        m5542A.m5116b(TAG, "Object '" + obj + "' does not match any of the required types '" + list + "'.");
        return false;
    }

    public static boolean openUri(Context context, Uri uri, C1408l c1408l) {
        boolean z = false;
        if (uri == null) {
            return false;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            if (!(context instanceof Activity)) {
                intent.setFlags(268435456);
            }
            if (PLAY_STORE_SCHEME.equals(intent.getScheme())) {
                intent.setPackage("com.android.vending");
            }
            c1408l.m5493ab().m4914c();
            context.startActivity(intent);
            z = true;
        } catch (Throwable th) {
            c1408l.m5542A().m5115b(TAG, "Unable to open \"" + uri + "\".", th);
        }
        if (!z) {
            c1408l.m5493ab().m4912d();
        }
        return z;
    }

    public static long parseColor(String str) {
        if (StringUtils.isValidString(str)) {
            try {
                return Color.parseColor(str);
            } catch (Throwable th) {
                return Long.MAX_VALUE;
            }
        }
        return Long.MAX_VALUE;
    }

    public static void putObjectForStringIfValid(String str, String str2, Map map) {
        if (!TextUtils.isEmpty(str2)) {
            map.put(str, str2);
        }
    }

    public static void renameKeyInObjectMap(String str, String str2, Map<String, Object> map) {
        if (map.containsKey(str)) {
            map.put(str2, map.get(str));
            map.remove(str);
        }
    }

    public static String replaceCommonMacros(String str) {
        return replaceCommonMacros(false, str);
    }

    public static String replaceCommonMacros(boolean z, String str) {
        return str.replace(PLACEMENT_MACRO, "").replace(SHOWN_OUT_OF_CONTEXT_MACRO, String.valueOf(z));
    }

    public static String retrieveLauncherActivityFullyQualifiedName(Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        if (!queryIntentActivities.isEmpty()) {
            return queryIntentActivities.get(0).activityInfo.name;
        }
        return null;
    }

    public static Activity retrieveParentActivity(View view, C1408l c1408l) {
        if (view == null) {
            return null;
        }
        int i = 0;
        while (i < 1000) {
            i++;
            try {
                Context context = view.getContext();
                if (context instanceof Activity) {
                    return (Activity) context;
                }
                ViewParent parent = view.getParent();
                if (!(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } catch (Throwable th) {
                c1408l.m5542A().m5115b(TAG, "Encountered error while retrieving activity from view", th);
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ea, code lost:
        if (r0.length() > r10) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x011b, code lost:
        if (r0.length() > r10) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x011e, code lost:
        r7 = r0.substring(0, r10);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object sanitizeSuperProperty(java.lang.Object r5, com.applovin.impl.sdk.C1408l r6) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.utils.Utils.sanitizeSuperProperty(java.lang.Object, com.applovin.impl.sdk.l):java.lang.Object");
    }

    public static float secondsToMillis(float f) {
        return f * 1000.0f;
    }

    public static long secondsToMillisLong(float f) {
        return floatToLong(secondsToMillis(f));
    }

    public static String shortenKey(String str) {
        return (str == null || str.length() <= 4) ? "NOKEY" : str.substring(str.length() - 4);
    }

    public static void showAlert(String str, String str2, Context context) {
        new AlertDialog.Builder(context).setTitle(str).setMessage(str2).setNegativeButton(17039370, (DialogInterface.OnClickListener) null).create().show();
    }

    public static void showToast(final String str, final Context context) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.Utils.2
            @Override // java.lang.Runnable
            public void run() {
                Toast makeText = Toast.makeText(context, str, 0);
                makeText.setMargin(0.0f, 0.1f);
                makeText.show();
            }
        });
    }

    public static void showToast(String str, MaxAd maxAd, Context context) {
        Toast.makeText(context, maxAd.getFormat().getDisplayName() + ": " + str, 1).show();
    }

    public static Map<String, String> stringifyObjectMap(Map<String, Object> map) {
        HashMap hashMap = new HashMap();
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                hashMap.put(entry.getKey(), String.valueOf(entry.getValue()));
            }
        }
        return hashMap;
    }

    public static Map<String, String> toUrlSafeMap(Map<String, String> map) {
        HashMap hashMap = new HashMap(map);
        for (String str : hashMap.keySet()) {
            String str2 = (String) hashMap.get(str);
            if (str2 != null) {
                hashMap.put(str, StringUtils.encodeUrlString(str2));
            }
        }
        return hashMap;
    }

    public static int toVersionCode(String str) {
        String[] split;
        int i = 0;
        for (String str2 : str.replaceAll("-beta", ".").split("\\.")) {
            if (str2.length() > 2) {
                C1479t.m5107i(TAG, "Version number components cannot be longer than two digits -> " + str);
                return i;
            }
            i = (i * 100) + Integer.parseInt(str2);
        }
        int i2 = i;
        if (!str.contains("-beta")) {
            i2 = (i * 100) + 99;
        }
        return i2;
    }

    public static double tryParseDouble(String str, double d) {
        try {
            return Double.parseDouble(str);
        } catch (Throwable th) {
            C1479t.m5113c(TAG, "Failed to parse double from String: " + str, th);
            return d;
        }
    }

    public static int tryToGetExoPlayerVersionCode() {
        try {
            Field field = getField(Class.forName("com.google.android.exoplayer2.ExoPlayerLibraryInfo"), "VERSION_INT");
            field.setAccessible(true);
            return ((Integer) field.get(null)).intValue();
        } catch (Exception e) {
            return -1;
        }
    }

    public static String urlStringWithoutQueryParameters(String str) {
        Uri parse = Uri.parse(str);
        return new Uri.Builder().scheme(parse.getScheme()).authority(parse.getAuthority()).path(parse.getPath()).build().toString();
    }

    public static void validateAdSdkKey(AppLovinAd appLovinAd, C1408l c1408l) {
        if (!(appLovinAd instanceof AppLovinAdBase)) {
            return;
        }
        String m5444z = c1408l.m5444z();
        String m5444z2 = ((AppLovinAdBase) appLovinAd).getSdk().m5444z();
        if (m5444z.equals(m5444z2)) {
            return;
        }
        C1479t.m5107i("AppLovinAd", "Ad was loaded from sdk with key: " + m5444z2 + ", but is being rendered from sdk with key: " + m5444z);
        c1408l.m5524S().m5741a(C1328f.f5092l);
    }
}
