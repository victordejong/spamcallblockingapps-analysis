package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.StatFs;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.core.C4462a;
import com.bytedance.sdk.openadsdk.core.C4516c;
import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.C4802y;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p154e.C4565o;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c;
import com.bytedance.sdk.openadsdk.core.video.p161d.C4699d;
import com.bytedance.sdk.openadsdk.core.widget.webview.SSWebView;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.multipro.p192d.C5106a;
import com.bytedance.sdk.openadsdk.p146c.C4353a;
import com.mopub.common.AdType;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.utils.af */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/af.class */
public class C5438af {

    /* renamed from: a */
    private static ExecutorService f18972a = Executors.newSingleThreadExecutor();

    /* renamed from: b */
    private static C5437ae f18973b = new C5437ae();

    /* renamed from: c */
    private static String f18974c = null;

    /* renamed from: d */
    private static volatile String f18975d = "";

    /* renamed from: e */
    private static String f18976e = null;

    /* renamed from: f */
    private static String f18977f = null;

    /* renamed from: g */
    private static String f18978g = null;

    /* renamed from: h */
    private static HashSet<String> f18979h = new HashSet<>(Arrays.asList("Asia/Shanghai", "Asia/Urumqi", "Asia/Chongqing", "Asia/Harbin", "Asia/Kashgar"));

    /* renamed from: com.bytedance.sdk.openadsdk.utils.af$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/af$a.class */
    public static class CallableC5441a implements Callable<String> {

        /* renamed from: a */
        int f18981a;

        CallableC5441a(int i) {
            this.f18981a = 1;
            this.f18981a = i;
        }

        /* renamed from: b */
        private String m32238b() {
            String str;
            Throwable th;
            String str2;
            try {
                str2 = System.getProperty("http.agent");
                str = str2;
                if (str2 != null) {
                    str = str2;
                    try {
                        if (!"unKnow".equals(str2)) {
                            if (C5094b.m33091b()) {
                                C5106a.m33041a("sp_multi_ua_data", "android_system_ua", str2);
                                str = str2;
                            } else {
                                C4516c.m35418a(C4600n.m34815a()).m35415a("android_system_ua", str2);
                                str = str2;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        C5478q.m32106e("getUA", "e:" + th.getMessage());
                        str = str2;
                        return str;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                str2 = "unKnow";
            }
            return str;
        }

        /* renamed from: c */
        private String m32237c() {
            String str;
            synchronized (this) {
                final String[] strArr = new String[1];
                strArr[0] = "unKnow";
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.af.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        strArr[0] = C5438af.m32241t();
                        C5478q.m32112b("getUA", "webview ua：" + strArr[0]);
                    }
                });
                do {
                } while ("unKnow".equals(strArr[0]));
                str = strArr[0];
            }
            return str;
        }

        /* renamed from: a */
        public String call() throws Exception {
            String str;
            synchronized (this) {
                str = "unKnow";
                if (this.f18981a == 1) {
                    str = m32237c();
                }
                if (this.f18981a == 2) {
                    str = m32238b();
                }
            }
            return str;
        }
    }

    /* renamed from: a */
    public static int m32301a(AbstractC4719c abstractC4719c, boolean z) {
        return (abstractC4719c == null || abstractC4719c.mo34249u() == null || !abstractC4719c.mo34249u().m34423g()) ? 3 : !z;
    }

    /* renamed from: a */
    public static int m32300a(String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1695837674:
                if (str.equals("banner_ad")) {
                    z = false;
                    break;
                }
                break;
            case -1364000502:
                if (str.equals(AdType.REWARDED_VIDEO)) {
                    z = true;
                    break;
                }
                break;
            case -764631662:
                if (str.equals("fullscreen_interstitial_ad")) {
                    z = true;
                    break;
                }
                break;
            case 174971131:
                if (str.equals("splash_ad")) {
                    z = true;
                    break;
                }
                break;
            case 564365438:
                if (str.equals("cache_splash_ad")) {
                    z = true;
                    break;
                }
                break;
            case 1844104722:
                if (str.equals("interaction")) {
                    z = true;
                    break;
                }
                break;
            case 1912999166:
                if (str.equals("draw_ad")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return 2;
            case true:
                return 7;
            case true:
                return 5;
            case true:
            case true:
                return 4;
            case true:
                return 3;
            case true:
                return 6;
            default:
                return 1;
        }
    }

    /* renamed from: a */
    public static Intent m32307a(Context context, String str) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            return null;
        }
        if (!launchIntentForPackage.hasCategory("android.intent.category.LAUNCHER")) {
            launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
        }
        launchIntentForPackage.setPackage(null);
        launchIntentForPackage.addFlags(2097152);
        launchIntentForPackage.addFlags(268435456);
        return launchIntentForPackage;
    }

    /* renamed from: a */
    public static String m32312a() {
        String str;
        String m33035b;
        try {
            m33035b = C5094b.m33091b() ? C5106a.m33035b("sp_multi_ua_data", "android_system_ua", "unKnow") : C4516c.m35418a(C4600n.m34815a()).m35411b("android_system_ua", "unKnow");
        } catch (Exception e) {
            str = "unKnow";
        }
        if (m33035b == null || "unKnow".equals(m33035b)) {
            FutureTask futureTask = new FutureTask(new CallableC5441a(2));
            f18972a.execute(futureTask);
            str = (String) futureTask.get(500L, TimeUnit.MILLISECONDS);
            C5478q.m32106e("getUA", " getAndroidSystemUA userAgent".concat(String.valueOf(str)));
            return str;
        }
        return m33035b;
    }

    /* renamed from: a */
    public static String m32311a(int i) {
        switch (i) {
            case 1:
                return "embeded_ad_landingpage";
            case 2:
                return "banner_ad_landingpage";
            case 3:
                return "interaction_landingpage";
            case 4:
                return "splash_ad_landingpage";
            case 5:
                return "fullscreen_interstitial_ad";
            case 6:
                return "draw_ad_landingpage";
            case 7:
                return "rewarded_video_landingpage";
            default:
                return null;
        }
    }

    /* renamed from: a */
    public static String m32309a(Context context) {
        String m35411b = C4516c.m35418a(context).m35411b("total_memory", (String) null);
        String str = m35411b;
        if (m35411b == null) {
            str = m32275e(context, "MemTotal");
            C4516c.m35418a(context).m35415a("total_memory", str);
        }
        return str;
    }

    /* renamed from: a */
    public static String m32306a(C4557i c4557i) {
        if (c4557i == null) {
            return null;
        }
        try {
            return m32294b(m32284c(c4557i.m35228S()));
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static Map<String, Object> m32310a(long j, C4557i c4557i, C4699d c4699d) {
        HashMap hashMap = new HashMap();
        hashMap.put("video_start_duration", Long.valueOf(j));
        if (c4557i != null) {
            if (!TextUtils.isEmpty(c4557i.m35231P())) {
                hashMap.put(Reporting.Key.CREATIVE_ID, c4557i.m35231P());
            }
            C4565o m35245B = c4557i.m35245B();
            if (m35245B != null) {
                hashMap.put("video_resolution", m35245B.m35046f());
                hashMap.put("video_size", Long.valueOf(m35245B.m35052d()));
            }
        }
        m32299a(hashMap, c4699d);
        return hashMap;
    }

    /* renamed from: a */
    public static Map<String, Object> m32305a(C4557i c4557i, int i, int i2, C4699d c4699d) {
        HashMap hashMap = new HashMap();
        hashMap.put(Reporting.Key.CREATIVE_ID, c4557i.m35231P());
        hashMap.put("error_code", Integer.valueOf(i));
        hashMap.put("extra_error_code", Integer.valueOf(i2));
        C4565o m35245B = c4557i.m35245B();
        if (m35245B != null) {
            hashMap.put("video_size", Long.valueOf(m35245B.m35052d()));
            hashMap.put("video_resolution", m35245B.m35046f());
        }
        m32299a(hashMap, c4699d);
        return hashMap;
    }

    /* renamed from: a */
    public static Map<String, Object> m32304a(C4557i c4557i, long j, C4699d c4699d) {
        if (c4557i == null) {
            return new HashMap();
        }
        HashMap hashMap = new HashMap();
        hashMap.put(Reporting.Key.CREATIVE_ID, c4557i.m35231P());
        hashMap.put("buffers_time", Long.valueOf(j));
        C4565o m35245B = c4557i.m35245B();
        if (m35245B != null) {
            hashMap.put("video_size", Long.valueOf(m35245B.m35052d()));
            hashMap.put("video_resolution", m35245B.m35046f());
        }
        m32299a(hashMap, c4699d);
        return hashMap;
    }

    /* renamed from: a */
    public static Map<String, Object> m32296a(boolean z, C4557i c4557i, long j, long j2, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(Reporting.Key.CREATIVE_ID, c4557i.m35231P());
        hashMap.put("load_time", Long.valueOf(j));
        C4565o m35245B = c4557i.m35245B();
        if (m35245B != null) {
            hashMap.put("video_size", Long.valueOf(m35245B.m35052d()));
            hashMap.put("video_resolution", m35245B.m35046f());
        }
        if (!z) {
            hashMap.put("error_code", Long.valueOf(j2));
            String str2 = str;
            if (TextUtils.isEmpty(str)) {
                str2 = "unknown";
            }
            hashMap.put("error_message", str2);
        }
        return hashMap;
    }

    /* renamed from: a */
    public static void m32303a(C4557i c4557i, View view) {
    }

    /* renamed from: a */
    public static void m32302a(C4557i c4557i, String str) {
        if (c4557i != null) {
            try {
                String m35240G = c4557i.m35240G();
                String str2 = m35240G;
                if (TextUtils.isEmpty(m35240G)) {
                    str2 = m35240G;
                    if (c4557i.m35229R() != null) {
                        str2 = m35240G;
                        if (c4557i.m35229R().m35280c() == 1) {
                            str2 = m35240G;
                            if (!TextUtils.isEmpty(c4557i.m35229R().m35282b())) {
                                str2 = c4557i.m35229R().m35282b();
                            }
                        }
                    }
                }
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                C4802y.m33904a(C4600n.m34815a(), str2, c4557i, m32300a(str), str, false);
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    private static void m32299a(Map<String, Object> map, C4699d c4699d) {
        if (map.containsKey("video_resolution") || c4699d == null) {
            return;
        }
        try {
            if (c4699d.m34455a() == null) {
                return;
            }
            map.put("video_resolution", String.format(Locale.getDefault(), "%d×%d", Integer.valueOf(c4699d.m34455a().getVideoWidth()), Integer.valueOf(c4699d.m34455a().getVideoHeight())));
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public static void m32298a(JSONObject jSONObject, Float f, Float f2) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put(C4353a.m35737a("w0yrwBEUr1ini9hm/p022A==", C4462a.m35512a()), f2);
            jSONObject.put(C4353a.m35737a("LeHrqxcsm457V3n1/LcJVw==", C4462a.m35512a()), f);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m32297a(JSONObject jSONObject, boolean z) {
        String m32316a;
        if (!C5437ae.m32317a() || (m32316a = C5437ae.m32316a("testGps.txt")) == null) {
            return;
        }
        try {
            String[] split = m32316a.split(",");
            if (split.length < 2 || !m32253k(split[1]) || !m32253k(split[0])) {
                return;
            }
            if (z) {
                m32298a(jSONObject, Float.valueOf(Float.parseFloat(split[0])), Float.valueOf(Float.parseFloat(split[1])));
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            m32298a(jSONObject2, Float.valueOf(Float.parseFloat(split[0])), Float.valueOf(Float.parseFloat(split[1])));
            jSONObject.put("geo", jSONObject2);
        } catch (JSONException e) {
        }
    }

    /* renamed from: a */
    public static boolean m32308a(Context context, Intent intent) {
        if (intent == null) {
            return false;
        }
        try {
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 65536);
            if (queryIntentActivities == null) {
                return false;
            }
            return queryIntentActivities.size() > 0;
        } catch (Throwable th) {
            return false;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0098 -> B:25:0x0094). Please submit an issue!!! */
    /* renamed from: b */
    public static String m32295b() {
        if (!TextUtils.isEmpty(f18975d)) {
            return f18975d;
        }
        try {
            String m35024a = C4570g.m35024a("sdk_local_web_ua", 86400000L);
            f18975d = m35024a;
            if (TextUtils.isEmpty(m35024a)) {
                synchronized (TextUtils.class) {
                    if (TextUtils.isEmpty(f18975d)) {
                        if (Build.VERSION.SDK_INT >= 17) {
                            f18975d = WebSettings.getDefaultUserAgent(C4600n.m34815a());
                        } else if (Looper.myLooper() == Looper.getMainLooper()) {
                            f18975d = new SSWebView(C4600n.m34815a()).getSettings().getUserAgentString();
                        } else {
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.af.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    try {
                                        String unused = C5438af.f18975d = new SSWebView(C4600n.m34815a()).getSettings().getUserAgentString();
                                    } catch (Exception e) {
                                    }
                                }
                            });
                        }
                        C4570g.m35023a("sdk_local_web_ua", f18975d);
                    }
                }
            }
        } catch (Exception e) {
        }
        return f18975d;
    }

    /* renamed from: b */
    public static String m32294b(int i) {
        return i != 1 ? i != 2 ? (i == 3 || i == 4) ? "splash_ad" : i != 7 ? i != 8 ? i != 9 ? "embeded_ad" : "draw_ad" : "fullscreen_interstitial_ad" : AdType.REWARDED_VIDEO : "interaction" : "banner_ad";
    }

    /* renamed from: b */
    public static String m32293b(Context context) {
        return C4516c.m35418a(context).m35411b("total_memory", "0");
    }

    /* renamed from: b */
    public static JSONObject m32290b(String str) {
        JSONObject jSONObject;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return jSONObject;
        }
        jSONObject = null;
        return jSONObject;
    }

    /* renamed from: b */
    public static boolean m32292b(Context context, String str) {
        boolean z = false;
        if (context != null) {
            z = false;
            if (!TextUtils.isEmpty(str)) {
                try {
                    z = false;
                    if (context.getPackageManager().getPackageInfo(str, 0) != null) {
                        z = true;
                    }
                } catch (Throwable th) {
                    z = false;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m32291b(C4557i c4557i) {
        return c4557i != null && m32284c(c4557i.m35228S()) == 9;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    public static int m32288c(int i) {
        Throwable th;
        FileReader fileReader = null;
        BufferedReader bufferedReader = null;
        int i2 = i;
        int i3 = 0;
        while (true) {
            int i4 = i2 - 1;
            if (i4 >= 0) {
                try {
                    FileReader fileReader2 = new FileReader("/sys/devices/system/cpu/cpu" + i4 + "/cpufreq/cpuinfo_max_freq");
                    try {
                        BufferedReader bufferedReader2 = new BufferedReader(fileReader2);
                        try {
                            String readLine = bufferedReader2.readLine();
                            int i5 = i3;
                            if (!TextUtils.isEmpty(readLine)) {
                                int parseInt = Integer.parseInt(readLine);
                                i5 = i3;
                                if (parseInt > i3) {
                                    i5 = parseInt;
                                }
                            }
                            try {
                                bufferedReader2.close();
                                fileReader2.close();
                            } catch (Exception e) {
                            }
                            bufferedReader = bufferedReader2;
                            fileReader = fileReader2;
                            i3 = i5;
                            i2 = i4;
                        } catch (Throwable th2) {
                            fileReader = fileReader2;
                            th = th2;
                            bufferedReader = bufferedReader2;
                            try {
                                C5478q.m32106e("ToolUtils", th.getMessage());
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (Exception e2) {
                                        i2 = i4;
                                    }
                                }
                                if (fileReader != null) {
                                    fileReader.close();
                                }
                                i2 = i4;
                            } catch (Throwable th3) {
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (Exception e3) {
                                        throw th3;
                                    }
                                }
                                if (fileReader != null) {
                                    fileReader.close();
                                }
                                throw th3;
                            }
                        }
                    } catch (Throwable th4) {
                        fileReader = fileReader2;
                        th = th4;
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            } else {
                return i3;
            }
        }
    }

    /* renamed from: c */
    public static int m32287c(Context context) {
        return C4516c.m35418a(context).m35413b("cpu_count", 0);
    }

    /* renamed from: c */
    public static int m32284c(String str) {
        JSONObject m32290b = m32290b(str);
        if (m32290b != null) {
            return m32290b.optInt("ad_slot_type", 0);
        }
        return 0;
    }

    /* renamed from: c */
    public static String m32289c() {
        return UUID.randomUUID().toString();
    }

    /* renamed from: c */
    public static boolean m32286c(Context context, String str) {
        return C4570g.m35020b() != null && !C4570g.m35020b().m35029a();
    }

    /* renamed from: c */
    public static boolean m32285c(C4557i c4557i) {
        if (c4557i != null) {
            return m32284c(c4557i.m35228S()) == 3 || m32284c(c4557i.m35228S()) == 4;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x006c, code lost:
        if (r3 == 0) goto L18;
     */
    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m32282d(int r3) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.C5438af.m32282d(int):int");
    }

    /* renamed from: d */
    public static int m32281d(Context context) {
        return C4516c.m35418a(context).m35413b("cpu_max_frequency", 0);
    }

    /* renamed from: d */
    public static int m32278d(String str) {
        JSONObject m32290b = m32290b(str);
        if (m32290b != null) {
            return m32290b.optInt("rit", 0);
        }
        return 0;
    }

    /* renamed from: d */
    public static String m32283d() {
        String str;
        synchronized (C5438af.class) {
            try {
                if (TextUtils.isEmpty(f18976e) && C4600n.m34815a() != null) {
                    f18976e = C4600n.m34815a().getPackageName();
                }
                str = f18976e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    /* renamed from: d */
    public static boolean m32280d(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Intent intent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + Uri.encode(str)));
            if (!(context instanceof Activity)) {
                intent.setFlags(268435456);
            }
            C5450c.m32194a(context, intent, null);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: d */
    public static boolean m32279d(C4557i c4557i) {
        return c4557i != null && m32284c(c4557i.m35228S()) == 7;
    }

    /* renamed from: e */
    public static int m32276e(Context context) {
        return C4516c.m35418a(context).m35413b("cpu_min_frequency", 0);
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: e */
    public static long m32273e(String str) {
        JSONObject m32290b = m32290b(str);
        char c = 0;
        if (m32290b != null) {
            c = m32290b.optLong("uid", 0L);
        }
        return c;
    }

    /* renamed from: e */
    public static String m32277e() {
        String str;
        synchronized (C5438af.class) {
            try {
                if (TextUtils.isEmpty(f18977f) && C4600n.m34815a() != null) {
                    PackageInfo packageInfo = C4600n.m34815a().getPackageManager().getPackageInfo(m32283d(), 0);
                    f18977f = String.valueOf(packageInfo.versionCode);
                    f18978g = packageInfo.versionName;
                }
                str = f18977f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    /* renamed from: e */
    public static String m32275e(Context context, String str) {
        FileReader fileReader;
        Throwable th;
        BufferedReader bufferedReader;
        String readLine;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                bufferedReader = new BufferedReader(fileReader, 4096);
                do {
                    try {
                        readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            th.printStackTrace();
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception e) {
                                }
                            }
                            if (fileReader == null) {
                                return null;
                            }
                            try {
                                fileReader.close();
                                return null;
                            } catch (Exception e2) {
                                return null;
                            }
                        } catch (Throwable th3) {
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception e3) {
                                }
                            }
                            if (fileReader != null) {
                                try {
                                    fileReader.close();
                                } catch (Exception e4) {
                                }
                            }
                            throw th3;
                        }
                    }
                } while (!readLine.contains(str));
                if (readLine == null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception e5) {
                    }
                    try {
                        fileReader.close();
                        return null;
                    } catch (Exception e6) {
                        return null;
                    }
                }
                String[] split = readLine.split("\\s+");
                C5478q.m32112b("ToolUtils", "getTotalMemory = " + split[1]);
                String str2 = split[1];
                try {
                    bufferedReader.close();
                } catch (Exception e7) {
                }
                try {
                    fileReader.close();
                } catch (Exception e8) {
                }
                return str2;
            } catch (Throwable th4) {
                th = th4;
                bufferedReader = null;
            }
        } catch (Throwable th5) {
            th = th5;
            fileReader = null;
            bufferedReader = null;
        }
    }

    /* renamed from: e */
    public static boolean m32274e(C4557i c4557i) {
        return c4557i != null && m32284c(c4557i.m35228S()) == 8;
    }

    /* renamed from: f */
    public static int m32269f(String str) {
        JSONObject m32290b = m32290b(str);
        if (m32290b != null) {
            return m32290b.optInt("ut", 0);
        }
        return 0;
    }

    /* renamed from: f */
    public static long m32271f(Context context) {
        return C4516c.m35418a(context).m35412b("total_internal_storage", 0L).longValue();
    }

    /* renamed from: f */
    public static String m32272f() {
        String str;
        synchronized (C5438af.class) {
            try {
                if (TextUtils.isEmpty(f18978g) && C4600n.m34815a() != null) {
                    PackageInfo packageInfo = C4600n.m34815a().getPackageManager().getPackageInfo(m32283d(), 0);
                    f18977f = String.valueOf(packageInfo.versionCode);
                    f18978g = packageInfo.versionName;
                }
                str = f18978g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    /* renamed from: f */
    public static String m32270f(C4557i c4557i) {
        return (c4557i == null || c4557i.m35230Q() == null || TextUtils.isEmpty(c4557i.m35230Q().m35338a())) ? null : c4557i.m35230Q().m35338a();
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [double] */
    /* renamed from: g */
    public static double m32265g(String str) {
        JSONObject m32290b = m32290b(str);
        char c = 0;
        if (m32290b != null) {
            c = m32290b.optDouble("pack_time", 0.0d);
        }
        return c;
    }

    /* renamed from: g */
    public static int m32268g() {
        File[] listFiles;
        if (Build.VERSION.SDK_INT >= 17) {
            return Math.max(Runtime.getRuntime().availableProcessors(), 0);
        }
        try {
            File file = new File("/sys/devices/system/cpu/");
            if (file.exists() && (listFiles = file.listFiles(new FilenameFilter() { // from class: com.bytedance.sdk.openadsdk.utils.af.2

                /* renamed from: a */
                private Pattern f18980a = Pattern.compile("^cpu[0-9]+$");

                @Override // java.io.FilenameFilter
                public final boolean accept(File file2, String str) {
                    return this.f18980a.matcher(str).matches();
                }
            })) != null) {
                return Math.max(listFiles.length, 0);
            }
            return 0;
        } catch (Throwable th) {
            return 0;
        }
    }

    /* renamed from: g */
    public static long m32267g(Context context) {
        return C4516c.m35418a(context).m35412b("free_internal_storage", 0L).longValue();
    }

    /* renamed from: g */
    public static boolean m32266g(C4557i c4557i) {
        if (c4557i == null) {
            return true;
        }
        int m34902c = C4600n.m34805h().m34902c(m32278d(c4557i.m35228S()));
        return m34902c != 1 ? m34902c != 2 ? m34902c != 3 : C5482t.m32086e(C4600n.m34815a()) || C5482t.m32087d(C4600n.m34815a()) : C5482t.m32087d(C4600n.m34815a());
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: h */
    public static long m32264h() {
        char c;
        char c2;
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            if (Build.VERSION.SDK_INT >= 18) {
                c2 = statFs.getBlockSizeLong();
                c = statFs.getBlockCountLong();
            } else {
                c2 = statFs.getBlockSize();
                c = statFs.getBlockCount();
            }
            return c * c2;
        } catch (Throwable th) {
            return 0L;
        }
    }

    /* renamed from: h */
    public static long m32263h(Context context) {
        return C4516c.m35418a(context).m35412b("total_sdcard_storage", 0L).longValue();
    }

    /* renamed from: h */
    public static String m32262h(String str) {
        JSONObject m32290b = m32290b(str);
        return m32290b != null ? m32290b.optString("req_id", "") : "";
    }

    /* renamed from: i */
    public static int m32260i(Context context) {
        return C4516c.m35418a(context).m35413b("is_root", -1);
    }

    /* renamed from: i */
    public static long m32261i() {
        try {
            if (!m32240u()) {
                return 0L;
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return statFs.getBlockCount() * statFs.getBlockSize();
        } catch (Throwable th) {
            return 0L;
        }
    }

    /* renamed from: i */
    public static String m32259i(String str) {
        String str2;
        String m34875m = C4600n.m34805h().m34875m();
        if (!TextUtils.isEmpty(m34875m)) {
            String str3 = "https://" + m34875m + str;
            String str4 = str3;
            if (C5437ae.m32317a()) {
                String m32313b = C5437ae.m32313b(str3);
                String m32316a = C5437ae.m32316a("testIp.txt");
                str4 = m32313b;
                if (m32316a != null) {
                    str4 = C5437ae.m32315a(m32313b, m32316a);
                }
            }
            return str4;
        }
        int m32246o = m32246o();
        if (m32246o == 1) {
            str2 = "https://pangolin16.sgsnssdk.com" + str;
        } else if (m32246o == 2) {
            str2 = "https://pangolin16.sgsnssdk.com" + str;
        } else {
            str2 = "https://pangolin16.isnssdk.com" + str;
        }
        return C5437ae.m32313b(str2);
    }

    /* renamed from: j */
    public static String m32257j(Context context) {
        String str;
        try {
            Locale locale = Build.VERSION.SDK_INT >= 24 ? context.getResources().getConfiguration().getLocales().get(0) : Locale.getDefault();
            str = locale.getLanguage() + "_" + locale.getCountry();
        } catch (Exception e) {
            C5478q.m32106e("ToolUtils", e.toString());
            str = "";
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0025, code lost:
        if (new java.io.File("/system/xbin/su").exists() != false) goto L7;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m32258j() {
        /*
            r0 = 0
            r3 = r0
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L2c
            r4 = r0
            r0 = r4
            java.lang.String r1 = "/system/bin/su"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L2c
            r0 = r4
            boolean r0 = r0.exists()     // Catch: java.lang.Throwable -> L2c
            if (r0 != 0) goto L28
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L2c
            r4 = r0
            r0 = r4
            java.lang.String r1 = "/system/xbin/su"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L2c
            r0 = r4
            boolean r0 = r0.exists()     // Catch: java.lang.Throwable -> L2c
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L2a
        L28:
            r0 = 1
            r3 = r0
        L2a:
            r0 = r3
            return r0
        L2c:
            r4 = move-exception
            goto L2a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.C5438af.m32258j():boolean");
    }

    /* renamed from: j */
    public static boolean m32256j(String str) {
        try {
            return Pattern.compile("[一-龥]").matcher(str).find();
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: k */
    public static String m32255k() {
        String m34873n = C4600n.m34805h().m34873n();
        if (TextUtils.isEmpty(m34873n)) {
            int m32246o = m32246o();
            return m32246o == 1 ? "https://extlog.snssdk.com/service/2/app_log/" : m32246o == 2 ? "https://log.sgsnssdk.com/service/2/app_log/" : "https://log-mva.isnssdk.com/service/2/app_log/";
        }
        String str = m34873n;
        if (!m34873n.startsWith("http")) {
            str = "https://".concat(String.valueOf(m34873n));
        }
        return str;
    }

    /* renamed from: k */
    public static String m32254k(Context context) {
        String str;
        try {
            str = (Build.VERSION.SDK_INT >= 24 ? context.getResources().getConfiguration().getLocales().get(0) : Locale.getDefault()).getLanguage();
        } catch (Exception e) {
            C5478q.m32106e("ToolUtils", e.toString());
            str = "";
        }
        return str;
    }

    /* renamed from: k */
    public static boolean m32253k(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.compile("^[+-]?([0-9]|([1-9][0-9]*))(\\.[0-9]+)?").matcher(str).matches();
    }

    /* renamed from: l */
    public static String m32252l() {
        return String.format("https://%s", "log.byteoversea.com/service/2/app_log_test/");
    }

    /* renamed from: l */
    public static String m32250l(String str) {
        String str2 = "";
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.contains("KLLK")) {
            str2 = str.replace("KLLK", "OPPO");
        } else if (str.contains("kllk")) {
            str2 = str.replace("kllk", "oppo");
        }
        return str2;
    }

    /* renamed from: l */
    public static boolean m32251l(Context context) {
        if (context != null) {
            boolean z = context.getApplicationInfo().targetSdkVersion >= 30 && Build.VERSION.SDK_INT >= 30 && context.checkSelfPermission("android.permission.QUERY_ALL_PACKAGES") != 0;
            StringBuilder sb = new StringBuilder("can query all package = ");
            sb.append(!z);
            C5478q.m32109c("ToolUtils", sb.toString());
            return !z;
        }
        throw new IllegalArgumentException("params context is null");
    }

    /* renamed from: m */
    public static String m32249m() {
        int m32246o = m32246o();
        return (m32246o == 1 || m32246o == 2) ? "https://sf-tb-sg.ibytedtos.com/obj/ad-pattern-sg/renderer/package_sg.json" : "https://sf16-muse-va.ibytedtos.com/obj/ad-pattern-va/renderer/package_va.json";
    }

    /* renamed from: n */
    public static String m32247n() {
        String str;
        try {
            str = TimeZone.getDefault().getID();
        } catch (Exception e) {
            C5478q.m32106e("ToolUtils", e.toString());
            str = "";
        }
        return str;
    }

    /* renamed from: o */
    public static int m32246o() {
        int i = 2;
        try {
            String id = TimeZone.getDefault().getID();
            if (!f18979h.contains(id) && (id == null || !id.startsWith("Asia/"))) {
                if (id != null) {
                    if (id.startsWith("Europe/")) {
                        i = 4;
                    }
                }
                i = 3;
            }
        } catch (Throwable th) {
            C5478q.m32106e("ToolUtils", th.toString());
            i = 0;
        }
        return i;
    }

    /* renamed from: p */
    public static boolean m32245p() {
        boolean z;
        String m34865r = C4600n.m34805h().m34865r();
        C5478q.m32112b("isGDPRTimeZone", "isGDPRTimeZone-》dc:".concat(String.valueOf(m34865r)));
        if (TextUtils.isEmpty(m34865r)) {
            try {
                String id = TimeZone.getDefault().getID();
                C5478q.m32112b("isGDPRTimeZone", "isGDPRTimeZone-》isGDPRTimeZone:id:".concat(String.valueOf(id)));
                if (id != null) {
                    if (!id.startsWith("Europe/")) {
                        z = false;
                    }
                }
            } catch (Exception e) {
                C5478q.m32106e("ToolUtils", "can ignore msg : " + e.toString());
            }
            z = true;
        } else {
            z = false;
            if (!"CN".equalsIgnoreCase(m34865r)) {
                if ("SG".equalsIgnoreCase(m34865r)) {
                    z = false;
                }
                z = true;
            }
        }
        return z;
    }

    /* renamed from: q */
    public static int m32244q() {
        int rawOffset = TimeZone.getDefault().getRawOffset() / 3600000;
        int i = rawOffset;
        if (rawOffset < -12) {
            i = -12;
        }
        int i2 = i;
        if (i > 12) {
            i2 = 12;
        }
        return i2;
    }

    /* renamed from: r */
    public static String m32243r() {
        int i = -m32244q();
        return i >= 0 ? "Etc/GMT+".concat(String.valueOf(i)) : "Etc/GMT".concat(String.valueOf(i));
    }

    /* renamed from: t */
    public static String m32241t() {
        String str = "unKnow";
        try {
            String userAgentString = new WebView(C4600n.m34815a()).getSettings().getUserAgentString();
            if (userAgentString != null && !"unKnow".equals(userAgentString)) {
                if (C5094b.m33091b()) {
                    C5106a.m33041a("sp_multi_ua_data", "webview_ua", userAgentString);
                } else {
                    C4516c.m35418a(C4600n.m34815a()).m35415a("webview_ua", userAgentString);
                }
            }
            str = userAgentString;
        } catch (Throwable th) {
            C5478q.m32106e("getUA", "e:" + th.getMessage());
        }
        return str;
    }

    /* renamed from: u */
    private static boolean m32240u() {
        try {
            return "mounted".equals(Environment.getExternalStorageState());
        } catch (Throwable th) {
            return false;
        }
    }
}
