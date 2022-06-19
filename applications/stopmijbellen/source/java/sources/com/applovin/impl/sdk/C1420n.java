package com.applovin.impl.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.hardware.SensorManager;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.LocaleList;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p055c.C1316d;
import com.applovin.impl.sdk.p056d.C1328f;
import com.applovin.impl.sdk.p056d.C1329g;
import com.applovin.impl.sdk.p057e.C1342f;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.p057e.C1387z;
import com.applovin.impl.sdk.utils.C1487c;
import com.applovin.impl.sdk.utils.C1492g;
import com.applovin.impl.sdk.utils.C1531l;
import com.applovin.impl.sdk.utils.C1535o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinEventTypes;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;
import java.io.File;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.n */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/n.class */
public class C1420n {

    /* renamed from: h */
    private static final AtomicReference<C1426a> f5360h = new AtomicReference<>();

    /* renamed from: j */
    private static final AtomicReference<C1427b> f5361j = new AtomicReference<>();

    /* renamed from: a */
    private final C1408l f5362a;

    /* renamed from: b */
    private final C1479t f5363b;

    /* renamed from: c */
    private final Context f5364c;

    /* renamed from: d */
    private final Map<String, Object> f5365d;

    /* renamed from: f */
    private final Map<String, Object> f5367f;

    /* renamed from: g */
    private boolean f5368g;

    /* renamed from: e */
    private final Object f5366e = new Object();

    /* renamed from: i */
    private final AtomicReference<Integer> f5369i = new AtomicReference<>();

    /* renamed from: com.applovin.impl.sdk.n$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/n$a.class */
    public static class C1426a {

        /* renamed from: a */
        public boolean f5375a;

        /* renamed from: b */
        public String f5376b = "";
    }

    /* renamed from: com.applovin.impl.sdk.n$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/n$b.class */
    public static class C1427b {

        /* renamed from: a */
        public final String f5377a;

        /* renamed from: b */
        public final int f5378b;

        public C1427b(String str, int i) {
            this.f5377a = str;
            this.f5378b = i;
        }
    }

    /* renamed from: com.applovin.impl.sdk.n$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/n$c.class */
    public static class C1428c {

        /* renamed from: a */
        public int f5379a = -1;

        /* renamed from: b */
        public int f5380b = -1;
    }

    public C1420n(C1408l c1408l) {
        if (c1408l != null) {
            this.f5362a = c1408l;
            this.f5363b = c1408l.m5542A();
            this.f5364c = c1408l.m5532K();
            this.f5365d = m5385r();
            this.f5367f = m5383t();
            return;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    /* renamed from: A */
    private String m5428A() {
        if (!C1492g.m5069f()) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            LocaleList locales = this.f5364c.getResources().getConfiguration().getLocales();
            for (int i = 0; i < locales.size(); i++) {
                sb.append(locales.get(i));
                sb.append(",");
            }
            if (sb.length() > 0 && sb.charAt(sb.length() - 1) == ',') {
                sb.deleteCharAt(sb.length() - 1);
            }
            return sb.toString();
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: B */
    public Integer m5427B() {
        AudioManager audioManager = (AudioManager) this.f5364c.getSystemService("audio");
        if (audioManager != null) {
            return Integer.valueOf((int) (audioManager.getStreamVolume(3) * ((Float) this.f5362a.m5511a(C1314b.f4886dK)).floatValue()));
        }
        return null;
    }

    /* renamed from: C */
    private double m5426C() {
        return Math.round((TimeZone.getDefault().getOffset(new Date().getTime()) * 10.0d) / 3600000.0d) / 10.0d;
    }

    /* renamed from: D */
    private boolean m5425D() {
        if (m5399d(this.f5364c)) {
            return true;
        }
        return this.f5364c.getPackageManager().hasSystemFeature(C1492g.m5071d() ? "android.software.leanback" : "android.hardware.type.television");
    }

    /* renamed from: E */
    private boolean m5424E() {
        SensorManager sensorManager = (SensorManager) this.f5364c.getSystemService("sensor");
        return (sensorManager == null || sensorManager.getDefaultSensor(4) == null) ? false : true;
    }

    /* renamed from: F */
    private String m5423F() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f5364c.getSystemService("phone");
        return telephonyManager != null ? telephonyManager.getSimCountryIso().toUpperCase(Locale.ENGLISH) : "";
    }

    /* renamed from: G */
    private String m5422G() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f5364c.getSystemService("phone");
        if (telephonyManager != null) {
            try {
                String networkOperator = telephonyManager.getNetworkOperator();
                return networkOperator.substring(0, Math.min(3, networkOperator.length()));
            } catch (Throwable th) {
                this.f5363b.m5115b("DataCollector", "Unable to collect mobile country code", th);
                return "";
            }
        }
        return "";
    }

    /* renamed from: H */
    private String m5421H() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f5364c.getSystemService("phone");
        if (telephonyManager != null) {
            try {
                String networkOperator = telephonyManager.getNetworkOperator();
                return networkOperator.substring(Math.min(3, networkOperator.length()));
            } catch (Throwable th) {
                this.f5363b.m5115b("DataCollector", "Unable to collect mobile network code", th);
                return "";
            }
        }
        return "";
    }

    /* renamed from: I */
    private String m5420I() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f5364c.getSystemService("phone");
        if (telephonyManager != null) {
            try {
                return telephonyManager.getNetworkOperatorName();
            } catch (Throwable th) {
                this.f5363b.m5115b("DataCollector", "Unable to collect carrier", th);
                return "";
            }
        }
        return "";
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000f, code lost:
        if (m5417L() != false) goto L7;
     */
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m5419J() {
        /*
            r2 = this;
            r0 = 0
            r3 = r0
            r0 = r2
            boolean r0 = r0.m5418K()     // Catch: java.lang.Throwable -> L16
            if (r0 != 0) goto L12
            r0 = r2
            boolean r0 = r0.m5417L()     // Catch: java.lang.Throwable -> L16
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L14
        L12:
            r0 = 1
            r3 = r0
        L14:
            r0 = r3
            return r0
        L16:
            r5 = move-exception
            goto L14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.C1420n.m5419J():boolean");
    }

    /* renamed from: K */
    private boolean m5418K() {
        String str = Build.TAGS;
        return str != null && str.contains(m5403b("lz}$blpz"));
    }

    /* renamed from: L */
    private boolean m5417L() {
        for (int i = 0; i < 9; i++) {
            if (new File(m5403b(new String[]{"&zpz}ld&hyy&Z|yl{|zl{'hyb", "&zk`g&z|", "&zpz}ld&k`g&z|", "&zpz}ld&qk`g&z|", "&mh}h&efjhe&qk`g&z|", "&mh}h&efjhe&k`g&z|", "&zpz}ld&zm&qk`g&z|", "&zpz}ld&k`g&oh`ezhol&z|", "&mh}h&efjhe&z|"}[i])).exists()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private String m5415a(int i) {
        if (i == 1) {
            return "receiver";
        }
        if (i == 2) {
            return "speaker";
        }
        if (i == 4 || i == 3) {
            return "headphones";
        }
        if (i == 8) {
            return "bluetootha2dpoutput";
        }
        if (i == 13 || i == 19 || i == 5 || i == 6 || i == 12 || i == 11) {
            return "lineout";
        }
        if (i != 9 && i != 10) {
            return null;
        }
        return "hdmioutput";
    }

    /* JADX WARN: Can't wrap try/catch for region: R(45:2|(44:4|(1:6)(2:7|(1:9))|11|(1:13)|14|(1:18)|19|(1:21)|22|(1:24)|25|(1:27)|28|(1:30)|31|(1:33)|34|(1:36)|37|(1:39)(1:40)|41|(1:43)|94|44|47|(2:92|49)|52|(2:54|(1:56))|57|(1:63)|64|(2:66|(1:68))|69|(1:71)|72|(1:76)|77|(1:81)|82|(1:86)|87|(1:89)|90|91)|10|11|(0)|14|(2:16|18)|19|(0)|22|(0)|25|(0)|28|(0)|31|(0)|34|(0)|37|(0)(0)|41|(0)|94|44|47|(0)|52|(0)|57|(3:59|61|63)|64|(0)|69|(0)|72|(2:74|76)|77|(2:79|81)|82|(2:84|86)|87|(0)|90|91) */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01e3, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x01e4, code lost:
        r5.f5363b.m5115b("DataCollector", "Unable to collect screen brightness", r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0415  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0205 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.Map<java.lang.String, java.lang.Object> m5409a(java.util.Map<java.lang.String, java.lang.Object> r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 1056
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.C1420n.m5409a(java.util.Map, boolean):java.util.Map");
    }

    /* renamed from: a */
    public static void m5414a(final Context context) {
        new Thread(new Runnable() { // from class: com.applovin.impl.sdk.n.1
            @Override // java.lang.Runnable
            public void run() {
                C1420n.f5360h.set(C1487c.m5090a(context));
            }
        }).start();
    }

    /* renamed from: a */
    private void m5410a(Map<String, Object> map) {
        if (((Boolean) this.f5362a.m5511a(C1314b.f4881dF)).booleanValue() && !map.containsKey("af")) {
            map.put("af", Long.valueOf(m5379x()));
        }
        if (((Boolean) this.f5362a.m5511a(C1314b.f4882dG)).booleanValue() && !map.containsKey("font")) {
            map.put("font", Float.valueOf(m5378y()));
        }
        if (((Boolean) this.f5362a.m5511a(C1314b.f4888dM)).booleanValue()) {
            C1554z.m4889b(this.f5362a);
        }
        if (((Boolean) this.f5362a.m5511a(C1314b.f4887dL)).booleanValue() && !map.containsKey("sua")) {
            map.put("sua", System.getProperty("http.agent"));
        }
        if (!((Boolean) this.f5362a.m5511a(C1314b.f4884dI)).booleanValue() || map.containsKey("network_restricted")) {
            return;
        }
        map.put("network_restricted", Boolean.valueOf(m5381v()));
    }

    /* renamed from: a */
    private boolean m5412a(String str) {
        boolean z = false;
        try {
            if (Settings.Secure.getInt(this.f5364c.getContentResolver(), str) == 1) {
                z = true;
            }
        } catch (Settings.SettingNotFoundException e) {
        }
        return z;
    }

    /* renamed from: a */
    private boolean m5411a(String str, String str2) {
        for (String str3 : CollectionUtils.explode(str2)) {
            if (str.startsWith(str3)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private String m5403b(String str) {
        int length = str.length();
        char[] cArr = new char[length];
        for (int i = 0; i < length; i++) {
            cArr[i] = str.charAt(i);
            for (int i2 = 9; i2 >= 0; i2--) {
                cArr[i] = (char) (cArr[i] ^ new int[]{11, 12, 10, 3, 2, 1, 15, 10, 15, 14}[i2]);
            }
        }
        return new String(cArr);
    }

    /* renamed from: b */
    public static boolean m5405b(Context context) {
        return "amazon".equalsIgnoreCase(Build.MANUFACTURER) || m5399d(context);
    }

    /* renamed from: c */
    public static void m5401c(final Context context) {
        if (Utils.checkClassExistence("com.google.android.gms.appset.AppSet")) {
            new Thread(new Runnable() { // from class: com.applovin.impl.sdk.n.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        AppSet.getClient(context).getAppSetIdInfo().addOnSuccessListener(new OnSuccessListener<AppSetIdInfo>() { // from class: com.applovin.impl.sdk.n.2.1
                            /* renamed from: a */
                            public void onSuccess(AppSetIdInfo appSetIdInfo) {
                                C1420n.f5361j.set(new C1427b(appSetIdInfo.getId(), appSetIdInfo.getScope()));
                            }
                        });
                    } catch (Throwable th) {
                        C1479t.m5110f("DataCollector", "Could not collect AppSet ID.");
                    }
                }
            }).start();
        } else {
            C1479t.m5110f("DataCollector", "Could not collect AppSet ID.");
        }
    }

    /* renamed from: d */
    private static boolean m5399d(Context context) {
        return context.getPackageManager().hasSystemFeature("amazon.hardware.fire_tv");
    }

    /* renamed from: q */
    private Map<String, String> m5386q() {
        return Utils.stringifyObjectMap(m5408a(null, true, false));
    }

    /* renamed from: r */
    private Map<String, Object> m5385r() {
        HashMap hashMap = new HashMap(32);
        hashMap.put("api_level", Integer.valueOf(Build.VERSION.SDK_INT));
        hashMap.put("brand", Build.MANUFACTURER);
        hashMap.put("brand_name", Build.BRAND);
        hashMap.put("hardware", Build.HARDWARE);
        hashMap.put("sim", Boolean.valueOf(m5390m()));
        hashMap.put("aida", Boolean.valueOf(C1487c.m5091a()));
        hashMap.put("locale", Locale.getDefault().toString());
        hashMap.put("model", Build.MODEL);
        hashMap.put("os", Build.VERSION.RELEASE);
        hashMap.put("platform", m5397f());
        hashMap.put("revision", Build.DEVICE);
        hashMap.put("tz_offset", Double.valueOf(m5426C()));
        hashMap.put("gy", Boolean.valueOf(m5424E()));
        hashMap.put("country_code", m5423F());
        hashMap.put("mcc", m5422G());
        hashMap.put("mnc", m5421H());
        hashMap.put("carrier", m5420I());
        hashMap.put("is_tablet", Boolean.valueOf(AppLovinSdkUtils.isTablet(this.f5364c)));
        hashMap.put("tv", Boolean.valueOf(m5425D()));
        DisplayMetrics displayMetrics = this.f5364c.getResources().getDisplayMetrics();
        if (displayMetrics != null) {
            hashMap.put("adns", Float.valueOf(displayMetrics.density));
            hashMap.put("adnsd", Integer.valueOf(displayMetrics.densityDpi));
            hashMap.put("xdpi", Float.valueOf(displayMetrics.xdpi));
            hashMap.put("ydpi", Float.valueOf(displayMetrics.ydpi));
            Point m5075a = C1492g.m5075a(this.f5364c);
            hashMap.put("screen_size_in", Double.valueOf(Math.sqrt(Math.pow(m5075a.y, 2.0d) + Math.pow(m5075a.x, 2.0d)) / displayMetrics.xdpi));
        }
        hashMap.put("bt_ms", Long.valueOf(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
        m5410a(hashMap);
        return hashMap;
    }

    /* renamed from: s */
    private String m5384s() {
        int orientation = Utils.getOrientation(this.f5364c);
        return orientation == 1 ? "portrait" : orientation == 2 ? "landscape" : "none";
    }

    /* renamed from: t */
    private Map<String, Object> m5383t() {
        PackageInfo packageInfo;
        HashMap hashMap = new HashMap(20);
        PackageManager packageManager = this.f5364c.getPackageManager();
        ApplicationInfo applicationInfo = this.f5364c.getApplicationInfo();
        long lastModified = new File(applicationInfo.sourceDir).lastModified();
        String str = null;
        try {
            packageInfo = packageManager.getPackageInfo(this.f5364c.getPackageName(), 0);
            try {
                str = packageManager.getInstallerPackageName(applicationInfo.packageName);
            } catch (Throwable th) {
            }
        } catch (Throwable th2) {
            packageInfo = null;
        }
        hashMap.put("app_name", packageManager.getApplicationLabel(applicationInfo));
        hashMap.put("app_version", packageInfo != null ? packageInfo.versionName : "");
        hashMap.put("app_version_code", Integer.valueOf(packageInfo != null ? packageInfo.versionCode : -1));
        hashMap.put("package_name", applicationInfo.packageName);
        hashMap.put("vz", StringUtils.toShortSHA1Hash(applicationInfo.packageName));
        if (str == null) {
            str = "";
        }
        hashMap.put("installer_name", str);
        hashMap.put("tg", C1535o.m4954a(this.f5362a));
        hashMap.put("debug", Boolean.valueOf(Utils.isPubInDebugMode(this.f5362a.m5532K())));
        hashMap.put("ia", Long.valueOf(lastModified));
        C1408l c1408l = this.f5362a;
        C1316d<Long> c1316d = C1316d.f4988d;
        Long l = (Long) c1408l.m5509a(c1316d);
        if (l != null) {
            hashMap.put("ia_v2", l);
        } else {
            this.f5362a.m5508a((C1316d<C1316d<Long>>) c1316d, (C1316d<Long>) Long.valueOf(lastModified));
        }
        hashMap.put("sdk_version", AppLovinSdk.VERSION);
        hashMap.put("omid_sdk_version", this.f5362a.m5485aj().m6051c());
        String userEngagementSdkVersion = Utils.getUserEngagementSdkVersion();
        if (StringUtils.isValidString(userEngagementSdkVersion)) {
            hashMap.put("ue_sdk_version", userEngagementSdkVersion);
        }
        hashMap.put("api_did", this.f5362a.m5511a(C1314b.f4715X));
        hashMap.put("first_install", Boolean.valueOf(this.f5362a.m5528O()));
        hashMap.put("first_install_v2", Boolean.valueOf(!this.f5362a.m5527P()));
        Long l2 = "";
        if (packageInfo != null) {
            l2 = Long.valueOf(packageInfo.firstInstallTime);
        }
        hashMap.put("first_install_v3_ms", l2);
        hashMap.put("target_sdk", Integer.valueOf(applicationInfo.targetSdkVersion));
        hashMap.put("epv", Integer.valueOf(Utils.tryToGetExoPlayerVersionCode()));
        return hashMap;
    }

    /* renamed from: u */
    private Map<String, Object> m5382u() {
        HashMap hashMap = new HashMap(2);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f5364c);
        String str = (String) this.f5362a.m5507a((C1316d<C1316d<String>>) C1316d.f4998n, (C1316d<String>) null, defaultSharedPreferences);
        if (StringUtils.isValidString(str)) {
            hashMap.put("IABTCF_TCString", str);
        }
        Object obj = defaultSharedPreferences.getAll().get(C1316d.f4999o.m5815a());
        if ((obj instanceof String) || (obj instanceof Number) || (obj instanceof Boolean)) {
            hashMap.put("IABTCF_gdprApplies", obj);
        }
        return hashMap;
    }

    /* renamed from: v */
    private boolean m5381v() {
        ConnectivityManager connectivityManager;
        boolean z = false;
        if (C1492g.m5069f() && (connectivityManager = (ConnectivityManager) this.f5364c.getSystemService("connectivity")) != null) {
            try {
                if (connectivityManager.getRestrictBackgroundStatus() == 3) {
                    z = true;
                }
                return z;
            } catch (Throwable th) {
                this.f5362a.m5542A().m5115b("DataCollector", "Unable to collect constrained network info.", th);
                return false;
            }
        }
        return false;
    }

    /* renamed from: w */
    private C1428c m5380w() {
        C1428c c1428c = new C1428c();
        Intent registerReceiver = this.f5364c.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int intExtra = registerReceiver != null ? registerReceiver.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1) : -1;
        int intExtra2 = registerReceiver != null ? registerReceiver.getIntExtra("scale", -1) : -1;
        if (intExtra <= 0 || intExtra2 <= 0) {
            c1428c.f5380b = -1;
        } else {
            c1428c.f5380b = (int) ((intExtra / intExtra2) * 100.0f);
        }
        int i = -1;
        if (registerReceiver != null) {
            i = registerReceiver.getIntExtra("status", -1);
        }
        c1428c.f5379a = i;
        return c1428c;
    }

    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* renamed from: x */
    private long m5379x() {
        List asList = Arrays.asList(StringUtils.emptyIfNull(Settings.Secure.getString(this.f5364c.getContentResolver(), "enabled_accessibility_services")).split(":"));
        char c = asList.contains("AccessibilityMenuService") ? (char) 256 : (char) 0;
        char c2 = c;
        if (asList.contains("SelectToSpeakService")) {
            c2 = c | 512;
        }
        char c3 = c2;
        if (asList.contains("SoundAmplifierService")) {
            c3 = c2 | 2;
        }
        char c4 = c3;
        if (asList.contains("SpeechToTextAccessibilityService")) {
            c4 = c3 | 128;
        }
        char c5 = c4;
        if (asList.contains("SwitchAccessService")) {
            c5 = c4 | 4;
        }
        char c6 = c5;
        if ((this.f5364c.getResources().getConfiguration().uiMode & 48) == 32) {
            c6 = c5 | 1024;
        }
        char c7 = c6;
        if (m5412a("accessibility_enabled")) {
            c7 = c6 | '\b';
        }
        char c8 = c7;
        if (m5412a("touch_exploration_enabled")) {
            c8 = c7 | 16;
        }
        char c9 = c8;
        if (C1492g.m5071d()) {
            char c10 = c8;
            if (m5412a("accessibility_display_inversion_enabled")) {
                c10 = c8 | ' ';
            }
            c9 = c10;
            if (m5412a("skip_first_use_hints")) {
                c9 = c10 | '@';
            }
        }
        return c9;
    }

    /* renamed from: y */
    private float m5378y() {
        try {
            return Settings.System.getFloat(this.f5364c.getContentResolver(), "font_scale");
        } catch (Settings.SettingNotFoundException e) {
            this.f5363b.m5115b("DataCollector", "Error collecting font scale", e);
            return -1.0f;
        }
    }

    /* renamed from: z */
    private String m5377z() {
        AudioManager audioManager = (AudioManager) this.f5364c.getSystemService("audio");
        if (audioManager != null) {
            StringBuilder sb = new StringBuilder();
            if (C1492g.m5070e()) {
                for (AudioDeviceInfo audioDeviceInfo : audioManager.getDevices(2)) {
                    String m5415a = m5415a(audioDeviceInfo.getType());
                    if (!TextUtils.isEmpty(m5415a)) {
                        sb.append(m5415a);
                        sb.append(",");
                    }
                }
            } else {
                if (audioManager.isWiredHeadsetOn()) {
                    sb.append("headphones");
                    sb.append(",");
                }
                if (audioManager.isBluetoothA2dpOn()) {
                    sb.append("bluetootha2dpoutput");
                }
            }
            if (sb.length() > 0 && sb.charAt(sb.length() - 1) == ',') {
                sb.deleteCharAt(sb.length() - 1);
            }
            String sb2 = sb.toString();
            if (TextUtils.isEmpty(sb2)) {
                this.f5363b.m5116b("DataCollector", "No sound outputs detected");
            }
            return sb2;
        }
        return null;
    }

    /* renamed from: a */
    public String m5416a() {
        String encodeToString = Base64.encodeToString(new JSONObject(m5386q()).toString().getBytes(Charset.defaultCharset()), 2);
        String str = encodeToString;
        if (((Boolean) this.f5362a.m5511a(C1314b.f4964eq)).booleanValue()) {
            str = C1531l.m4977a(encodeToString, this.f5362a.m5444z(), Utils.getServerAdjustedUnixTimestampMillis(this.f5362a));
        }
        return str;
    }

    /* renamed from: a */
    public Map<String, Object> m5408a(Map<String, String> map, boolean z, boolean z2) {
        HashMap hashMap = new HashMap(64);
        Map<String, Object> m5407a = m5407a(z);
        Map<String, Object> m5395h = m5395h();
        Map<String, Object> m5393j = m5393j();
        Map<String, String> m5735a = this.f5362a.m5452r().m5735a();
        if (z2) {
            hashMap.put("device_info", m5407a);
            hashMap.put("app_info", m5395h);
            if (map != null) {
                hashMap.put("ad_info", map);
            }
            if (m5393j != null) {
                hashMap.put("location_info", m5393j);
            }
            if (m5735a != null) {
                hashMap.put("targeting_data", m5735a);
            }
        } else {
            hashMap.putAll(m5407a);
            hashMap.putAll(m5395h);
            if (map != null) {
                hashMap.putAll(map);
            }
            if (m5393j != null) {
                hashMap.putAll(m5393j);
            }
            if (m5735a != null) {
                hashMap.putAll(m5735a);
            }
        }
        hashMap.put("accept", "custom_size,launch_app,video");
        hashMap.put("format", "json");
        Utils.putObjectForStringIfValid("mediation_provider", this.f5362a.m5450t(), hashMap);
        Utils.putObjectForStringIfValid("plugin_version", (String) this.f5362a.m5511a(C1314b.f4926dy), hashMap);
        if (!((Boolean) this.f5362a.m5511a(C1314b.f4963ep)).booleanValue()) {
            hashMap.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f5362a.m5444z());
        }
        hashMap.putAll(m5394i());
        if (((Boolean) this.f5362a.m5511a(C1314b.f4900dY)).booleanValue()) {
            C1329g m5524S = this.f5362a.m5524S();
            hashMap.put("li", Long.valueOf(m5524S.m5738b(C1328f.f5082b)));
            hashMap.put("si", Long.valueOf(m5524S.m5738b(C1328f.f5084d)));
            hashMap.put("pf", Long.valueOf(m5524S.m5738b(C1328f.f5088h)));
            hashMap.put("mpf", Long.valueOf(m5524S.m5738b(C1328f.f5095o)));
            hashMap.put("gpf", Long.valueOf(m5524S.m5738b(C1328f.f5089i)));
            hashMap.put("asoac", Long.valueOf(m5524S.m5738b(C1328f.f5093m)));
        }
        hashMap.put("rid", UUID.randomUUID().toString());
        return hashMap;
    }

    /* renamed from: a */
    public Map<String, Object> m5407a(boolean z) {
        HashMap hashMap;
        synchronized (this.f5366e) {
            hashMap = new HashMap(this.f5365d);
        }
        return m5409a(hashMap, z);
    }

    /* renamed from: b */
    public Map<String, Object> m5406b() {
        return new HashMap(this.f5365d);
    }

    /* renamed from: c */
    public Map<String, Object> m5402c() {
        return new HashMap(this.f5367f);
    }

    /* renamed from: d */
    public Map<String, Object> m5400d() {
        return m5407a(false);
    }

    /* renamed from: e */
    public void m5398e() {
        synchronized (this.f5366e) {
            m5410a(this.f5365d);
        }
    }

    /* renamed from: f */
    public String m5397f() {
        return m5405b(this.f5364c) ? "fireos" : "android";
    }

    /* renamed from: g */
    public boolean m5396g() {
        return this.f5368g;
    }

    /* renamed from: h */
    public Map<String, Object> m5395h() {
        HashMap hashMap = new HashMap(this.f5367f);
        hashMap.put("test_ads", Boolean.valueOf(this.f5368g));
        if (((Boolean) this.f5362a.m5511a(C1314b.f4919dr)).booleanValue()) {
            Utils.putObjectForStringIfValid("cuid", this.f5362a.m5457m(), hashMap);
        }
        if (((Boolean) this.f5362a.m5511a(C1314b.f4922du)).booleanValue()) {
            hashMap.put("compass_random_token", this.f5362a.m5456n());
        }
        if (((Boolean) this.f5362a.m5511a(C1314b.f4924dw)).booleanValue()) {
            hashMap.put("applovin_random_token", this.f5362a.m5455o());
        }
        String name = this.f5362a.m5453q().getName();
        if (StringUtils.isValidString(name)) {
            hashMap.put("user_segment_name", name);
        }
        hashMap.putAll(m5382u());
        return hashMap;
    }

    /* renamed from: i */
    public Map<String, Object> m5394i() {
        HashMap hashMap = new HashMap(5);
        hashMap.put("sc", this.f5362a.m5511a(C1314b.f4747ac));
        hashMap.put("sc2", this.f5362a.m5511a(C1314b.f4748ad));
        hashMap.put("sc3", this.f5362a.m5511a(C1314b.f4749ae));
        hashMap.put("server_installed_at", this.f5362a.m5511a(C1314b.f4750af));
        Utils.putObjectForStringIfValid("persisted_data", (String) this.f5362a.m5509a(C1316d.f5010z), hashMap);
        return hashMap;
    }

    /* renamed from: j */
    public Map<String, Object> m5393j() {
        if (this.f5362a.m5454p().isLocationCollectionEnabled() && ((Boolean) this.f5362a.m5511a(C1314b.f4897dV)).booleanValue()) {
            HashMap hashMap = new HashMap(4);
            C1478s m5484ak = this.f5362a.m5484ak();
            boolean m5124b = m5484ak.m5124b();
            hashMap.put("loc_services_enabled", Boolean.valueOf(m5124b));
            if (!m5124b) {
                return hashMap;
            }
            hashMap.put("loc_auth", Boolean.valueOf(m5484ak.m5126a()));
            C1477r m5123c = m5484ak.m5123c();
            if (m5123c != null) {
                double m5129a = m5123c.m5129a();
                C1408l c1408l = this.f5362a;
                C1314b<Integer> c1314b = C1314b.f4899dX;
                hashMap.put("loc_lat", Utils.formatDoubleValue(m5129a, ((Integer) c1408l.m5511a(c1314b)).intValue()));
                hashMap.put("loc_long", Utils.formatDoubleValue(m5123c.m5128b(), ((Integer) this.f5362a.m5511a(c1314b)).intValue()));
            }
            return hashMap;
        }
        return null;
    }

    /* renamed from: k */
    public C1426a m5392k() {
        C1426a m5090a = C1487c.m5090a(this.f5364c);
        if (((Boolean) this.f5362a.m5511a(C1314b.f4917dp)).booleanValue()) {
            if (m5090a.f5375a && !((Boolean) this.f5362a.m5511a(C1314b.f4916do)).booleanValue()) {
                m5090a.f5376b = "";
            }
            f5360h.set(m5090a);
        } else {
            m5090a = new C1426a();
        }
        this.f5368g = StringUtils.isValidString(m5090a.f5376b) ? this.f5362a.m5454p().getTestDeviceAdvertisingIds().contains(m5090a.f5376b) : false;
        return m5090a;
    }

    /* renamed from: l */
    public C1427b m5391l() {
        return f5361j.get();
    }

    /* renamed from: m */
    public boolean m5390m() {
        return m5411a(Build.DEVICE, "goldfish,vbox") || m5411a(Build.HARDWARE, "ranchu,generic,vbox") || m5411a(Build.MANUFACTURER, "Genymotion") || m5411a(Build.MODEL, "Android SDK built for x86");
    }

    /* renamed from: n */
    public void m5389n() {
        this.f5362a.m5525R().m5653a(new C1342f(this.f5362a, new C1342f.AbstractC1343a() { // from class: com.applovin.impl.sdk.n.3
            @Override // com.applovin.impl.sdk.p057e.C1342f.AbstractC1343a
            /* renamed from: a */
            public void mo5375a(C1426a c1426a) {
                C1420n.f5360h.set(c1426a);
            }
        }), C1362o.EnumC1364a.ADVERTISING_INFO_COLLECTION);
        this.f5362a.m5525R().m5653a(new C1387z(this.f5362a, true, new Runnable() { // from class: com.applovin.impl.sdk.n.4
            @Override // java.lang.Runnable
            public void run() {
                C1420n.this.f5369i.set(C1420n.this.m5427B());
            }
        }), C1362o.EnumC1364a.CACHING_OTHER);
    }
}
