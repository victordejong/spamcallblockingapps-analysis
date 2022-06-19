package p068d2;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.support.p012v4.media.AbstractC0081a;
import android.support.p012v4.media.C0082b;
import com.applovin.mediation.AppLovinUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.internal.ads.C1676a;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import p068d2.C2315i3;
/* renamed from: d2.b */
/* loaded from: classes-dex2jar.jar:d2/b.class */
public class C2168b {

    /* renamed from: a */
    public static ExecutorService f7919a = C2315i3.m3671F();

    /* renamed from: d2.b$a */
    /* loaded from: classes-dex2jar.jar:d2/b$a.class */
    public class RunnableC2169a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2315i3.AbstractRunnableC2317b f7920a;

        /* renamed from: b */
        public final /* synthetic */ String f7921b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC0081a f7922c;

        /* renamed from: d */
        public final /* synthetic */ C2268g f7923d;

        /* renamed from: e */
        public final /* synthetic */ C2315i3.C2318c f7924e;

        public RunnableC2169a(C2315i3.AbstractRunnableC2317b abstractRunnableC2317b, String str, AbstractC0081a abstractC0081a, C2268g c2268g, C2315i3.C2318c c2318c) {
            this.f7920a = abstractRunnableC2317b;
            this.f7921b = str;
            this.f7922c = abstractC0081a;
            this.f7923d = c2268g;
            this.f7924e = c2318c;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2267f4 c2267f4;
            C2230f1 m3591d = C2408t.m3591d();
            if (m3591d.f8064B || m3591d.f8065C) {
                C0082b.m8750l(0, 0, "The AdColony API is not available while AdColony is disabled.", false);
                C2315i3.m3662i(this.f7920a);
            } else if (!C2168b.m3790h() && C2408t.m3590e()) {
                C2315i3.m3662i(this.f7920a);
            } else {
                C2402s c2402s = m3591d.f8106u.get(this.f7921b);
                C2402s c2402s2 = c2402s;
                if (c2402s == null) {
                    c2402s2 = new C2402s(this.f7921b);
                }
                int i = c2402s2.f8515c;
                if (i == 2 || i == 1) {
                    C2315i3.m3662i(this.f7920a);
                    return;
                }
                C2315i3.m3649v(this.f7920a);
                if (this.f7920a.mo3644a()) {
                    return;
                }
                C2329k0 m3722l = m3591d.m3722l();
                String str = this.f7921b;
                AbstractC0081a abstractC0081a = this.f7922c;
                C2268g c2268g = this.f7923d;
                long m3642b = this.f7924e.m3642b();
                Objects.requireNonNull(m3722l);
                String m3666e = C2315i3.m3666e();
                C2230f1 m3591d2 = C2408t.m3591d();
                C2387q c2387q = new C2387q(m3666e, abstractC0081a, str);
                C2267f4 c2267f42 = new C2267f4();
                C2227e4.m3744i(c2267f42, AppLovinUtils.ServerParameterKeys.ZONE_ID, str);
                C2227e4.m3739n(c2267f42, "fullscreen", true);
                Rect m3778g = m3591d2.m3721m().m3778g();
                C2227e4.m3740m(c2267f42, "width", m3778g.width());
                C2227e4.m3740m(c2267f42, "height", m3778g.height());
                C2227e4.m3740m(c2267f42, "type", 0);
                C2227e4.m3744i(c2267f42, FacebookAdapter.KEY_ID, m3666e);
                if (c2268g != null && (c2267f4 = c2268g.f8162c) != null) {
                    c2387q.f8439d = c2268g;
                    C2227e4.m3745h(c2267f42, "options", c2267f4);
                }
                m3722l.f8330c.put(m3666e, c2387q);
                m3722l.f8328a.put(m3666e, new RunnableC2390q0(m3722l, m3666e, str, m3642b));
                new C2410t0("AdSession.on_request", 1, c2267f42).m3586b();
                C2315i3.m3660k(m3722l.f8328a.get(m3666e), m3642b);
            }
        }
    }

    /* renamed from: d2.b$b */
    /* loaded from: classes-dex2jar.jar:d2/b$b.class */
    public class RunnableC2170b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC0081a f7925a;

        /* renamed from: b */
        public final /* synthetic */ String f7926b;

        public RunnableC2170b(AbstractC0081a abstractC0081a, String str) {
            this.f7925a = abstractC0081a;
            this.f7926b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f7925a.mo1951G(C2168b.m3797a(this.f7926b));
        }
    }

    /* renamed from: d2.b$c */
    /* loaded from: classes-dex2jar.jar:d2/b$c.class */
    public class RunnableC2171c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC2328k f7927a;

        /* renamed from: b */
        public final /* synthetic */ String f7928b;

        public RunnableC2171c(AbstractC2328k abstractC2328k, String str) {
            this.f7927a = abstractC2328k;
            this.f7928b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f7927a.mo1956f(C2168b.m3797a(this.f7928b));
        }
    }

    /* renamed from: d2.b$d */
    /* loaded from: classes-dex2jar.jar:d2/b$d.class */
    public class RunnableC2172d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2230f1 f7929a;

        public RunnableC2172d(C2230f1 c2230f1) {
            this.f7929a = c2230f1;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = new ArrayList();
            Iterator<AbstractC2463z0> it2 = this.f7929a.m3717q().f8565a.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                AbstractC2463z0 abstractC2463z0 = (AbstractC2463z0) it3.next();
                if (abstractC2463z0 instanceof C2441x3) {
                    C2441x3 c2441x3 = (C2441x3) abstractC2463z0;
                    if (!c2441x3.f8628A) {
                        c2441x3.loadUrl("about:blank");
                        c2441x3.clearCache(true);
                        c2441x3.removeAllViews();
                        c2441x3.f8630C = true;
                    }
                }
                this.f7929a.m3726h(abstractC2463z0.mo3529d());
            }
        }
    }

    /* renamed from: d2.b$e */
    /* loaded from: classes-dex2jar.jar:d2/b$e.class */
    public class C2173e implements C2315i3.AbstractRunnableC2317b {

        /* renamed from: a */
        public boolean f7930a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC2328k f7931b;

        /* renamed from: c */
        public final /* synthetic */ String f7932c;

        /* renamed from: d */
        public final /* synthetic */ C2315i3.C2318c f7933d;

        public C2173e(AbstractC2328k abstractC2328k, String str, C2315i3.C2318c c2318c) {
            this.f7931b = abstractC2328k;
            this.f7932c = str;
            this.f7933d = c2318c;
        }

        @Override // p068d2.C2315i3.AbstractRunnableC2317b
        /* renamed from: a */
        public boolean mo3644a() {
            return this.f7930a;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                if (this.f7930a) {
                    return;
                }
                this.f7930a = true;
                C2168b.m3794d(this.f7931b, this.f7932c);
                if (!this.f7933d.m3643a()) {
                    return;
                }
                StringBuilder m8752j = C0082b.m8752j("RequestNotFilled called due to a native timeout. ");
                StringBuilder m8752j2 = C0082b.m8752j("Timeout set to: ");
                m8752j2.append(this.f7933d.f8267a);
                m8752j2.append(" ms. ");
                m8752j.append(m8752j2.toString());
                StringBuilder sb = new StringBuilder();
                sb.append("Execution took: ");
                long currentTimeMillis = System.currentTimeMillis();
                C2315i3.C2318c c2318c = this.f7933d;
                sb.append(currentTimeMillis - (c2318c.f8268b - c2318c.f8267a));
                sb.append(" ms. ");
                m8752j.append(sb.toString());
                m8752j.append("AdView request not yet started.");
                C0082b.m8750l(0, 0, m8752j.toString(), true);
            }
        }
    }

    /* renamed from: d2.b$f */
    /* loaded from: classes-dex2jar.jar:d2/b$f.class */
    public class RunnableC2174f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2315i3.AbstractRunnableC2317b f7934a;

        /* renamed from: b */
        public final /* synthetic */ String f7935b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC2328k f7936c;

        /* renamed from: d */
        public final /* synthetic */ C2278h f7937d;

        /* renamed from: e */
        public final /* synthetic */ C2268g f7938e;

        /* renamed from: f */
        public final /* synthetic */ C2315i3.C2318c f7939f;

        public RunnableC2174f(C2315i3.AbstractRunnableC2317b abstractRunnableC2317b, String str, AbstractC2328k abstractC2328k, C2278h c2278h, C2268g c2268g, C2315i3.C2318c c2318c) {
            this.f7934a = abstractRunnableC2317b;
            this.f7935b = str;
            this.f7936c = abstractC2328k;
            this.f7937d = c2278h;
            this.f7938e = c2268g;
            this.f7939f = c2318c;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2267f4 c2267f4;
            C2230f1 m3591d = C2408t.m3591d();
            if (m3591d.f8064B || m3591d.f8065C) {
                C0082b.m8750l(0, 0, "The AdColony API is not available while AdColony is disabled.", false);
                C2315i3.m3662i(this.f7934a);
            }
            if (!C2168b.m3790h() && C2408t.m3590e()) {
                C2315i3.m3662i(this.f7934a);
            }
            C2315i3.m3649v(this.f7934a);
            if (!this.f7934a.mo3644a()) {
                C2329k0 m3722l = m3591d.m3722l();
                String str = this.f7935b;
                AbstractC2328k abstractC2328k = this.f7936c;
                C2278h c2278h = this.f7937d;
                C2268g c2268g = this.f7938e;
                long m3642b = this.f7939f.m3642b();
                Objects.requireNonNull(m3722l);
                String m3666e = C2315i3.m3666e();
                float m4794c = C1676a.m4794c();
                C2267f4 c2267f42 = new C2267f4();
                C2227e4.m3744i(c2267f42, AppLovinUtils.ServerParameterKeys.ZONE_ID, str);
                C2227e4.m3740m(c2267f42, "type", 1);
                C2227e4.m3740m(c2267f42, "width_pixels", (int) (c2278h.f8189a * m4794c));
                C2227e4.m3740m(c2267f42, "height_pixels", (int) (c2278h.f8190b * m4794c));
                C2227e4.m3740m(c2267f42, "width", c2278h.f8189a);
                C2227e4.m3740m(c2267f42, "height", c2278h.f8190b);
                C2227e4.m3744i(c2267f42, FacebookAdapter.KEY_ID, m3666e);
                if (c2268g != null && (c2267f4 = c2268g.f8162c) != null) {
                    C2227e4.m3745h(c2267f42, "options", c2267f4);
                }
                abstractC2328k.f8325a = str;
                abstractC2328k.f8326b = c2278h;
                m3722l.f8331d.put(m3666e, abstractC2328k);
                m3722l.f8328a.put(m3666e, new RunnableC2382p0(m3722l, m3666e, str, m3642b));
                new C2410t0("AdSession.on_request", 1, c2267f42).m3586b();
                C2315i3.m3660k(m3722l.f8328a.get(m3666e), m3642b);
            }
        }
    }

    /* renamed from: d2.b$g */
    /* loaded from: classes-dex2jar.jar:d2/b$g.class */
    public class C2175g implements C2315i3.AbstractRunnableC2317b {

        /* renamed from: a */
        public boolean f7940a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC0081a f7941b;

        /* renamed from: c */
        public final /* synthetic */ String f7942c;

        /* renamed from: d */
        public final /* synthetic */ C2315i3.C2318c f7943d;

        public C2175g(AbstractC0081a abstractC0081a, String str, C2315i3.C2318c c2318c) {
            this.f7941b = abstractC0081a;
            this.f7942c = str;
            this.f7943d = c2318c;
        }

        @Override // p068d2.C2315i3.AbstractRunnableC2317b
        /* renamed from: a */
        public boolean mo3644a() {
            return this.f7940a;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                if (this.f7940a) {
                    return;
                }
                this.f7940a = true;
                C2168b.m3795c(this.f7941b, this.f7942c);
                if (!this.f7943d.m3643a()) {
                    return;
                }
                StringBuilder m8752j = C0082b.m8752j("RequestNotFilled called due to a native timeout. ");
                StringBuilder m8752j2 = C0082b.m8752j("Timeout set to: ");
                m8752j2.append(this.f7943d.f8267a);
                m8752j2.append(" ms. ");
                m8752j.append(m8752j2.toString());
                StringBuilder sb = new StringBuilder();
                sb.append("Execution took: ");
                long currentTimeMillis = System.currentTimeMillis();
                C2315i3.C2318c c2318c = this.f7943d;
                sb.append(currentTimeMillis - (c2318c.f8268b - c2318c.f8267a));
                sb.append(" ms. ");
                m8752j.append(sb.toString());
                m8752j.append("Interstitial request not yet started.");
                C0082b.m8750l(0, 0, m8752j.toString(), true);
            }
        }
    }

    /* renamed from: a */
    public static C2402s m3797a(String str) {
        C2402s c2402s = C2408t.m3590e() ? C2408t.m3591d().f8106u.get(str) : C2408t.m3589f() ? C2408t.m3591d().f8106u.get(str) : null;
        C2402s c2402s2 = c2402s;
        if (c2402s == null) {
            c2402s2 = new C2402s(str);
        }
        return c2402s2;
    }

    /* renamed from: b */
    public static void m3796b(Context context, C2357l c2357l) {
        String str;
        String optString;
        String optString2;
        String optString3;
        String optString4;
        String optString5;
        String optString6;
        C2230f1 m3591d = C2408t.m3591d();
        C2179b2 m3721m = m3591d.m3721m();
        if (c2357l == null || context == null) {
            return;
        }
        ExecutorService executorService = C2315i3.f8262a;
        try {
            str = context.getPackageName();
        } catch (Exception e) {
            str = "unknown";
        }
        String m3650u = C2315i3.m3650u();
        Context context2 = C2408t.f8531a;
        int i = 0;
        if (context2 != null) {
            try {
                i = context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0).versionCode;
            } catch (Exception e2) {
                C2408t.m3591d().m3718p().m3686e(0, 0, "Failed to retrieve package info.", true);
            }
        }
        String m3781d = m3721m.m3781d();
        String m3772b = m3591d.m3716r().m3772b();
        HashMap hashMap = new HashMap();
        hashMap.put("sessionId", "unknown");
        hashMap.put("advertiserId", "unknown");
        hashMap.put("countryLocale", Locale.getDefault().getDisplayLanguage() + " (" + Locale.getDefault().getDisplayCountry() + ")");
        hashMap.put("countryLocaleShort", C2408t.m3591d().m3721m().m3780e());
        Objects.requireNonNull(C2408t.m3591d().m3721m());
        hashMap.put("manufacturer", Build.MANUFACTURER);
        Objects.requireNonNull(C2408t.m3591d().m3721m());
        hashMap.put("model", Build.MODEL);
        Objects.requireNonNull(C2408t.m3591d().m3721m());
        hashMap.put("osVersion", Build.VERSION.RELEASE);
        hashMap.put("carrierName", m3781d);
        hashMap.put("networkType", m3772b);
        hashMap.put("platform", "android");
        hashMap.put("appName", str);
        hashMap.put("appVersion", m3650u);
        hashMap.put("appBuildNumber", Integer.valueOf(i));
        hashMap.put("appId", "" + c2357l.f8367a);
        hashMap.put("apiLevel", Integer.valueOf(Build.VERSION.SDK_INT));
        Objects.requireNonNull(C2408t.m3591d().m3721m());
        hashMap.put("sdkVersion", "4.6.5");
        hashMap.put("controllerVersion", "unknown");
        hashMap.put("zoneIds", c2357l.f8369c);
        JSONObject m3628d = c2357l.m3628d();
        Objects.requireNonNull(m3628d);
        JSONObject m3627e = c2357l.m3627e();
        Objects.requireNonNull(m3627e);
        synchronized (m3628d) {
            optString = m3628d.optString("mediation_network");
        }
        if (!optString.equals("")) {
            synchronized (m3628d) {
                optString5 = m3628d.optString("mediation_network");
            }
            hashMap.put("mediationNetwork", optString5);
            synchronized (m3628d) {
                optString6 = m3628d.optString("mediation_network_version");
            }
            hashMap.put("mediationNetworkVersion", optString6);
        }
        synchronized (m3627e) {
            optString2 = m3627e.optString("plugin");
        }
        if (!optString2.equals("")) {
            synchronized (m3627e) {
                optString3 = m3627e.optString("plugin");
            }
            hashMap.put("plugin", optString3);
            synchronized (m3627e) {
                optString4 = m3627e.optString("plugin_version");
            }
            hashMap.put("pluginVersion", optString4);
        }
        C2279h0 m3718p = m3591d.m3718p();
        Objects.requireNonNull(m3718p);
        try {
            C2195d2 c2195d2 = new C2195d2(new C2277g4(new URL("https://wd.adcolony.com/logs")), Executors.newSingleThreadScheduledExecutor(), hashMap);
            m3718p.f8197d = c2195d2;
            TimeUnit timeUnit = TimeUnit.SECONDS;
            synchronized (c2195d2) {
                try {
                    if (!c2195d2.f8008b.isShutdown() && !c2195d2.f8008b.isTerminated()) {
                        c2195d2.f8008b.scheduleAtFixedRate(new RunnableC2189c2(c2195d2), 5L, 5L, timeUnit);
                    }
                } catch (RuntimeException e3) {
                }
            }
        } catch (MalformedURLException e4) {
            e4.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m3795c(AbstractC0081a abstractC0081a, String str) {
        if (abstractC0081a != null) {
            C2315i3.m3652s(new RunnableC2170b(abstractC0081a, str));
        }
    }

    /* renamed from: d */
    public static void m3794d(AbstractC2328k abstractC2328k, String str) {
        if (abstractC2328k != null) {
            C2315i3.m3652s(new RunnableC2171c(abstractC2328k, str));
        }
    }

    @SuppressLint({"ObsoleteSdkInt"})
    /* renamed from: e */
    public static boolean m3793e(Context context, C2357l c2357l, String str, String... strArr) {
        boolean z;
        boolean z2;
        boolean z3;
        if (C2464z1.m3527a(0, null)) {
            C0082b.m8750l(0, 1, "Cannot configure AdColony; configuration mechanism requires 5 seconds between attempts.", false);
            return false;
        }
        Context context2 = context;
        if (context == null) {
            context2 = C2408t.f8531a;
        }
        if (context2 == null) {
            C0082b.m8750l(0, 1, "Ignoring call to AdColony.configure() as the provided Activity or Application context is null and we do not currently hold a reference to either for our use.", false);
            return false;
        }
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        C2357l c2357l2 = c2357l;
        if (c2357l == null) {
            c2357l2 = new C2357l();
        }
        if (C2408t.m3589f() && !C2227e4.m3741l(C2408t.m3591d().m3715s().f8370d, "reconfigurable")) {
            C2230f1 m3591d = C2408t.m3591d();
            if (!m3591d.m3715s().f8367a.equals(str)) {
                C0082b.m8750l(0, 1, "Ignoring call to AdColony.configure() as the app id does not match what was used during the initial configuration.", false);
                return false;
            }
            String[] strArr2 = m3591d.m3715s().f8368b;
            ExecutorService executorService = C2315i3.f8262a;
            if (strArr == null || strArr2 == null || strArr.length != strArr2.length) {
                z3 = false;
            } else {
                Arrays.sort(strArr);
                Arrays.sort(strArr2);
                z3 = Arrays.equals(strArr, strArr2);
            }
            if (z3) {
                C0082b.m8750l(0, 1, "Ignoring call to AdColony.configure() as the same zone ids were used during the previous configuration.", false);
                return true;
            }
        }
        new SimpleDateFormat("HH:mm:ss:SSS", Locale.US).format(new Date(System.currentTimeMillis()));
        int i = 0;
        boolean z4 = true;
        while (true) {
            z = z4;
            if (i >= strArr.length) {
                break;
            }
            boolean z5 = z;
            if (strArr[i] != null) {
                z5 = z;
                if (!strArr[i].equals("")) {
                    z5 = false;
                }
            }
            i++;
            z4 = z5;
        }
        if (str.equals("") || z) {
            C0082b.m8750l(0, 0, "AdColony.configure() called with an empty app or zone id String.", false);
            return false;
        }
        C2408t.f8533c = true;
        c2357l2.m3631a(str);
        c2357l2.m3630b(strArr);
        C2408t.m3593b(context2, c2357l2, false);
        String str2 = C2408t.m3591d().m3732b().m3622b() + "/adc3/AppInfo";
        C2267f4 c2267f4 = new C2267f4();
        if (new File(str2).exists()) {
            c2267f4 = C2227e4.m3736q(str2);
        }
        C2267f4 c2267f42 = new C2267f4();
        if (c2267f4.m3697o("appId").equals(str)) {
            C2200d4 m3750c = C2227e4.m3750c(c2267f4, "zoneIds");
            for (String str3 : strArr) {
                synchronized (m3750c.f8025a) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= m3750c.f8025a.length()) {
                            z2 = false;
                            break;
                        } else if (m3750c.m3760e(i2).equals(str3)) {
                            z2 = true;
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
                if (!z2) {
                    m3750c.m3763b(str3);
                }
            }
            C2227e4.m3746g(c2267f42, "zoneIds", m3750c);
            C2227e4.m3744i(c2267f42, "appId", str);
        } else {
            C2200d4 c2200d4 = new C2200d4();
            for (String str4 : strArr) {
                c2200d4.m3763b(str4);
            }
            C2227e4.m3746g(c2267f42, "zoneIds", c2200d4);
            C2227e4.m3744i(c2267f42, "appId", str);
        }
        C2227e4.m3734s(c2267f42, str2);
        return true;
    }

    /* renamed from: f */
    public static boolean m3792f(Runnable runnable) {
        return C2315i3.m3658m(f7919a, runnable);
    }

    /* renamed from: g */
    public static C2267f4 m3791g(long j) {
        C2432w1 c2432w1;
        C2267f4 c2267f4 = new C2267f4();
        if (j > 0) {
            C2396r1 m3611c = C2396r1.m3611c();
            Objects.requireNonNull(m3611c);
            C2432w1[] c2432w1Arr = new C2432w1[1];
            CountDownLatch countDownLatch = new CountDownLatch(1);
            m3611c.m3612b(new C2391q1(m3611c, c2432w1Arr, countDownLatch), j);
            try {
                countDownLatch.await();
            } catch (InterruptedException e) {
            }
            c2432w1 = c2432w1Arr[0];
        } else {
            c2432w1 = C2396r1.m3611c().f8465c;
        }
        if (c2432w1 != null) {
            C2227e4.m3745h(c2267f4, "odt_payload", c2432w1.m3558a());
        }
        return c2267f4;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: h */
    public static boolean m3790h() {
        System.currentTimeMillis();
        long currentTimeMillis = System.currentTimeMillis();
        C2230f1 m3591d = C2408t.m3591d();
        while (!m3591d.f8066D) {
            ?? currentTimeMillis2 = (currentTimeMillis + 15000) - System.currentTimeMillis();
            char c = currentTimeMillis2;
            if (currentTimeMillis2 <= 0) {
                c = 0;
            }
            if (c == 0) {
                break;
            }
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e) {
            }
        }
        return m3591d.f8066D;
    }

    /* renamed from: i */
    public static boolean m3789i() {
        if (!C2408t.f8533c) {
            return false;
        }
        Context context = C2408t.f8531a;
        if (context != null && (context instanceof ActivityC2429w)) {
            ((Activity) context).finish();
        }
        C2230f1 m3591d = C2408t.m3591d();
        m3591d.m3722l().m3633f();
        m3591d.m3729e();
        C2315i3.m3652s(new RunnableC2172d(m3591d));
        C2408t.m3591d().f8065C = true;
        return true;
    }

    /* renamed from: j */
    public static boolean m3788j(String str, AbstractC2328k abstractC2328k, C2278h c2278h, C2268g c2268g) {
        if (abstractC2328k == null) {
            C0082b.m8750l(0, 1, C1676a.m4789h("AdColonyAdViewListener is set to null. ", "It is required to be non null."), false);
        }
        if (!C2408t.f8533c) {
            C0082b.m8750l(0, 1, C1676a.m4789h("Ignoring call to requestAdView as AdColony has not yet been", " configured."), false);
            m3794d(abstractC2328k, str);
            return false;
        } else if (c2278h.f8190b <= 0 || c2278h.f8189a <= 0) {
            C0082b.m8750l(0, 1, C1676a.m4789h("Ignoring call to requestAdView as you've provided an AdColonyAdSize", " object with an invalid width or height."), false);
            m3794d(abstractC2328k, str);
            return false;
        } else {
            Bundle bundle = new Bundle();
            bundle.putString(AppLovinUtils.ServerParameterKeys.ZONE_ID, str);
            if (C2464z1.m3527a(1, bundle)) {
                m3794d(abstractC2328k, str);
                return false;
            }
            C2315i3.C2318c c2318c = new C2315i3.C2318c(C2408t.m3591d().f8082T);
            C2173e c2173e = new C2173e(abstractC2328k, str, c2318c);
            C2315i3.m3660k(c2173e, c2318c.m3642b());
            if (m3792f(new RunnableC2174f(c2173e, str, abstractC2328k, c2278h, c2268g, c2318c))) {
                return true;
            }
            C2315i3.m3662i(c2173e);
            return false;
        }
    }

    /* renamed from: k */
    public static boolean m3787k(String str, AbstractC0081a abstractC0081a) {
        return m3786l(str, abstractC0081a, null);
    }

    /* renamed from: l */
    public static boolean m3786l(String str, AbstractC0081a abstractC0081a, C2268g c2268g) {
        if (abstractC0081a == null) {
            C0082b.m8750l(0, 1, C1676a.m4789h("AdColonyInterstitialListener is set to null. ", "It is required to be non null."), false);
        }
        if (!C2408t.f8533c) {
            C0082b.m8750l(0, 1, C1676a.m4789h("Ignoring call to AdColony.requestInterstitial as AdColony has not", " yet been configured."), false);
            m3795c(abstractC0081a, str);
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putString(AppLovinUtils.ServerParameterKeys.ZONE_ID, str);
        if (C2464z1.m3527a(1, bundle)) {
            m3795c(abstractC0081a, str);
            return false;
        }
        C2315i3.C2318c c2318c = new C2315i3.C2318c(C2408t.m3591d().f8082T);
        C2175g c2175g = new C2175g(abstractC0081a, str, c2318c);
        C2315i3.m3660k(c2175g, c2318c.m3642b());
        if (m3792f(new RunnableC2169a(c2175g, str, abstractC0081a, c2268g, c2318c))) {
            return true;
        }
        C2315i3.m3662i(c2175g);
        return false;
    }

    /* renamed from: m */
    public static boolean m3785m(AbstractC2394r abstractC2394r) {
        if (!C2408t.f8533c) {
            C0082b.m8750l(0, 1, "Ignoring call to AdColony.setRewardListener() as AdColony has not yet been configured.", false);
            return false;
        }
        C2408t.m3591d().f8101p = abstractC2394r;
        return true;
    }
}
