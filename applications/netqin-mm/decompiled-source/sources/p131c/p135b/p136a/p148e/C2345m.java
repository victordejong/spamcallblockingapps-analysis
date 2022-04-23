package p131c.p135b.p136a.p148e;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.hardware.SensorManager;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import com.android.volley.Request;
import com.applovin.impl.sdk.p491d.C7048s;
import com.applovin.sdk.AppLovinEventTypes;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.inmobi.ads.C8081af;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
import p131c.p135b.p136a.p138b.C2070d;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2386e;
import p131c.p135b.p136a.p148e.p153y.C2388g;
import p131c.p135b.p136a.p148e.p153y.C2419l;
import p131c.p135b.p136a.p148e.p153y.C2420m;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.e.m */
/* loaded from: classes-dex2jar.jar:c/b/a/e/m.class */
public class C2345m {

    /* renamed from: f */
    public static String f9081f;

    /* renamed from: g */
    public static int f9082g;

    /* renamed from: a */
    public final C2341l f9083a;

    /* renamed from: b */
    public final C2374t f9084b;

    /* renamed from: c */
    public final Context f9085c;

    /* renamed from: d */
    public final Map<Class, Object> f9086d;

    /* renamed from: e */
    public final AtomicReference<C2347b> f9087e = new AtomicReference<>();

    /* renamed from: c.b.a.e.m$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/m$a.class */
    public class C2346a implements C2270g.C2308q.AbstractC2309a {
        public C2346a() {
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.C2308q.AbstractC2309a
        /* renamed from: a */
        public void mo19037a(C2347b bVar) {
            C2345m.this.f9087e.set(bVar);
        }
    }

    /* renamed from: c.b.a.e.m$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/m$b.class */
    public static class C2347b {

        /* renamed from: a */
        public boolean f9089a;

        /* renamed from: b */
        public String f9090b = "";
    }

    /* renamed from: c.b.a.e.m$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/m$c.class */
    public static class C2348c {

        /* renamed from: a */
        public String f9091a;

        /* renamed from: b */
        public String f9092b;

        /* renamed from: c */
        public String f9093c;

        /* renamed from: d */
        public String f9094d;

        /* renamed from: e */
        public String f9095e;

        /* renamed from: f */
        public String f9096f;

        /* renamed from: g */
        public boolean f9097g;

        /* renamed from: h */
        public long f9098h;

        /* renamed from: i */
        public boolean f9099i;

        /* renamed from: a */
        public Map<String, String> m30205a() {
            HashMap hashMap = new HashMap(9);
            hashMap.put("app_name", this.f9091a);
            hashMap.put("app_version", C2422o.m29847e(this.f9092b));
            hashMap.put("package_name", C2422o.m29847e(this.f9093c));
            hashMap.put("installer_name", C2422o.m29847e(this.f9094d));
            hashMap.put("tg", String.valueOf(this.f9095e));
            hashMap.put("ltg", String.valueOf(this.f9096f));
            hashMap.put("debug", String.valueOf(this.f9097g));
            hashMap.put("test_ads", String.valueOf(this.f9099i));
            hashMap.put("ia", String.valueOf(this.f9098h));
            hashMap.put("sdk_version", AppLovinSdk.VERSION);
            return hashMap;
        }
    }

    /* renamed from: c.b.a.e.m$d */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/m$d.class */
    public static class C2349d {

        /* renamed from: a */
        public int f9100a = -1;

        /* renamed from: b */
        public int f9101b = -1;
    }

    /* renamed from: c.b.a.e.m$e */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/m$e.class */
    public static class C2350e {

        /* renamed from: A */
        public boolean f9102A;

        /* renamed from: B */
        public boolean f9103B;

        /* renamed from: C */
        public boolean f9104C;

        /* renamed from: D */
        public boolean f9105D;

        /* renamed from: E */
        public boolean f9106E;

        /* renamed from: G */
        public String f9108G;

        /* renamed from: H */
        public long f9109H;

        /* renamed from: I */
        public long f9110I;

        /* renamed from: K */
        public Boolean f9112K;

        /* renamed from: L */
        public Boolean f9113L;

        /* renamed from: M */
        public Boolean f9114M;

        /* renamed from: N */
        public boolean f9115N;

        /* renamed from: O */
        public float f9116O;

        /* renamed from: P */
        public float f9117P;

        /* renamed from: Q */
        public long f9118Q;

        /* renamed from: a */
        public String f9119a;

        /* renamed from: b */
        public String f9120b;

        /* renamed from: c */
        public int f9121c;

        /* renamed from: d */
        public String f9122d;

        /* renamed from: e */
        public String f9123e;

        /* renamed from: f */
        public String f9124f;

        /* renamed from: g */
        public String f9125g;

        /* renamed from: h */
        public String f9126h;

        /* renamed from: i */
        public String f9127i;

        /* renamed from: j */
        public String f9128j;

        /* renamed from: k */
        public Locale f9129k;

        /* renamed from: l */
        public String f9130l;

        /* renamed from: m */
        public float f9131m;

        /* renamed from: n */
        public int f9132n;

        /* renamed from: o */
        public float f9133o;

        /* renamed from: p */
        public float f9134p;

        /* renamed from: q */
        public double f9135q;

        /* renamed from: r */
        public double f9136r;

        /* renamed from: s */
        public int f9137s;

        /* renamed from: t */
        public boolean f9138t;

        /* renamed from: u */
        public C2349d f9139u;

        /* renamed from: v */
        public long f9140v;

        /* renamed from: w */
        public float f9141w;

        /* renamed from: x */
        public int f9142x;

        /* renamed from: y */
        public int f9143y;

        /* renamed from: z */
        public String f9144z;

        /* renamed from: F */
        public int f9107F = -1;

        /* renamed from: J */
        public C2351f f9111J = new C2351f();

        /* renamed from: a */
        public Map<String, String> m30204a() {
            HashMap hashMap = new HashMap(64);
            hashMap.put("platform", C2422o.m29847e(this.f9119a));
            hashMap.put("api_level", String.valueOf(this.f9121c));
            hashMap.put("model", C2422o.m29847e(this.f9122d));
            hashMap.put("locale", C2422o.m29847e(this.f9129k.toString()));
            hashMap.put("brand", C2422o.m29847e(this.f9123e));
            hashMap.put("brand_name", C2422o.m29847e(this.f9124f));
            hashMap.put("hardware", C2422o.m29847e(this.f9125g));
            hashMap.put("revision", C2422o.m29847e(this.f9126h));
            hashMap.put("os", C2422o.m29847e(this.f9120b));
            hashMap.put("orientation_lock", this.f9130l);
            hashMap.put("country_code", C2422o.m29847e(this.f9127i));
            hashMap.put("carrier", C2422o.m29847e(this.f9128j));
            hashMap.put("tz_offset", String.valueOf(this.f9136r));
            hashMap.put("aida", String.valueOf(this.f9115N));
            hashMap.put("adr", String.valueOf(this.f9138t));
            hashMap.put(AvidVideoPlaybackListenerImpl.VOLUME, String.valueOf(this.f9142x));
            hashMap.put("sb", String.valueOf(this.f9143y));
            hashMap.put("sim", String.valueOf(this.f9102A));
            hashMap.put("gy", String.valueOf(this.f9103B));
            hashMap.put("is_tablet", String.valueOf(this.f9104C));
            hashMap.put("tv", String.valueOf(this.f9105D));
            hashMap.put("vs", String.valueOf(this.f9106E));
            hashMap.put("lpm", String.valueOf(this.f9107F));
            hashMap.put("fs", String.valueOf(this.f9109H));
            hashMap.put("tds", String.valueOf(this.f9110I));
            hashMap.put("fm", String.valueOf(this.f9111J.f9146b));
            hashMap.put("tm", String.valueOf(this.f9111J.f9145a));
            hashMap.put("lmt", String.valueOf(this.f9111J.f9147c));
            hashMap.put("lm", String.valueOf(this.f9111J.f9148d));
            hashMap.put("adns", String.valueOf(this.f9131m));
            hashMap.put("adnsd", String.valueOf(this.f9132n));
            hashMap.put("xdpi", String.valueOf(this.f9133o));
            hashMap.put("ydpi", String.valueOf(this.f9134p));
            hashMap.put("screen_size_in", String.valueOf(this.f9135q));
            hashMap.put(C8081af.f31598d, String.valueOf(this.f9140v));
            hashMap.put("font", String.valueOf(this.f9141w));
            hashMap.put("bt_ms", String.valueOf(this.f9118Q));
            hashMap.put("wvvc", String.valueOf(this.f9137s));
            if (C2422o.m29851b(this.f9108G)) {
                hashMap.put("so", C2422o.m29847e(this.f9108G));
            }
            float f = this.f9116O;
            if (f > 0.0f) {
                hashMap.put("da", String.valueOf(f));
            }
            float f2 = this.f9117P;
            if (f2 > 0.0f) {
                hashMap.put("dm", String.valueOf(f2));
            }
            if (C2422o.m29851b(this.f9144z)) {
                hashMap.put("ua", C2422o.m29847e(this.f9144z));
            }
            C2349d dVar = this.f9139u;
            if (dVar != null) {
                hashMap.put("act", String.valueOf(dVar.f9100a));
                hashMap.put("acm", String.valueOf(this.f9139u.f9101b));
            }
            Boolean bool = this.f9112K;
            if (bool != null) {
                hashMap.put("huc", bool.toString());
            }
            Boolean bool2 = this.f9113L;
            if (bool2 != null) {
                hashMap.put("aru", bool2.toString());
            }
            Boolean bool3 = this.f9114M;
            if (bool3 != null) {
                hashMap.put("dns", bool3.toString());
            }
            return hashMap;
        }
    }

    /* renamed from: c.b.a.e.m$f */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/m$f.class */
    public static class C2351f {

        /* renamed from: a */
        public long f9145a = -1;

        /* renamed from: b */
        public long f9146b = -1;

        /* renamed from: c */
        public long f9147c = -1;

        /* renamed from: d */
        public boolean f9148d = false;
    }

    public C2345m(C2341l lVar) {
        if (lVar != null) {
            this.f9083a = lVar;
            this.f9084b = lVar.m30262d0();
            this.f9085c = lVar.m30264d();
            this.f9086d = Collections.synchronizedMap(new HashMap());
            return;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    /* JADX WARN: Type inference failed for: r6v5, types: [java.lang.Throwable] */
    /* renamed from: a */
    public final C2350e m30230a(C2350e eVar) {
        PowerManager powerManager;
        C2350e eVar2 = eVar;
        if (eVar == null) {
            eVar2 = new C2350e();
        }
        eVar2.f9112K = C2328i.m30353a(this.f9085c);
        eVar2.f9113L = C2328i.m30349b(this.f9085c);
        eVar2.f9114M = C2328i.m30347c(this.f9085c);
        eVar2.f9139u = ((Boolean) this.f9083a.m30291a(C2251d.C2256e.f8624X2)).booleanValue() ? m30215j() : null;
        if (((Boolean) this.f9083a.m30291a(C2251d.C2256e.f8697k3)).booleanValue()) {
            eVar2.f9138t = m30209p();
        }
        AudioManager audioManager = (AudioManager) this.f9085c.getSystemService("audio");
        if (audioManager != null) {
            eVar2.f9142x = (int) (audioManager.getStreamVolume(3) * ((Float) this.f9083a.m30291a(C2251d.C2256e.f8703l3)).floatValue());
        }
        try {
            eVar2.f9143y = (int) ((Settings.System.getInt(this.f9085c.getContentResolver(), "screen_brightness") / 255.0f) * 100.0f);
        } catch (Settings.SettingNotFoundException e) {
            this.f9084b.m30043b("DataCollector", "Unable to collect screen brightness", e);
        }
        if (((Boolean) this.f9083a.m30291a(C2251d.C2256e.f8709m3)).booleanValue()) {
            String a = C2070d.m31130a(((Long) this.f9083a.m30291a(C2251d.C2256e.f8715n3)).longValue());
            if (C2422o.m29851b(a)) {
                eVar2.f9144z = a;
            }
        }
        if (((Boolean) this.f9083a.m30291a(C2251d.C2256e.f8643b3)).booleanValue()) {
            try {
                eVar2.f9109H = Environment.getDataDirectory().getFreeSpace();
                eVar2.f9110I = Environment.getDataDirectory().getTotalSpace();
            } catch (Throwable th) {
                eVar2.f9109H = -1L;
                eVar2.f9110I = -1L;
                this.f9084b.m30043b("DataCollector", "Unable to collect total & free space.", th);
            }
        }
        if (((Boolean) this.f9083a.m30291a(C2251d.C2256e.f8649c3)).booleanValue()) {
            ActivityManager activityManager = (ActivityManager) this.f9085c.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            if (activityManager != null) {
                activityManager.getMemoryInfo(memoryInfo);
                C2351f fVar = eVar2.f9111J;
                fVar.f9146b = memoryInfo.availMem;
                fVar.f9148d = memoryInfo.lowMemory;
                fVar.f9147c = memoryInfo.threshold;
                fVar.f9145a = memoryInfo.totalMem;
            }
        }
        String str = (String) this.f9083a.m30268c().m30592a(C2251d.C2256e.f8733q3);
        if (!str.equalsIgnoreCase(f9081f)) {
            try {
                f9081f = str;
                PackageInfo packageInfo = this.f9085c.getPackageManager().getPackageInfo(str, 0);
                eVar2.f9137s = packageInfo.versionCode;
                f9082g = packageInfo.versionCode;
            } catch (Throwable th2) {
                f9082g = 0;
            }
        } else {
            eVar2.f9137s = f9082g;
        }
        if (((Boolean) this.f9083a.m30291a(C2251d.C2256e.f8628Y2)).booleanValue()) {
            eVar2.f9104C = AppLovinSdkUtils.isTablet(this.f9085c);
        }
        if (((Boolean) this.f9083a.m30291a(C2251d.C2256e.f8633Z2)).booleanValue()) {
            eVar2.f9105D = m30210o();
        }
        if (((Boolean) this.f9083a.m30291a(C2251d.C2256e.f8638a3)).booleanValue()) {
            String m = m30212m();
            if (!TextUtils.isEmpty(m)) {
                eVar2.f9108G = m;
            }
        }
        eVar2.f9130l = m30218g();
        if (((Boolean) this.f9083a.m30291a(C2251d.C2256e.f8655d3)).booleanValue()) {
            eVar2.f9106E = AbstractC2426r.m29778d();
        }
        if (C2388g.m29971d() && (powerManager = (PowerManager) this.f9085c.getSystemService("power")) != null) {
            eVar2.f9107F = powerManager.isPowerSaveMode() ? 1 : 0;
        }
        if (((Boolean) this.f9083a.m30291a(C2251d.C2256e.f8739r3)).booleanValue() && this.f9083a.m30319C() != null) {
            eVar2.f9116O = this.f9083a.m30319C().m29861c();
        }
        if (((Boolean) this.f9083a.m30291a(C2251d.C2256e.f8745s3)).booleanValue() && this.f9083a.m30319C() != null) {
            eVar2.f9117P = this.f9083a.m30319C().m29862b();
        }
        return eVar2;
    }

    /* renamed from: a */
    public String m30232a() {
        String encodeToString = Base64.encodeToString(new JSONObject(m30219f()).toString().getBytes(Charset.defaultCharset()), 2);
        String str = encodeToString;
        if (((Boolean) this.f9083a.m30291a(C2251d.C2256e.f8591Q3)).booleanValue()) {
            str = C2420m.m29871a(encodeToString, this.f9083a.m30269b0(), AbstractC2426r.m29815a(this.f9083a));
        }
        return str;
    }

    /* renamed from: a */
    public final String m30231a(int i) {
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
        if (i == 9 || i == 10) {
            return "hdmioutput";
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x073e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0771  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0793  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x07b8  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x07ce  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x07f6  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, java.lang.String> m30226a(java.util.Map<java.lang.String, java.lang.String> r6, boolean r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 2110
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p148e.C2345m.m30226a(java.util.Map, boolean, boolean):java.util.Map");
    }

    /* renamed from: a */
    public final boolean m30228a(String str) {
        boolean z = false;
        try {
            if (Settings.Secure.getInt(this.f9085c.getContentResolver(), str) == 1) {
                z = true;
            }
        } catch (Settings.SettingNotFoundException e) {
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m30227a(String str, C2251d.C2256e<String> eVar) {
        for (String str2 : C2386e.m29982a((String) this.f9083a.m30291a(eVar))) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public C2350e m30225b() {
        C2350e eVar;
        TelephonyManager telephonyManager;
        Object obj = this.f9086d.get(C2350e.class);
        if (obj != null) {
            eVar = (C2350e) obj;
        } else {
            eVar = new C2350e();
            eVar.f9129k = Locale.getDefault();
            eVar.f9122d = Build.MODEL;
            eVar.f9120b = Build.VERSION.RELEASE;
            eVar.f9119a = "android";
            eVar.f9123e = Build.MANUFACTURER;
            eVar.f9124f = Build.BRAND;
            eVar.f9125g = Build.HARDWARE;
            eVar.f9121c = Build.VERSION.SDK_INT;
            eVar.f9126h = Build.DEVICE;
            eVar.f9136r = m30211n();
            eVar.f9102A = m30206s();
            eVar.f9115N = m30216i();
            SensorManager sensorManager = (SensorManager) this.f9085c.getSystemService("sensor");
            if (sensorManager != null) {
                eVar.f9103B = sensorManager.getDefaultSensor(4) != null;
            }
            if (m30224b("android.permission.READ_PHONE_STATE") && (telephonyManager = (TelephonyManager) this.f9085c.getSystemService("phone")) != null) {
                eVar.f9127i = telephonyManager.getSimCountryIso().toUpperCase(Locale.ENGLISH);
                String networkOperatorName = telephonyManager.getNetworkOperatorName();
                try {
                    eVar.f9128j = URLEncoder.encode(networkOperatorName, Request.DEFAULT_PARAMS_ENCODING);
                } catch (UnsupportedEncodingException e) {
                    eVar.f9128j = networkOperatorName;
                }
            }
            DisplayMetrics displayMetrics = this.f9085c.getResources().getDisplayMetrics();
            eVar.f9131m = displayMetrics.density;
            eVar.f9132n = displayMetrics.densityDpi;
            eVar.f9133o = displayMetrics.xdpi;
            eVar.f9134p = displayMetrics.ydpi;
            Point a = C2388g.m29975a(this.f9085c);
            double sqrt = Math.sqrt(Math.pow(a.x, 2.0d) + Math.pow(a.y, 2.0d));
            double d = eVar.f9133o;
            Double.isNaN(d);
            eVar.f9135q = sqrt / d;
            if (((Boolean) this.f9083a.m30291a(C2251d.C2256e.f8661e3)).booleanValue()) {
                eVar.f9140v = m30214k();
            }
            if (((Boolean) this.f9083a.m30291a(C2251d.C2256e.f8667f3)).booleanValue()) {
                eVar.f9141w = m30213l();
            }
            eVar.f9118Q = System.currentTimeMillis() - SystemClock.elapsedRealtime();
            this.f9086d.put(C2350e.class, eVar);
        }
        return m30230a(eVar);
    }

    /* renamed from: b */
    public final boolean m30224b(String str) {
        if (str != null) {
            Context context = this.f9085c;
            if (context != null) {
                return C2419l.m29874a(str, context.getPackageName(), this.f9085c.getPackageManager()) == 0;
            }
            throw new IllegalArgumentException("No context specified");
        }
        throw new IllegalArgumentException("No permission name specified");
    }

    /* renamed from: c */
    public C2348c m30223c() {
        PackageInfo packageInfo;
        Object obj = this.f9086d.get(C2348c.class);
        if (obj != null) {
            return (C2348c) obj;
        }
        ApplicationInfo applicationInfo = this.f9085c.getApplicationInfo();
        long lastModified = new File(applicationInfo.sourceDir).lastModified();
        PackageManager packageManager = this.f9085c.getPackageManager();
        String str = null;
        try {
            packageInfo = packageManager.getPackageInfo(this.f9085c.getPackageName(), 0);
            try {
                str = packageManager.getInstallerPackageName(applicationInfo.packageName);
            } catch (Throwable th) {
            }
        } catch (Throwable th2) {
            packageInfo = null;
        }
        C2348c cVar = new C2348c();
        cVar.f9093c = applicationInfo.packageName;
        String str2 = "";
        if (str == null) {
            str = "";
        }
        cVar.f9094d = str;
        cVar.f9098h = lastModified;
        cVar.f9091a = String.valueOf(packageManager.getApplicationLabel(applicationInfo));
        if (packageInfo != null) {
            str2 = packageInfo.versionName;
        }
        cVar.f9092b = str2;
        cVar.f9095e = AbstractC2426r.m29816a(C2251d.C2258g.f8799i, this.f9083a);
        cVar.f9096f = AbstractC2426r.m29816a(C2251d.C2258g.f8800j, this.f9083a);
        cVar.f9097g = AbstractC2426r.m29787b(this.f9083a);
        this.f9086d.put(C2348c.class, cVar);
        return cVar;
    }

    /* renamed from: c */
    public final String m30222c(String str) {
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

    /* renamed from: d */
    public C2347b m30221d() {
        C2347b bVar;
        C2347b h = m30217h();
        if (((Boolean) this.f9083a.m30291a(C2251d.C2256e.f8580O2)).booleanValue()) {
            bVar = h;
            if (h.f9089a) {
                bVar = h;
                if (!((Boolean) this.f9083a.m30291a(C2251d.C2256e.f8575N2)).booleanValue()) {
                    h.f9090b = "";
                    bVar = h;
                }
            }
        } else {
            bVar = new C2347b();
        }
        m30223c().f9099i = C2422o.m29851b(bVar.f9090b) ? this.f9083a.m30302T().getTestDeviceAdvertisingIds().contains(bVar.f9090b) : false;
        return bVar;
    }

    /* renamed from: e */
    public void m30220e() {
        this.f9083a.m30249j().m18826a(new C2270g.C2308q(this.f9083a, new C2346a()), C7048s.EnumC7049a.ADVERTISING_INFO_COLLECTION);
    }

    /* renamed from: f */
    public final Map<String, String> m30219f() {
        return m30226a(null, false, true);
    }

    /* renamed from: g */
    public final String m30218g() {
        int b = AbstractC2426r.m29788b(this.f9085c);
        return b == 1 ? "portrait" : b == 2 ? "landscape" : "none";
    }

    /* renamed from: h */
    public final C2347b m30217h() {
        if (m30216i()) {
            try {
                C2347b bVar = new C2347b();
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.f9085c);
                bVar.f9089a = advertisingIdInfo.isLimitAdTrackingEnabled();
                bVar.f9090b = advertisingIdInfo.getId();
                return bVar;
            } catch (Throwable th) {
                this.f9084b.m30043b("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }", th);
            }
        } else {
            C2374t.m30034j("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }");
        }
        return new C2347b();
    }

    /* renamed from: i */
    public final boolean m30216i() {
        return AbstractC2426r.m29773e("com.google.android.gms.ads.identifier.AdvertisingIdClient");
    }

    /* renamed from: j */
    public final C2349d m30215j() {
        C2349d dVar = new C2349d();
        Intent registerReceiver = this.f9085c.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int i = -1;
        int intExtra = registerReceiver != null ? registerReceiver.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1) : -1;
        int intExtra2 = registerReceiver != null ? registerReceiver.getIntExtra("scale", -1) : -1;
        if (intExtra <= 0 || intExtra2 <= 0) {
            dVar.f9101b = -1;
        } else {
            dVar.f9101b = (int) ((intExtra / intExtra2) * 100.0f);
        }
        if (registerReceiver != null) {
            i = registerReceiver.getIntExtra("status", -1);
        }
        dVar.f9100a = i;
        return dVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v9 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m30214k() {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p148e.C2345m.m30214k():long");
    }

    /* renamed from: l */
    public final float m30213l() {
        try {
            return Settings.System.getFloat(this.f9085c.getContentResolver(), "font_scale");
        } catch (Settings.SettingNotFoundException e) {
            this.f9084b.m30043b("DataCollector", "Error collecting font scale", e);
            return -1.0f;
        }
    }

    /* renamed from: m */
    public final String m30212m() {
        AudioManager audioManager = (AudioManager) this.f9085c.getSystemService("audio");
        if (audioManager == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (C2388g.m29970e()) {
            for (AudioDeviceInfo audioDeviceInfo : audioManager.getDevices(2)) {
                String a = m30231a(audioDeviceInfo.getType());
                if (!TextUtils.isEmpty(a)) {
                    sb.append(a);
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
            this.f9084b.m30044b("DataCollector", "No sound outputs detected");
        }
        return sb2;
    }

    /* renamed from: n */
    public final double m30211n() {
        double offset = TimeZone.getDefault().getOffset(new Date().getTime());
        Double.isNaN(offset);
        double round = Math.round((offset * 10.0d) / 3600000.0d);
        Double.isNaN(round);
        return round / 10.0d;
    }

    /* renamed from: o */
    public final boolean m30210o() {
        return this.f9085c.getPackageManager().hasSystemFeature(C2388g.m29971d() ? "android.software.leanback" : "android.hardware.type.television");
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000f, code lost:
        if (m30207r() != false) goto L_0x0012;
     */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m30209p() {
        /*
            r2 = this;
            r0 = 0
            r3 = r0
            r0 = r2
            boolean r0 = r0.m30208q()     // Catch: all -> 0x0016
            if (r0 != 0) goto L_0x0012
            r0 = r2
            boolean r0 = r0.m30207r()     // Catch: all -> 0x0016
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0014
        L_0x0012:
            r0 = 1
            r3 = r0
        L_0x0014:
            r0 = r3
            return r0
        L_0x0016:
            r5 = move-exception
            goto L_0x0014
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p148e.C2345m.m30209p():boolean");
    }

    /* renamed from: q */
    public final boolean m30208q() {
        String str = Build.TAGS;
        return str != null && str.contains(m30222c("lz}$blpz"));
    }

    /* renamed from: r */
    public final boolean m30207r() {
        for (int i = 0; i < 9; i++) {
            if (new File(m30222c(new String[]{"&zpz}ld&hyy&Z|yl{|zl{'hyb", "&zk`g&z|", "&zpz}ld&k`g&z|", "&zpz}ld&qk`g&z|", "&mh}h&efjhe&qk`g&z|", "&mh}h&efjhe&k`g&z|", "&zpz}ld&zm&qk`g&z|", "&zpz}ld&k`g&oh`ezhol&z|", "&mh}h&efjhe&z|"}[i])).exists()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: s */
    public final boolean m30206s() {
        return m30227a(Build.DEVICE, C2251d.C2256e.f8679h3) || m30227a(Build.HARDWARE, C2251d.C2256e.f8673g3) || m30227a(Build.MANUFACTURER, C2251d.C2256e.f8685i3) || m30227a(Build.MODEL, C2251d.C2256e.f8691j3);
    }
}
