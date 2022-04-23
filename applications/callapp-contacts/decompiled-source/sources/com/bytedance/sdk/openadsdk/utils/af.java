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
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.e.o;
import com.bytedance.sdk.openadsdk.core.g;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.video.d.d;
import com.bytedance.sdk.openadsdk.core.widget.webview.SSWebView;
import com.bytedance.sdk.openadsdk.core.y;
import com.bytedance.sdk.openadsdk.multipro.b;
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
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/af.class */
public class af {

    /* renamed from: a  reason: collision with root package name */
    private static ExecutorService f10272a = Executors.newSingleThreadExecutor();

    /* renamed from: b  reason: collision with root package name */
    private static ae f10273b = new ae();

    /* renamed from: c  reason: collision with root package name */
    private static String f10274c = null;

    /* renamed from: d  reason: collision with root package name */
    private static volatile String f10275d = "";
    private static String e = null;
    private static String f = null;
    private static String g = null;
    private static HashSet<String> h = new HashSet<>(Arrays.asList("Asia/Shanghai", "Asia/Urumqi", "Asia/Chongqing", "Asia/Harbin", "Asia/Kashgar"));

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/af$a.class */
    public static class a implements Callable<String> {

        /* renamed from: a  reason: collision with root package name */
        int f10277a;

        a(int i) {
            this.f10277a = 1;
            this.f10277a = i;
        }

        private String b() {
            String str;
            Throwable th;
            try {
                str = System.getProperty("http.agent");
                str = str;
                if (str != null) {
                    str = str;
                    try {
                        if (!"unKnow".equals(str)) {
                            if (b.b()) {
                                com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_ua_data", "android_system_ua", str);
                                str = str;
                            } else {
                                c.a(n.a()).a("android_system_ua", str);
                                str = str;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        q.e("getUA", "e:" + th.getMessage());
                        return str;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                str = "unKnow";
            }
            return str;
        }

        private String c() {
            String str;
            synchronized (this) {
                final String[] strArr = new String[1];
                strArr[0] = "unKnow";
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.af.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        strArr[0] = af.t();
                        q.b("getUA", "webview ua：" + strArr[0]);
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
                if (this.f10277a == 1) {
                    str = c();
                }
                if (this.f10277a == 2) {
                    str = b();
                }
            }
            return str;
        }
    }

    public static int a(com.bytedance.sdk.openadsdk.core.video.nativevideo.c cVar, boolean z) {
        return (cVar == null || cVar.u() == null || !cVar.u().g()) ? 3 : !z ? 1 : 0;
    }

    public static int a(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1695837674:
                if (str.equals("banner_ad")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1364000502:
                if (str.equals(AdType.REWARDED_VIDEO)) {
                    c2 = 1;
                    break;
                }
                break;
            case -764631662:
                if (str.equals("fullscreen_interstitial_ad")) {
                    c2 = 2;
                    break;
                }
                break;
            case 174971131:
                if (str.equals("splash_ad")) {
                    c2 = 3;
                    break;
                }
                break;
            case 564365438:
                if (str.equals("cache_splash_ad")) {
                    c2 = 4;
                    break;
                }
                break;
            case 1844104722:
                if (str.equals("interaction")) {
                    c2 = 5;
                    break;
                }
                break;
            case 1912999166:
                if (str.equals("draw_ad")) {
                    c2 = 6;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 2;
            case 1:
                return 7;
            case 2:
                return 5;
            case 3:
            case 4:
                return 4;
            case 5:
                return 3;
            case 6:
                return 6;
            default:
                return 1;
        }
    }

    public static Intent a(Context context, String str) {
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

    public static String a() {
        String b2;
        String str = "unKnow";
        try {
            b2 = b.b() ? com.bytedance.sdk.openadsdk.multipro.d.a.b("sp_multi_ua_data", "android_system_ua", "unKnow") : c.a(n.a()).b("android_system_ua", "unKnow");
        } catch (Exception e2) {
        }
        if (b2 != null && !"unKnow".equals(b2)) {
            return b2;
        }
        FutureTask futureTask = new FutureTask(new a(2));
        f10272a.execute(futureTask);
        str = (String) futureTask.get(500L, TimeUnit.MILLISECONDS);
        q.e("getUA", " getAndroidSystemUA userAgent".concat(String.valueOf(str)));
        return str;
    }

    public static String a(int i) {
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

    public static String a(Context context) {
        String b2 = c.a(context).b("total_memory", (String) null);
        String str = b2;
        if (b2 == null) {
            str = e(context, "MemTotal");
            c.a(context).a("total_memory", str);
        }
        return str;
    }

    public static String a(i iVar) {
        if (iVar == null) {
            return null;
        }
        try {
            return b(c(iVar.S()));
        } catch (Throwable th) {
            return null;
        }
    }

    public static Map<String, Object> a(long j, i iVar, d dVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("video_start_duration", Long.valueOf(j));
        if (iVar != null) {
            if (!TextUtils.isEmpty(iVar.P())) {
                hashMap.put(Reporting.Key.CREATIVE_ID, iVar.P());
            }
            o B = iVar.B();
            if (B != null) {
                hashMap.put("video_resolution", B.f());
                hashMap.put("video_size", Long.valueOf(B.d()));
            }
        }
        a(hashMap, dVar);
        return hashMap;
    }

    public static Map<String, Object> a(i iVar, int i, int i2, d dVar) {
        HashMap hashMap = new HashMap();
        hashMap.put(Reporting.Key.CREATIVE_ID, iVar.P());
        hashMap.put("error_code", Integer.valueOf(i));
        hashMap.put("extra_error_code", Integer.valueOf(i2));
        o B = iVar.B();
        if (B != null) {
            hashMap.put("video_size", Long.valueOf(B.d()));
            hashMap.put("video_resolution", B.f());
        }
        a(hashMap, dVar);
        return hashMap;
    }

    public static Map<String, Object> a(i iVar, long j, d dVar) {
        if (iVar == null) {
            return new HashMap();
        }
        HashMap hashMap = new HashMap();
        hashMap.put(Reporting.Key.CREATIVE_ID, iVar.P());
        hashMap.put("buffers_time", Long.valueOf(j));
        o B = iVar.B();
        if (B != null) {
            hashMap.put("video_size", Long.valueOf(B.d()));
            hashMap.put("video_resolution", B.f());
        }
        a(hashMap, dVar);
        return hashMap;
    }

    public static Map<String, Object> a(boolean z, i iVar, long j, long j2, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(Reporting.Key.CREATIVE_ID, iVar.P());
        hashMap.put("load_time", Long.valueOf(j));
        o B = iVar.B();
        if (B != null) {
            hashMap.put("video_size", Long.valueOf(B.d()));
            hashMap.put("video_resolution", B.f());
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

    public static void a(i iVar, View view) {
    }

    public static void a(i iVar, String str) {
        if (iVar != null) {
            try {
                String G = iVar.G();
                String str2 = G;
                if (TextUtils.isEmpty(G)) {
                    str2 = G;
                    if (iVar.R() != null) {
                        str2 = G;
                        if (iVar.R().c() == 1) {
                            str2 = G;
                            if (!TextUtils.isEmpty(iVar.R().b())) {
                                str2 = iVar.R().b();
                            }
                        }
                    }
                }
                if (!TextUtils.isEmpty(str2)) {
                    y.a(n.a(), str2, iVar, a(str), str, false);
                }
            } catch (Throwable th) {
            }
        }
    }

    private static void a(Map<String, Object> map, d dVar) {
        if (!map.containsKey("video_resolution") && dVar != null) {
            try {
                if (dVar.a() != null) {
                    map.put("video_resolution", String.format(Locale.getDefault(), "%d×%d", Integer.valueOf(dVar.a().getVideoWidth()), Integer.valueOf(dVar.a().getVideoHeight())));
                }
            } catch (Throwable th) {
            }
        }
    }

    public static void a(JSONObject jSONObject, Float f2, Float f3) {
        if (jSONObject != null) {
            try {
                jSONObject.put(com.bytedance.sdk.openadsdk.c.a.a("w0yrwBEUr1ini9hm/p022A==", com.bytedance.sdk.openadsdk.core.a.a()), f3);
                jSONObject.put(com.bytedance.sdk.openadsdk.c.a.a("LeHrqxcsm457V3n1/LcJVw==", com.bytedance.sdk.openadsdk.core.a.a()), f2);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void a(JSONObject jSONObject, boolean z) {
        String a2;
        if (ae.a() && (a2 = ae.a("testGps.txt")) != null) {
            try {
                String[] split = a2.split(",");
                if (split.length >= 2 && k(split[1]) && k(split[0])) {
                    if (z) {
                        a(jSONObject, Float.valueOf(Float.parseFloat(split[0])), Float.valueOf(Float.parseFloat(split[1])));
                        return;
                    }
                    JSONObject jSONObject2 = new JSONObject();
                    a(jSONObject2, Float.valueOf(Float.parseFloat(split[0])), Float.valueOf(Float.parseFloat(split[1])));
                    jSONObject.put("geo", jSONObject2);
                }
            } catch (JSONException e2) {
            }
        }
    }

    public static boolean a(Context context, Intent intent) {
        if (intent == null) {
            return false;
        }
        try {
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 65536);
            if (queryIntentActivities != null) {
                return queryIntentActivities.size() > 0;
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0098 -> B:25:0x0094). Please submit an issue!!! */
    public static String b() {
        if (!TextUtils.isEmpty(f10275d)) {
            return f10275d;
        }
        try {
            String a2 = g.a("sdk_local_web_ua", 86400000L);
            f10275d = a2;
            if (TextUtils.isEmpty(a2)) {
                synchronized (TextUtils.class) {
                    if (TextUtils.isEmpty(f10275d)) {
                        if (Build.VERSION.SDK_INT >= 17) {
                            f10275d = WebSettings.getDefaultUserAgent(n.a());
                        } else if (Looper.myLooper() == Looper.getMainLooper()) {
                            f10275d = new SSWebView(n.a()).getSettings().getUserAgentString();
                        } else {
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.af.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    try {
                                        String unused = af.f10275d = new SSWebView(n.a()).getSettings().getUserAgentString();
                                    } catch (Exception e2) {
                                    }
                                }
                            });
                        }
                        g.a("sdk_local_web_ua", f10275d);
                    }
                }
            }
        } catch (Exception e2) {
        }
        return f10275d;
    }

    public static String b(int i) {
        return i != 1 ? i != 2 ? (i == 3 || i == 4) ? "splash_ad" : i != 7 ? i != 8 ? i != 9 ? "embeded_ad" : "draw_ad" : "fullscreen_interstitial_ad" : AdType.REWARDED_VIDEO : "interaction" : "banner_ad";
    }

    public static String b(Context context) {
        return c.a(context).b("total_memory", "0");
    }

    public static JSONObject b(String str) {
        JSONObject jSONObject;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            return jSONObject;
        }
        jSONObject = null;
        return jSONObject;
    }

    public static boolean b(Context context, String str) {
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

    public static boolean b(i iVar) {
        return iVar != null && c(iVar.S()) == 9;
    }

    public static int c(int i) {
        Throwable th;
        FileReader fileReader = null;
        BufferedReader bufferedReader = null;
        int i2 = 0;
        int i3 = i;
        while (true) {
            int i4 = i3 - 1;
            if (i4 < 0) {
                return i2;
            }
            try {
                FileReader fileReader2 = new FileReader("/sys/devices/system/cpu/cpu" + i4 + "/cpufreq/cpuinfo_max_freq");
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(fileReader2);
                    try {
                        String readLine = bufferedReader2.readLine();
                        i2 = i2;
                        if (!TextUtils.isEmpty(readLine)) {
                            int parseInt = Integer.parseInt(readLine);
                            i2 = i2;
                            if (parseInt > i2) {
                                i2 = parseInt;
                            }
                        }
                        try {
                            bufferedReader2.close();
                            fileReader2.close();
                        } catch (Exception e2) {
                        }
                        bufferedReader = bufferedReader2;
                        fileReader = fileReader2;
                        i3 = i4;
                    } catch (Throwable th2) {
                        th = th2;
                        fileReader = fileReader2;
                        bufferedReader = bufferedReader2;
                        try {
                            q.e("ToolUtils", th.getMessage());
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception e3) {
                                    i3 = i4;
                                }
                            }
                            if (fileReader != null) {
                                fileReader.close();
                            }
                            i3 = i4;
                        } catch (Throwable th3) {
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception e4) {
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
                    th = th4;
                    fileReader = fileReader2;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        }
    }

    public static int c(Context context) {
        return c.a(context).b("cpu_count", 0);
    }

    public static int c(String str) {
        JSONObject b2 = b(str);
        if (b2 != null) {
            return b2.optInt("ad_slot_type", 0);
        }
        return 0;
    }

    public static String c() {
        return UUID.randomUUID().toString();
    }

    public static boolean c(Context context, String str) {
        return g.b() != null && !g.b().a();
    }

    public static boolean c(i iVar) {
        if (iVar != null) {
            return c(iVar.S()) == 3 || c(iVar.S()) == 4;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x006c, code lost:
        if (r3 == 0) goto L_0x006f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int d(int r3) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.af.d(int):int");
    }

    public static int d(Context context) {
        return c.a(context).b("cpu_max_frequency", 0);
    }

    public static int d(String str) {
        JSONObject b2 = b(str);
        if (b2 != null) {
            return b2.optInt("rit", 0);
        }
        return 0;
    }

    public static String d() {
        String str;
        synchronized (af.class) {
            try {
                if (TextUtils.isEmpty(e) && n.a() != null) {
                    e = n.a().getPackageName();
                }
                str = e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    public static boolean d(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Intent intent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + Uri.encode(str)));
            if (!(context instanceof Activity)) {
                intent.setFlags(268435456);
            }
            c.a(context, intent, null);
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    public static boolean d(i iVar) {
        return iVar != null && c(iVar.S()) == 7;
    }

    public static int e(Context context) {
        return c.a(context).b("cpu_min_frequency", 0);
    }

    public static long e(String str) {
        JSONObject b2 = b(str);
        long j = 0;
        if (b2 != null) {
            j = b2.optLong("uid", 0L);
        }
        return j;
    }

    public static String e() {
        String str;
        synchronized (af.class) {
            try {
                if (TextUtils.isEmpty(f) && n.a() != null) {
                    PackageInfo packageInfo = n.a().getPackageManager().getPackageInfo(d(), 0);
                    f = String.valueOf(packageInfo.versionCode);
                    g = packageInfo.versionName;
                }
                str = f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    public static String e(Context context, String str) {
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
                                } catch (Exception e2) {
                                }
                            }
                            if (fileReader == null) {
                                return null;
                            }
                            try {
                                fileReader.close();
                                return null;
                            } catch (Exception e3) {
                                return null;
                            }
                        } catch (Throwable th3) {
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception e4) {
                                }
                            }
                            if (fileReader != null) {
                                try {
                                    fileReader.close();
                                } catch (Exception e5) {
                                }
                            }
                            throw th3;
                        }
                    }
                } while (!readLine.contains(str));
                if (readLine == null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception e6) {
                    }
                    try {
                        fileReader.close();
                        return null;
                    } catch (Exception e7) {
                        return null;
                    }
                } else {
                    String[] split = readLine.split("\\s+");
                    q.b("ToolUtils", "getTotalMemory = " + split[1]);
                    String str2 = split[1];
                    try {
                        bufferedReader.close();
                    } catch (Exception e8) {
                    }
                    try {
                        fileReader.close();
                    } catch (Exception e9) {
                    }
                    return str2;
                }
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

    public static boolean e(i iVar) {
        return iVar != null && c(iVar.S()) == 8;
    }

    public static int f(String str) {
        JSONObject b2 = b(str);
        if (b2 != null) {
            return b2.optInt("ut", 0);
        }
        return 0;
    }

    public static long f(Context context) {
        return c.a(context).b("total_internal_storage", 0L).longValue();
    }

    public static String f() {
        String str;
        synchronized (af.class) {
            try {
                if (TextUtils.isEmpty(g) && n.a() != null) {
                    PackageInfo packageInfo = n.a().getPackageManager().getPackageInfo(d(), 0);
                    f = String.valueOf(packageInfo.versionCode);
                    g = packageInfo.versionName;
                }
                str = g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    public static String f(i iVar) {
        return (iVar == null || iVar.Q() == null || TextUtils.isEmpty(iVar.Q().a())) ? null : iVar.Q().a();
    }

    public static double g(String str) {
        JSONObject b2 = b(str);
        double d2 = 0.0d;
        if (b2 != null) {
            d2 = b2.optDouble("pack_time", 0.0d);
        }
        return d2;
    }

    public static int g() {
        File[] listFiles;
        if (Build.VERSION.SDK_INT >= 17) {
            return Math.max(Runtime.getRuntime().availableProcessors(), 0);
        }
        try {
            File file = new File("/sys/devices/system/cpu/");
            if (!file.exists() || (listFiles = file.listFiles(new FilenameFilter() { // from class: com.bytedance.sdk.openadsdk.utils.af.2

                /* renamed from: a  reason: collision with root package name */
                private Pattern f10276a = Pattern.compile("^cpu[0-9]+$");

                @Override // java.io.FilenameFilter
                public final boolean accept(File file2, String str) {
                    return this.f10276a.matcher(str).matches();
                }
            })) == null) {
                return 0;
            }
            return Math.max(listFiles.length, 0);
        } catch (Throwable th) {
            return 0;
        }
    }

    public static long g(Context context) {
        return c.a(context).b("free_internal_storage", 0L).longValue();
    }

    public static boolean g(i iVar) {
        if (iVar == null) {
            return true;
        }
        int c2 = n.h().c(d(iVar.S()));
        return c2 != 1 ? c2 != 2 ? c2 != 3 : t.e(n.a()) || t.d(n.a()) : t.d(n.a());
    }

    public static long h() {
        long j;
        long j2;
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            if (Build.VERSION.SDK_INT >= 18) {
                j2 = statFs.getBlockSizeLong();
                j = statFs.getBlockCountLong();
            } else {
                j2 = statFs.getBlockSize();
                j = statFs.getBlockCount();
            }
            return j * j2;
        } catch (Throwable th) {
            return 0L;
        }
    }

    public static long h(Context context) {
        return c.a(context).b("total_sdcard_storage", 0L).longValue();
    }

    public static String h(String str) {
        JSONObject b2 = b(str);
        return b2 != null ? b2.optString("req_id", "") : "";
    }

    public static int i(Context context) {
        return c.a(context).b("is_root", -1);
    }

    public static long i() {
        try {
            if (!u()) {
                return 0L;
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return statFs.getBlockCount() * statFs.getBlockSize();
        } catch (Throwable th) {
            return 0L;
        }
    }

    public static String i(String str) {
        String str2;
        String m = n.h().m();
        if (TextUtils.isEmpty(m)) {
            int o = o();
            if (o == 1) {
                str2 = "https://pangolin16.sgsnssdk.com" + str;
            } else if (o == 2) {
                str2 = "https://pangolin16.sgsnssdk.com" + str;
            } else {
                str2 = "https://pangolin16.isnssdk.com" + str;
            }
            return ae.b(str2);
        }
        String str3 = "https://" + m + str;
        String str4 = str3;
        if (ae.a()) {
            String b2 = ae.b(str3);
            String a2 = ae.a("testIp.txt");
            str4 = b2;
            if (a2 != null) {
                str4 = ae.a(b2, a2);
            }
        }
        return str4;
    }

    public static String j(Context context) {
        String str;
        try {
            Locale locale = Build.VERSION.SDK_INT >= 24 ? context.getResources().getConfiguration().getLocales().get(0) : Locale.getDefault();
            str = locale.getLanguage() + "_" + locale.getCountry();
        } catch (Exception e2) {
            q.e("ToolUtils", e2.toString());
            str = "";
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0025, code lost:
        if (new java.io.File("/system/xbin/su").exists() != false) goto L_0x0028;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean j() {
        /*
            r0 = 0
            r3 = r0
            java.io.File r0 = new java.io.File     // Catch: all -> 0x002c
            r4 = r0
            r0 = r4
            java.lang.String r1 = "/system/bin/su"
            r0.<init>(r1)     // Catch: all -> 0x002c
            r0 = r4
            boolean r0 = r0.exists()     // Catch: all -> 0x002c
            if (r0 != 0) goto L_0x0028
            java.io.File r0 = new java.io.File     // Catch: all -> 0x002c
            r4 = r0
            r0 = r4
            java.lang.String r1 = "/system/xbin/su"
            r0.<init>(r1)     // Catch: all -> 0x002c
            r0 = r4
            boolean r0 = r0.exists()     // Catch: all -> 0x002c
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x002a
        L_0x0028:
            r0 = 1
            r3 = r0
        L_0x002a:
            r0 = r3
            return r0
        L_0x002c:
            r4 = move-exception
            goto L_0x002a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.af.j():boolean");
    }

    public static boolean j(String str) {
        try {
            return Pattern.compile("[一-龥]").matcher(str).find();
        } catch (Throwable th) {
            return false;
        }
    }

    public static String k() {
        String n = n.h().n();
        if (TextUtils.isEmpty(n)) {
            int o = o();
            return o == 1 ? "https://extlog.snssdk.com/service/2/app_log/" : o == 2 ? "https://log.sgsnssdk.com/service/2/app_log/" : "https://log-mva.isnssdk.com/service/2/app_log/";
        }
        String str = n;
        if (!n.startsWith("http")) {
            str = "https://".concat(String.valueOf(n));
        }
        return str;
    }

    public static String k(Context context) {
        String str;
        try {
            str = (Build.VERSION.SDK_INT >= 24 ? context.getResources().getConfiguration().getLocales().get(0) : Locale.getDefault()).getLanguage();
        } catch (Exception e2) {
            q.e("ToolUtils", e2.toString());
            str = "";
        }
        return str;
    }

    public static boolean k(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.compile("^[+-]?([0-9]|([1-9][0-9]*))(\\.[0-9]+)?").matcher(str).matches();
    }

    public static String l() {
        return String.format("https://%s", "log.byteoversea.com/service/2/app_log_test/");
    }

    public static String l(String str) {
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

    public static boolean l(Context context) {
        if (context != null) {
            boolean z = context.getApplicationInfo().targetSdkVersion >= 30 && Build.VERSION.SDK_INT >= 30 && context.checkSelfPermission("android.permission.QUERY_ALL_PACKAGES") != 0;
            StringBuilder sb = new StringBuilder("can query all package = ");
            sb.append(!z);
            q.c("ToolUtils", sb.toString());
            return !z;
        }
        throw new IllegalArgumentException("params context is null");
    }

    public static String m() {
        int o = o();
        return (o == 1 || o == 2) ? "https://sf-tb-sg.ibytedtos.com/obj/ad-pattern-sg/renderer/package_sg.json" : "https://sf16-muse-va.ibytedtos.com/obj/ad-pattern-va/renderer/package_va.json";
    }

    public static String n() {
        String str;
        try {
            str = TimeZone.getDefault().getID();
        } catch (Exception e2) {
            q.e("ToolUtils", e2.toString());
            str = "";
        }
        return str;
    }

    public static int o() {
        int i = 2;
        try {
            String id = TimeZone.getDefault().getID();
            if (!h.contains(id) && (id == null || !id.startsWith("Asia/"))) {
                if (id != null) {
                    if (id.startsWith("Europe/")) {
                        i = 4;
                    }
                }
                i = 3;
            }
        } catch (Throwable th) {
            q.e("ToolUtils", th.toString());
            i = 0;
        }
        return i;
    }

    public static boolean p() {
        boolean z;
        String r = n.h().r();
        q.b("isGDPRTimeZone", "isGDPRTimeZone-》dc:".concat(String.valueOf(r)));
        if (TextUtils.isEmpty(r)) {
            try {
                String id = TimeZone.getDefault().getID();
                q.b("isGDPRTimeZone", "isGDPRTimeZone-》isGDPRTimeZone:id:".concat(String.valueOf(id)));
                if (id != null) {
                    if (!id.startsWith("Europe/")) {
                        z = false;
                    }
                }
            } catch (Exception e2) {
                q.e("ToolUtils", "can ignore msg : " + e2.toString());
            }
            z = true;
        } else {
            z = false;
            if (!"CN".equalsIgnoreCase(r)) {
                if ("SG".equalsIgnoreCase(r)) {
                    z = false;
                }
                z = true;
            }
        }
        return z;
    }

    public static int q() {
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

    public static String r() {
        int i = -q();
        return i >= 0 ? "Etc/GMT+".concat(String.valueOf(i)) : "Etc/GMT".concat(String.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String t() {
        String str = "unKnow";
        try {
            String userAgentString = new WebView(n.a()).getSettings().getUserAgentString();
            if (userAgentString != null && !"unKnow".equals(userAgentString)) {
                if (b.b()) {
                    com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_ua_data", "webview_ua", userAgentString);
                } else {
                    c.a(n.a()).a("webview_ua", userAgentString);
                }
            }
            str = userAgentString;
        } catch (Throwable th) {
            q.e("getUA", "e:" + th.getMessage());
        }
        return str;
    }

    private static boolean u() {
        try {
            return "mounted".equals(Environment.getExternalStorageState());
        } catch (Throwable th) {
            return false;
        }
    }
}
