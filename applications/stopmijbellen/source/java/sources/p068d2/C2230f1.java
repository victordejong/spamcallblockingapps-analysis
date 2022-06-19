package p068d2;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.support.p012v4.media.C0082b;
import androidx.recyclerview.widget.C0608b;
import com.applovin.mediation.AppLovinUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.ads.C1676a;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.zip.CRC32;
import me.zhanghai.android.materialprogressbar.C3681R;
import p007a6.C0028d;
import p068d2.C2197d3;
import p068d2.C2325j3;
import p124i4.C3102d;
import p291y.C4951d;
/* renamed from: d2.f1 */
/* loaded from: classes-dex2jar.jar:d2/f1.class */
public class C2230f1 {

    /* renamed from: X */
    public static String f8061X = "https://adc3-launch.adcolony.com/v4/launch";

    /* renamed from: Y */
    public static volatile String f8062Y = "";

    /* renamed from: A */
    public boolean f8063A;

    /* renamed from: B */
    public boolean f8064B;

    /* renamed from: C */
    public boolean f8065C;

    /* renamed from: D */
    public boolean f8066D;

    /* renamed from: E */
    public boolean f8067E;

    /* renamed from: F */
    public boolean f8068F;

    /* renamed from: G */
    public boolean f8069G;

    /* renamed from: H */
    public boolean f8070H;

    /* renamed from: I */
    public boolean f8071I;

    /* renamed from: J */
    public boolean f8072J;

    /* renamed from: K */
    public boolean f8073K;

    /* renamed from: L */
    public int f8074L;

    /* renamed from: N */
    public Application.ActivityLifecycleCallbacks f8076N;

    /* renamed from: S */
    public boolean f8081S;

    /* renamed from: W */
    public int f8085W;

    /* renamed from: a */
    public C2417u0 f8086a;

    /* renamed from: b */
    public C2385p2 f8087b;

    /* renamed from: c */
    public C2272g2 f8088c;

    /* renamed from: d */
    public C2329k0 f8089d;

    /* renamed from: e */
    public C2204e2 f8090e;

    /* renamed from: f */
    public C2292h3 f8091f;

    /* renamed from: g */
    public C2210e3 f8092g;

    /* renamed from: h */
    public C2379o2 f8093h;

    /* renamed from: i */
    public C2279h0 f8094i;

    /* renamed from: j */
    public C2179b2 f8095j;

    /* renamed from: k */
    public C2194d1 f8096k;

    /* renamed from: l */
    public C2322j0 f8097l;

    /* renamed from: m */
    public C2325j3 f8098m;

    /* renamed from: n */
    public C2319j f8099n;

    /* renamed from: o */
    public C2387q f8100o;

    /* renamed from: p */
    public AbstractC2394r f8101p;

    /* renamed from: r */
    public C2357l f8103r;

    /* renamed from: s */
    public C2410t0 f8104s;

    /* renamed from: t */
    public C2267f4 f8105t;

    /* renamed from: w */
    public String f8108w;

    /* renamed from: x */
    public String f8109x;

    /* renamed from: y */
    public String f8110y;

    /* renamed from: q */
    public HashMap<String, AbstractC2367n> f8102q = new HashMap<>();

    /* renamed from: u */
    public HashMap<String, C2402s> f8106u = new HashMap<>();

    /* renamed from: v */
    public HashMap<Integer, C2441x3> f8107v = new HashMap<>();

    /* renamed from: z */
    public String f8111z = "";

    /* renamed from: M */
    public int f8075M = 1;

    /* renamed from: O */
    public C2362m f8077O = null;

    /* renamed from: P */
    public C2267f4 f8078P = new C2267f4();

    /* renamed from: Q */
    public long f8079Q = 500;

    /* renamed from: R */
    public long f8080R = 500;

    /* renamed from: T */
    public long f8082T = 20000;

    /* renamed from: U */
    public long f8083U = 300000;

    /* renamed from: V */
    public long f8084V = 15000;

    /* renamed from: d2.f1$a */
    /* loaded from: classes-dex2jar.jar:d2/f1$a.class */
    public class C2231a implements AbstractC2458y0 {
        public C2231a() {
            C2230f1.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2402s c2402s;
            C2230f1 c2230f1 = C2230f1.this;
            if (c2230f1.f8065C) {
                return;
            }
            String m3697o = c2410t0.f8537b.m3697o(AppLovinUtils.ServerParameterKeys.ZONE_ID);
            if (c2230f1.f8106u.containsKey(m3697o)) {
                c2402s = c2230f1.f8106u.get(m3697o);
            } else {
                c2402s = new C2402s(m3697o);
                c2230f1.f8106u.put(m3697o, c2402s);
            }
            Objects.requireNonNull(c2402s);
            C2267f4 c2267f4 = c2410t0.f8537b;
            C2267f4 m3700l = c2267f4.m3700l("reward");
            c2402s.f8514b = m3700l.m3697o("reward_name");
            c2402s.f8517e = C2227e4.m3735r(m3700l, "reward_amount");
            C2227e4.m3735r(m3700l, "views_per_reward");
            C2227e4.m3735r(m3700l, "views_until_reward");
            c2402s.f8519g = C2227e4.m3741l(c2267f4, "rewarded");
            C2227e4.m3735r(c2267f4, "status");
            c2402s.f8515c = C2227e4.m3735r(c2267f4, "type");
            c2402s.f8516d = C2227e4.m3735r(c2267f4, "play_interval");
            c2402s.f8513a = c2267f4.m3697o(AppLovinUtils.ServerParameterKeys.ZONE_ID);
        }
    }

    /* renamed from: d2.f1$b */
    /* loaded from: classes-dex2jar.jar:d2/f1$b.class */
    public class C2232b implements AbstractC2458y0 {
        public C2232b(C2230f1 c2230f1) {
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2267f4 c2267f4 = new C2267f4();
            String m3697o = c2410t0.f8537b.m3697o("data");
            ExecutorService executorService = C2315i3.f8262a;
            CRC32 crc32 = new CRC32();
            int length = m3697o.length();
            for (int i = 0; i < length; i++) {
                crc32.update(m3697o.charAt(i));
            }
            C2227e4.m3740m(c2267f4, "crc32", (int) crc32.getValue());
            c2410t0.m3587a(c2267f4).m3586b();
        }
    }

    /* renamed from: d2.f1$c */
    /* loaded from: classes-dex2jar.jar:d2/f1$c.class */
    public class C2233c implements AbstractC2458y0 {
        public C2233c() {
            C2230f1.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2230f1.this.m3724j(true, true);
        }
    }

    /* renamed from: d2.f1$d */
    /* loaded from: classes-dex2jar.jar:d2/f1$d.class */
    public class C2234d implements AbstractC2458y0 {
        public C2234d(C2230f1 c2230f1) {
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            int m3735r = C2227e4.m3735r(c2410t0.f8537b, "number");
            C2267f4 c2267f4 = new C2267f4();
            ExecutorService executorService = C2315i3.f8262a;
            C2200d4 c2200d4 = new C2200d4();
            for (int i = 0; i < m3735r; i++) {
                c2200d4.m3763b(C2315i3.m3666e());
            }
            C2227e4.m3746g(c2267f4, "uuids", c2200d4);
            c2410t0.m3587a(c2267f4).m3586b();
        }
    }

    /* renamed from: d2.f1$e */
    /* loaded from: classes-dex2jar.jar:d2/f1$e.class */
    public class C2235e implements AbstractC2458y0 {

        /* renamed from: d2.f1$e$a */
        /* loaded from: classes-dex2jar.jar:d2/f1$e$a.class */
        public class RunnableC2236a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Context f8115a;

            /* renamed from: b */
            public final /* synthetic */ C2410t0 f8116b;

            public RunnableC2236a(Context context, C2410t0 c2410t0) {
                C2235e.this = r4;
                this.f8115a = context;
                this.f8116b = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2230f1.this.m3725i(this.f8115a, this.f8116b);
            }
        }

        public C2235e() {
            C2230f1.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            Context context = C2408t.f8531a;
            if (context == null || C2315i3.m3661j(new RunnableC2236a(context, c2410t0))) {
                return;
            }
            C0082b.m8750l(0, 0, C0608b.m7626i("Executing ADCController.configure queryAdvertisingId failed"), true);
        }
    }

    /* renamed from: d2.f1$f */
    /* loaded from: classes-dex2jar.jar:d2/f1$f.class */
    public class C2237f implements AbstractC2458y0 {
        public C2237f(C2230f1 c2230f1) {
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3744i(c2267f4, "sha1", C2315i3.m3654q(c2410t0.f8537b.m3697o("data")));
            c2410t0.m3587a(c2267f4).m3586b();
        }
    }

    /* renamed from: d2.f1$g */
    /* loaded from: classes-dex2jar.jar:d2/f1$g.class */
    public class C2238g implements AbstractC2458y0 {
        public C2238g() {
            C2230f1.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2195d2 c2195d2 = C2230f1.this.m3718p().f8197d;
            C2230f1.this.m3721m().f7954g = c2410t0.f8537b.m3697o("version");
            if (c2195d2 != null) {
                String str = C2230f1.this.m3721m().f7954g;
                synchronized (c2195d2) {
                    c2195d2.f8011e.put("controllerVersion", str);
                }
            }
        }
    }

    /* renamed from: d2.f1$h */
    /* loaded from: classes-dex2jar.jar:d2/f1$h.class */
    public class C2239h implements AbstractC2458y0 {
        public C2239h() {
            C2230f1.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2230f1.this.f8078P = c2410t0.f8537b.m3700l("signals");
        }
    }

    /* renamed from: d2.f1$i */
    /* loaded from: classes-dex2jar.jar:d2/f1$i.class */
    public class C2240i implements AbstractC2458y0 {

        /* renamed from: d2.f1$i$a */
        /* loaded from: classes-dex2jar.jar:d2/f1$i$a.class */
        public class C2241a implements AbstractC2161a<C2432w1> {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8121a;

            public C2241a(C2240i c2240i, C2410t0 c2410t0) {
                this.f8121a = c2410t0;
            }

            @Override // p068d2.AbstractC2161a
            public void accept(C2432w1 c2432w1) {
                C2432w1 c2432w12 = c2432w1;
                C2267f4 c2267f4 = new C2267f4();
                if (c2432w12 != null) {
                    C2227e4.m3745h(c2267f4, "odt", c2432w12.m3558a());
                }
                this.f8121a.m3587a(c2267f4).m3586b();
            }
        }

        public C2240i() {
            C2230f1.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            if (C2230f1.this.f8081S) {
                C2396r1.m3611c().m3612b(new C2241a(this, c2410t0), C2230f1.this.f8080R);
                return;
            }
            C2432w1 c2432w1 = C2396r1.m3611c().f8465c;
            C2267f4 c2267f4 = new C2267f4();
            if (c2432w1 != null) {
                C2227e4.m3745h(c2267f4, "odt", c2432w1.m3558a());
            }
            c2410t0.m3587a(c2267f4).m3586b();
        }
    }

    /* renamed from: d2.f1$j */
    /* loaded from: classes-dex2jar.jar:d2/f1$j.class */
    public class C2242j implements AbstractC2458y0 {
        public C2242j(C2230f1 c2230f1) {
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2396r1 m3611c = C2396r1.m3611c();
            m3611c.m3612b(new C3102d(m3611c), -1L);
        }
    }

    /* renamed from: d2.f1$k */
    /* loaded from: classes-dex2jar.jar:d2/f1$k.class */
    public class C2243k implements AbstractC2458y0 {
        public C2243k() {
            C2230f1.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2325j3 c2325j3 = C2230f1.this.f8098m;
            Objects.requireNonNull(c2325j3);
            if (!C2408t.m3589f() || c2325j3.f8319a) {
                return;
            }
            c2325j3.f8322d = new C2325j3.C2327b(c2410t0.f8537b, null);
            Runnable runnable = c2325j3.f8321c;
            if (runnable != null) {
                C2315i3.m3649v(runnable);
                C2315i3.m3652s(c2325j3.f8321c);
                return;
            }
            C2315i3.m3649v(c2325j3.f8320b);
            C2315i3.m3660k(c2325j3.f8320b, C2408t.m3591d().f8083U);
        }
    }

    /* renamed from: d2.f1$l */
    /* loaded from: classes-dex2jar.jar:d2/f1$l.class */
    public class RunnableC2244l implements Runnable {
        public RunnableC2244l() {
            C2230f1.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Context context = C2408t.f8531a;
            if (!C2230f1.this.f8073K && context != null) {
                try {
                    C4951d.m200c(context.getApplicationContext());
                    C2230f1.this.f8073K = true;
                } catch (IllegalArgumentException e) {
                    C0082b.m8750l(0, 0, "IllegalArgumentException when activating Omid", true);
                    C2230f1.this.f8073K = false;
                }
            }
            C2230f1 c2230f1 = C2230f1.this;
            if (!c2230f1.f8073K || c2230f1.f8077O != null) {
                return;
            }
            try {
                C3102d.m2637b("AdColony", "Name is null or empty");
                C3102d.m2637b("4.6.5", "Version is null or empty");
                c2230f1.f8077O = new C2362m("AdColony", "4.6.5", 1);
            } catch (IllegalArgumentException e2) {
                C0082b.m8750l(0, 0, "IllegalArgumentException when creating Omid Partner", true);
                C2230f1.this.f8073K = false;
            }
        }
    }

    /* renamed from: d2.f1$m */
    /* loaded from: classes-dex2jar.jar:d2/f1$m.class */
    public class C2245m implements C2197d3.AbstractC2199b {
        public C2245m(C2230f1 c2230f1) {
        }
    }

    /* renamed from: d2.f1$n */
    /* loaded from: classes-dex2jar.jar:d2/f1$n.class */
    public class RunnableC2246n implements Runnable {

        /* renamed from: d2.f1$n$a */
        /* loaded from: classes-dex2jar.jar:d2/f1$n$a.class */
        public class RunnableC2247a implements Runnable {
            public RunnableC2247a() {
                RunnableC2246n.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C2408t.m3591d().m3733a().f8172f) {
                    C2230f1 c2230f1 = C2230f1.this;
                    Objects.requireNonNull(c2230f1);
                    new Thread(new RunnableC2270g1(c2230f1)).start();
                }
            }
        }

        public RunnableC2246n() {
            C2230f1.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            new Handler().postDelayed(new RunnableC2247a(), C2230f1.this.f8075M * 1000);
        }
    }

    /* renamed from: d2.f1$o */
    /* loaded from: classes-dex2jar.jar:d2/f1$o.class */
    public class RunnableC2248o implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2441x3 f8126a;

        public RunnableC2248o(C2230f1 c2230f1, C2441x3 c2441x3) {
            this.f8126a = c2441x3;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2441x3 c2441x3 = this.f8126a;
            if (c2441x3 == null || !c2441x3.f8628A) {
                return;
            }
            c2441x3.loadUrl("about:blank");
            this.f8126a.clearCache(true);
            this.f8126a.removeAllViews();
            C2441x3 c2441x32 = this.f8126a;
            c2441x32.f8630C = true;
            c2441x32.destroy();
        }
    }

    /* renamed from: d2.f1$p */
    /* loaded from: classes-dex2jar.jar:d2/f1$p.class */
    public class C2249p implements AbstractC2161a<C2374o1> {
        public C2249p(C2230f1 c2230f1) {
        }

        @Override // p068d2.AbstractC2161a
        public void accept(C2374o1 c2374o1) {
            C2396r1.m3611c().f8463a = c2374o1;
        }
    }

    /* renamed from: d2.f1$q */
    /* loaded from: classes-dex2jar.jar:d2/f1$q.class */
    public class C2250q implements AbstractC2458y0 {
        public C2250q() {
            C2230f1.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            int optInt;
            C2230f1 c2230f1 = C2230f1.this;
            Objects.requireNonNull(c2230f1);
            Context context = C2408t.f8531a;
            if (context == null) {
                return;
            }
            try {
                C2267f4 c2267f4 = c2410t0.f8537b;
                synchronized (c2267f4.f8159a) {
                    optInt = c2267f4.f8159a.optInt(FacebookAdapter.KEY_ID);
                }
                int i = optInt;
                if (optInt <= 0) {
                    i = c2230f1.f8086a.m3573g();
                }
                c2230f1.m3726h(i);
                C2315i3.m3652s(new RunnableC2289h1(c2230f1, context, C2227e4.m3741l(c2410t0.f8537b, "is_display_module"), c2410t0));
            } catch (RuntimeException e) {
                StringBuilder sb = new StringBuilder();
                sb.append(e.toString() + ": during WebView initialization.");
                sb.append(" Disabling AdColony.");
                C2408t.m3591d().m3718p().m3686e(0, 0, sb.toString(), false);
                C2168b.m3789i();
            }
        }
    }

    /* renamed from: d2.f1$r */
    /* loaded from: classes-dex2jar.jar:d2/f1$r.class */
    public class C2251r implements AbstractC2458y0 {
        public C2251r() {
            C2230f1.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2230f1 c2230f1 = C2230f1.this;
            Objects.requireNonNull(c2230f1);
            c2230f1.m3726h(C2227e4.m3735r(c2410t0.f8537b, FacebookAdapter.KEY_ID));
        }
    }

    /* renamed from: d2.f1$s */
    /* loaded from: classes-dex2jar.jar:d2/f1$s.class */
    public class C2252s implements AbstractC2458y0 {
        public C2252s() {
            C2230f1.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            double optDouble;
            C2195d2 c2195d2 = C2230f1.this.m3718p().f8197d;
            C2230f1 c2230f1 = C2230f1.this;
            c2230f1.f8066D = true;
            if (c2230f1.f8071I) {
                C2267f4 c2267f4 = new C2267f4();
                C2267f4 c2267f42 = new C2267f4();
                C2227e4.m3744i(c2267f42, "app_version", C2315i3.m3650u());
                C2227e4.m3745h(c2267f4, "app_bundle_info", c2267f42);
                new C2410t0("AdColony.on_update", 1, c2267f4).m3586b();
                C2230f1.this.f8071I = false;
            }
            if (C2230f1.this.f8072J) {
                new C2410t0("AdColony.on_install", 1).m3586b();
            }
            C2267f4 c2267f43 = c2410t0.f8537b;
            if (c2195d2 != null) {
                String m3697o = c2267f43.m3697o("app_session_id");
                synchronized (c2195d2) {
                    c2195d2.f8011e.put("sessionId", m3697o);
                }
            }
            if (C2372o.m3626a()) {
                C2372o.m3625b();
            }
            Integer m3702j = c2267f43.m3702j("base_download_threads");
            if (m3702j != null) {
                C2385p2 c2385p2 = C2230f1.this.f8087b;
                c2385p2.f8431b = m3702j.intValue();
                int corePoolSize = c2385p2.f8434e.getCorePoolSize();
                int i = c2385p2.f8431b;
                if (corePoolSize < i) {
                    c2385p2.f8434e.setCorePoolSize(i);
                }
            }
            Integer m3702j2 = c2267f43.m3702j("concurrent_requests");
            if (m3702j2 != null) {
                C2385p2 c2385p22 = C2230f1.this.f8087b;
                c2385p22.f8432c = m3702j2.intValue();
                int corePoolSize2 = c2385p22.f8434e.getCorePoolSize();
                int i2 = c2385p22.f8432c;
                if (corePoolSize2 > i2) {
                    c2385p22.f8434e.setCorePoolSize(i2);
                }
            }
            Integer m3702j3 = c2267f43.m3702j("threads_keep_alive_time");
            if (m3702j3 != null) {
                C2230f1.this.f8087b.f8434e.setKeepAliveTime(m3702j3.intValue(), TimeUnit.SECONDS);
            }
            synchronized (c2267f43.f8159a) {
                optDouble = c2267f43.f8159a.optDouble("thread_pool_scaling_factor");
            }
            if (!Double.isNaN(optDouble)) {
                C2230f1.this.f8087b.f8433d = optDouble;
            }
            C2325j3 c2325j3 = C2230f1.this.f8098m;
            c2325j3.f8319a = true;
            C2315i3.m3649v(c2325j3.f8320b);
            C2315i3.m3649v(c2325j3.f8321c);
            c2325j3.f8321c = null;
            c2325j3.f8319a = false;
            C2315i3.m3660k(c2325j3.f8320b, C2408t.m3591d().f8083U);
            C2230f1 c2230f12 = C2230f1.this;
            Objects.requireNonNull(c2230f12);
            C2267f4 c2267f44 = new C2267f4();
            C2227e4.m3744i(c2267f44, "type", "AdColony.on_configuration_completed");
            C2200d4 c2200d4 = new C2200d4();
            for (String str : c2230f12.f8106u.keySet()) {
                c2200d4.m3763b(str);
            }
            C2267f4 c2267f45 = new C2267f4();
            C2227e4.m3746g(c2267f45, "zone_ids", c2200d4);
            C2227e4.m3745h(c2267f44, "message", c2267f45);
            new C2410t0("CustomMessage.controller_send", 0, c2267f44).m3586b();
        }
    }

    /* renamed from: d2.f1$t */
    /* loaded from: classes-dex2jar.jar:d2/f1$t.class */
    public class C2253t implements AbstractC2458y0 {
        public C2253t() {
            C2230f1.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2230f1 c2230f1 = C2230f1.this;
            C2357l c2357l = c2230f1.f8103r;
            C2267f4 c2267f4 = c2357l.f8370d;
            C2227e4.m3744i(c2267f4, "app_id", c2357l.f8367a);
            C2227e4.m3746g(c2267f4, "zone_ids", c2230f1.f8103r.f8369c);
            C2267f4 c2267f42 = new C2267f4();
            C2227e4.m3745h(c2267f42, "options", c2267f4);
            c2410t0.m3587a(c2267f42).m3586b();
        }
    }

    /* renamed from: d2.f1$u */
    /* loaded from: classes-dex2jar.jar:d2/f1$u.class */
    public class C2254u implements AbstractC2458y0 {
        public C2254u() {
            C2230f1.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2230f1 c2230f1 = C2230f1.this;
            if (c2230f1.f8101p != null) {
                C2315i3.m3652s(new RunnableC2364m1(c2230f1, c2410t0));
            }
        }
    }

    /* renamed from: a */
    public C2272g2 m3733a() {
        if (this.f8088c == null) {
            C2272g2 c2272g2 = new C2272g2();
            this.f8088c = c2272g2;
            C2408t.m3592c("SessionInfo.stopped", new C2255f2(c2272g2));
            c2272g2.f8177k = new C2355k2(c2272g2);
        }
        return this.f8088c;
    }

    /* renamed from: b */
    public C2379o2 m3732b() {
        if (this.f8093h == null) {
            C2379o2 c2379o2 = new C2379o2();
            this.f8093h = c2379o2;
            c2379o2.m3623a();
        }
        return this.f8093h;
    }

    /* renamed from: c */
    public C2210e3 m3731c() {
        if (this.f8092g == null) {
            C2210e3 c2210e3 = new C2210e3();
            this.f8092g = c2210e3;
            c2210e3.m3758a();
        }
        return this.f8092g;
    }

    /* renamed from: d */
    public void m3730d() {
        this.f8066D = false;
        this.f8089d.m3633f();
        Object m3698n = this.f8103r.f8370d.m3698n("force_ad_id");
        Boolean bool = m3698n;
        if (m3698n == null) {
            bool = Boolean.FALSE;
        }
        if ((bool instanceof String) && !((String) bool).isEmpty()) {
            m3729e();
        }
        C2168b.m3796b(C2408t.f8531a, this.f8103r);
        m3726h(1);
        this.f8106u.clear();
        this.f8086a.m3578b();
    }

    /* renamed from: e */
    public void m3729e() {
        synchronized (this.f8089d.f8330c) {
            for (C2387q c2387q : this.f8089d.f8330c.values()) {
                c2387q.m3615c();
            }
            this.f8089d.f8330c.clear();
        }
    }

    /* renamed from: f */
    public final void m3728f() {
        if (!C2408t.m3591d().m3733a().f8172f) {
            C0082b.m8750l(0, 1, C1676a.m4789h("Max launch server download attempts hit, or AdColony is no longer", " active."), true);
            return;
        }
        int i = this.f8074L + 1;
        this.f8074L = i;
        this.f8075M = Math.min(this.f8075M * i, (int) C3681R.styleable.AppCompatTheme_windowFixedHeightMajor);
        C2315i3.m3652s(new RunnableC2246n());
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x042b  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0438  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x043e  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3727g(p068d2.C2357l r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 1110
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p068d2.C2230f1.m3727g(d2.l, boolean):void");
    }

    /* renamed from: h */
    public boolean m3726h(int i) {
        AbstractC2463z0 m3579a = this.f8086a.m3579a(i);
        C2441x3 remove = this.f8107v.remove(Integer.valueOf(i));
        if (m3579a == null) {
            return false;
        }
        boolean z = false;
        if (remove != null) {
            z = false;
            if (remove.f8633F) {
                z = true;
            }
        }
        RunnableC2248o runnableC2248o = new RunnableC2248o(this, remove);
        if (!z) {
            runnableC2248o.run();
            return true;
        }
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        new Handler().postDelayed(runnableC2248o, 1000L);
        return true;
    }

    /* renamed from: i */
    public boolean m3725i(Context context, C2410t0 c2410t0) {
        boolean z;
        String str;
        if (context == null) {
            return false;
        }
        String str2 = "";
        AdvertisingIdClient.Info info = null;
        C2195d2 c2195d2 = m3718p().f8197d;
        try {
            info = AdvertisingIdClient.getAdvertisingIdInfo(context);
        } catch (Exception e) {
            e.printStackTrace();
            if (!Build.MANUFACTURER.equals("Amazon")) {
                C0082b.m8750l(0, 1, "Advertising ID is not available. Collecting Android ID instead of Advertising ID.", false);
                return false;
            }
            Objects.requireNonNull(m3721m());
            Context context2 = C2408t.f8531a;
            str = context2 == null ? "" : Settings.Secure.getString(context2.getContentResolver(), "advertising_id");
            Objects.requireNonNull(m3721m());
            Context context3 = C2408t.f8531a;
            if (context3 == null) {
                str2 = str;
            } else {
                try {
                    str2 = str;
                    if (Settings.Secure.getInt(context3.getContentResolver(), "limit_ad_tracking") != 0) {
                        z = true;
                        info = null;
                    }
                } catch (Settings.SettingNotFoundException e2) {
                    str2 = str;
                }
            }
        } catch (NoClassDefFoundError e3) {
            C0082b.m8750l(0, 1, "Google Play Services ads dependencies are missing. Collecting Android ID instead of Advertising ID.", false);
            return false;
        } catch (NoSuchMethodError e4) {
            C0082b.m8750l(0, 1, "Google Play Services is out of date, please update to GPS 4.0+. Collecting Android ID instead of Advertising ID.", false);
        }
        z = false;
        str = str2;
        String str3 = Build.MANUFACTURER;
        if (!str3.equals("Amazon") && info == null) {
            return false;
        }
        if (!str3.equals("Amazon")) {
            str = info.getId();
            z = info.isLimitAdTrackingEnabled();
        }
        m3721m().f7948a = str;
        if (c2195d2 != null) {
            c2195d2.f8011e.put("advertisingId", m3721m().f7948a);
        }
        m3721m().f7950c = z;
        C2437x0 c2437x0 = m3721m().f7949b;
        synchronized (c2437x0) {
            c2437x0.f8620a = true;
            c2437x0.notifyAll();
        }
        if (c2410t0 == null) {
            return true;
        }
        C2267f4 c2267f4 = new C2267f4();
        C2227e4.m3744i(c2267f4, "advertiser_id", m3721m().f7948a);
        C0028d.m8912h(c2267f4, "limit_ad_tracking", m3721m().f7950c, c2410t0, c2267f4);
        return true;
    }

    /* renamed from: j */
    public final boolean m3724j(boolean z, boolean z2) {
        if (!C2408t.m3590e()) {
            return false;
        }
        this.f8070H = z2;
        this.f8068F = z;
        if (z && !z2) {
            this.f8086a.m3578b();
        }
        new Thread(new RunnableC2270g1(this)).start();
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* renamed from: k */
    public final void m3723k(C2267f4 c2267f4) {
        int m3735r;
        boolean optBoolean;
        if (!C2441x3.f8627R) {
            C2267f4 m3700l = c2267f4.m3700l("logging");
            C2279h0.f8193g = C2227e4.m3752a(m3700l, "send_level", 1);
            C2279h0.f8191e = C2227e4.m3741l(m3700l, "log_private");
            C2279h0.f8192f = C2227e4.m3752a(m3700l, "print_level", 3);
            C2279h0 c2279h0 = this.f8094i;
            C2200d4 m3750c = C2227e4.m3750c(m3700l, "modules");
            Objects.requireNonNull(c2279h0);
            C2267f4 c2267f42 = new C2267f4();
            for (int i = 0; i < m3750c.m3762c(); i++) {
                C2267f4 m3761d = m3750c.m3761d(i);
                C2227e4.m3745h(c2267f42, Integer.toString(C2227e4.m3735r(m3761d, FacebookAdapter.KEY_ID)), m3761d);
            }
            c2279h0.f8194a = c2267f42;
        }
        C2267f4 m3700l2 = c2267f4.m3700l("metadata");
        m3721m().f7951d = m3700l2;
        C2272g2 m3733a = m3733a();
        m3733a.f8167a = C2227e4.m3735r(m3700l2, "session_timeout") <= 0 ? m3733a.f8167a : m3735r * 1000;
        f8062Y = c2267f4.m3697o("pie");
        this.f8111z = c2267f4.m3700l("controller").m3697o("version");
        this.f8079Q = C2227e4.m3751b(m3700l2, "signals_timeout", this.f8079Q);
        this.f8080R = C2227e4.m3751b(m3700l2, "calculate_odt_timeout", this.f8080R);
        boolean z = this.f8081S;
        synchronized (m3700l2.f8159a) {
            optBoolean = m3700l2.f8159a.optBoolean("async_odt_query", z);
        }
        this.f8081S = optBoolean;
        this.f8082T = C2227e4.m3751b(m3700l2, "ad_request_timeout", this.f8082T);
        this.f8083U = C2227e4.m3751b(m3700l2, "controller_heartbeat_interval", this.f8083U);
        this.f8084V = C2227e4.m3751b(m3700l2, "controller_heartbeat_timeout", this.f8084V);
        C2197d3 m3765d = C2197d3.m3765d();
        C2267f4 m3699m = m3700l2.m3699m("odt_config");
        C2249p c2249p = new C2249p(this);
        Objects.requireNonNull(m3765d);
        Context applicationContext = C2408t.m3590e() ? C2408t.f8531a.getApplicationContext() : null;
        if (applicationContext == null || m3699m == null) {
            return;
        }
        try {
            m3765d.f8017a.execute(new RunnableC2190c3(m3765d, m3699m, c2249p, applicationContext));
        } catch (RejectedExecutionException e) {
            StringBuilder sb = new StringBuilder();
            StringBuilder m8752j = C0082b.m8752j("ADCEventsRepository.open failed with: ");
            m8752j.append(e.toString());
            sb.append(m8752j.toString());
            C0082b.m8750l(0, 0, sb.toString(), true);
        }
    }

    /* renamed from: l */
    public C2329k0 m3722l() {
        if (this.f8089d == null) {
            C2329k0 c2329k0 = new C2329k0();
            this.f8089d = c2329k0;
            c2329k0.m3632g();
        }
        return this.f8089d;
    }

    /* renamed from: m */
    public C2179b2 m3721m() {
        if (this.f8095j == null) {
            C2179b2 c2179b2 = new C2179b2();
            this.f8095j = c2179b2;
            c2179b2.m3784a();
        }
        return this.f8095j;
    }

    /* renamed from: n */
    public C2204e2 m3720n() {
        if (this.f8090e == null) {
            this.f8090e = new C2204e2();
        }
        return this.f8090e;
    }

    /* renamed from: o */
    public C2292h3 m3719o() {
        if (this.f8091f == null) {
            C2292h3 c2292h3 = new C2292h3();
            this.f8091f = c2292h3;
            c2292h3.m3677f();
        }
        return this.f8091f;
    }

    /* renamed from: p */
    public C2279h0 m3718p() {
        if (this.f8094i == null) {
            C2279h0 c2279h0 = new C2279h0();
            this.f8094i = c2279h0;
            c2279h0.m3687d();
        }
        return this.f8094i;
    }

    /* renamed from: q */
    public C2417u0 m3717q() {
        if (this.f8086a == null) {
            C2417u0 c2417u0 = new C2417u0();
            this.f8086a = c2417u0;
            c2417u0.m3578b();
        }
        return this.f8086a;
    }

    /* renamed from: r */
    public C2194d1 m3716r() {
        if (this.f8096k == null) {
            this.f8096k = new C2194d1();
        }
        return this.f8096k;
    }

    /* renamed from: s */
    public C2357l m3715s() {
        if (this.f8103r == null) {
            this.f8103r = new C2357l();
        }
        return this.f8103r;
    }
}
