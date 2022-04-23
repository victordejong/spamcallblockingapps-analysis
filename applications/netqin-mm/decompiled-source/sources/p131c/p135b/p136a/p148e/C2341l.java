package p131c.p135b.p136a.p148e;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.C7054e;
import com.applovin.impl.sdk.EventServiceImpl;
import com.applovin.impl.sdk.NativeAdServiceImpl;
import com.applovin.impl.sdk.SdkConfigurationImpl;
import com.applovin.impl.sdk.UserServiceImpl;
import com.applovin.impl.sdk.VariableServiceImpl;
import com.applovin.impl.sdk.network.C7057c;
import com.applovin.impl.sdk.network.PostbackServiceImpl;
import com.applovin.impl.sdk.p490c.C7042c;
import com.applovin.impl.sdk.p491d.C7048s;
import com.applovin.sdk.AppLovinEventService;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinUserService;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
import p131c.p135b.p136a.p143d.C2117a;
import p131c.p135b.p136a.p143d.C2135c;
import p131c.p135b.p136a.p143d.C2176i;
import p131c.p135b.p136a.p143d.C2177j;
import p131c.p135b.p136a.p143d.C2214l;
import p131c.p135b.p136a.p143d.C2220m;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.p150c.C2247c;
import p131c.p135b.p136a.p148e.p151e.C2264e;
import p131c.p135b.p136a.p148e.p151e.C2267f;
import p131c.p135b.p136a.p148e.p151e.C2268g;
import p131c.p135b.p136a.p148e.p152q.C2356a;
import p131c.p135b.p136a.p148e.p152q.C2363d;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2389h;
import p131c.p135b.p136a.p148e.p153y.C2390i;
import p131c.p135b.p136a.p148e.p153y.C2421n;
import p131c.p135b.p136a.p148e.p153y.C2425q;
/* renamed from: c.b.a.e.l */
/* loaded from: classes-dex2jar.jar:c/b/a/e/l.class */
public class C2341l {

    /* renamed from: b0 */
    public static Context f9023b0;

    /* renamed from: A */
    public C2240b f9024A;

    /* renamed from: B */
    public C2371s f9025B;

    /* renamed from: C */
    public C2380x f9026C;

    /* renamed from: D */
    public C7057c f9027D;

    /* renamed from: E */
    public C2327h f9028E;

    /* renamed from: F */
    public C2421n f9029F;

    /* renamed from: G */
    public C7054e f9030G;

    /* renamed from: H */
    public C2352n f9031H;

    /* renamed from: I */
    public PostbackServiceImpl f9032I;

    /* renamed from: J */
    public C2363d f9033J;

    /* renamed from: K */
    public C2177j f9034K;

    /* renamed from: L */
    public C2176i f9035L;

    /* renamed from: M */
    public MediationServiceImpl f9036M;

    /* renamed from: N */
    public C2220m f9037N;

    /* renamed from: O */
    public C2117a.C2119b f9038O;

    /* renamed from: P */
    public C2214l f9039P;

    /* renamed from: Q */
    public final Object f9040Q = new Object();

    /* renamed from: R */
    public final AtomicBoolean f9041R = new AtomicBoolean(true);

    /* renamed from: S */
    public boolean f9042S = false;

    /* renamed from: T */
    public boolean f9043T = false;

    /* renamed from: U */
    public boolean f9044U = false;

    /* renamed from: V */
    public boolean f9045V = false;

    /* renamed from: W */
    public boolean f9046W = false;

    /* renamed from: X */
    public boolean f9047X = false;

    /* renamed from: Y */
    public AppLovinSdk.SdkInitializationListener f9048Y;

    /* renamed from: Z */
    public AppLovinSdk.SdkInitializationListener f9049Z;

    /* renamed from: a */
    public String f9050a;

    /* renamed from: a0 */
    public AppLovinSdkConfiguration f9051a0;

    /* renamed from: b */
    public WeakReference<Activity> f9052b;

    /* renamed from: c */
    public long f9053c;

    /* renamed from: d */
    public AppLovinSdkSettings f9054d;

    /* renamed from: e */
    public AppLovinAdServiceImpl f9055e;

    /* renamed from: f */
    public NativeAdServiceImpl f9056f;

    /* renamed from: g */
    public EventServiceImpl f9057g;

    /* renamed from: h */
    public UserServiceImpl f9058h;

    /* renamed from: i */
    public VariableServiceImpl f9059i;

    /* renamed from: j */
    public AppLovinSdk f9060j;

    /* renamed from: k */
    public C2374t f9061k;

    /* renamed from: l */
    public C7048s f9062l;

    /* renamed from: m */
    public C2251d.C2257f f9063m;

    /* renamed from: n */
    public C2356a f9064n;

    /* renamed from: o */
    public C2268g f9065o;

    /* renamed from: p */
    public C2345m f9066p;

    /* renamed from: q */
    public C2251d.C2259h f9067q;

    /* renamed from: r */
    public C2264e f9068r;

    /* renamed from: s */
    public C2335k f9069s;

    /* renamed from: t */
    public C2425q f9070t;

    /* renamed from: u */
    public C2269f f9071u;

    /* renamed from: v */
    public C2375u f9072v;

    /* renamed from: w */
    public C2370r f9073w;

    /* renamed from: x */
    public C2247c f9074x;

    /* renamed from: y */
    public C7042c f9075y;

    /* renamed from: z */
    public C2433z f9076z;

    /* renamed from: c.b.a.e.l$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/l$a.class */
    public class RunnableC2342a implements Runnable {
        public RunnableC2342a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C2341l.this.f9062l.m18828a()) {
                C2341l.this.f9061k.m30044b(AppLovinSdk.TAG, "Timing out adapters init...");
                C2341l.this.f9062l.m18812e();
                C2341l.this.m30308N();
            }
        }
    }

    /* renamed from: c.b.a.e.l$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/l$b.class */
    public class RunnableC2343b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinSdk.SdkInitializationListener f9078a;

        public RunnableC2343b(AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
            this.f9078a = sdkInitializationListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2341l.this.f9061k.m30044b(AppLovinSdk.TAG, "Calling back publisher's initialization completion handler...");
            this.f9078a.onSdkInitialized(C2341l.this.f9051a0);
        }
    }

    /* renamed from: c.b.a.e.l$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/l$c.class */
    public class C2344c implements C7057c.AbstractC7058a {
        public C2344c() {
        }

        @Override // com.applovin.impl.sdk.network.C7057c.AbstractC7058a
        /* renamed from: a */
        public void mo18800a() {
            C2341l.this.f9061k.m30042c(AppLovinSdk.TAG, "Connected to internet - re-initializing SDK");
            synchronized (C2341l.this.f9040Q) {
                if (!C2341l.this.f9042S) {
                    C2341l.this.m30312J();
                }
            }
            C2341l.this.f9027D.m18801b(this);
        }

        @Override // com.applovin.impl.sdk.network.C7057c.AbstractC7058a
        /* renamed from: b */
        public void mo18799b() {
        }
    }

    /* renamed from: i0 */
    public static Context m30250i0() {
        return f9023b0;
    }

    /* renamed from: A */
    public C2380x m30321A() {
        return this.f9026C;
    }

    /* renamed from: B */
    public C2327h m30320B() {
        return this.f9028E;
    }

    /* renamed from: C */
    public C2421n m30319C() {
        return this.f9029F;
    }

    /* renamed from: D */
    public C7054e m30318D() {
        return this.f9030G;
    }

    /* renamed from: E */
    public AppLovinBroadcastManager m30317E() {
        return AppLovinBroadcastManager.getInstance(f9023b0);
    }

    /* renamed from: F */
    public C2352n m30316F() {
        return this.f9031H;
    }

    /* renamed from: G */
    public Activity m30315G() {
        Activity e = m30261e();
        if (e != null) {
            return e;
        }
        Activity a = m30234y().m30676a();
        if (a != null) {
            return a;
        }
        return null;
    }

    /* renamed from: H */
    public boolean m30314H() {
        return this.f9047X;
    }

    /* renamed from: I */
    public final void m30313I() {
        this.f9027D.m18802a(new C2344c());
    }

    /* renamed from: J */
    public void m30312J() {
        synchronized (this.f9040Q) {
            this.f9042S = true;
            m30249j().m18813d();
            m30249j().m18826a(new C2270g.C2312s(this), C7048s.EnumC7049a.MAIN);
        }
    }

    /* renamed from: K */
    public boolean m30311K() {
        boolean z;
        synchronized (this.f9040Q) {
            z = this.f9042S;
        }
        return z;
    }

    /* renamed from: L */
    public boolean m30310L() {
        boolean z;
        synchronized (this.f9040Q) {
            z = this.f9043T;
        }
        return z;
    }

    /* renamed from: M */
    public boolean m30309M() {
        return "HSrCHRtOan6wp2kwOIGJC1RDtuSrF2mWVbio2aBcMHX9KF3iTJ1lLSzCKP1ZSo5yNolPNw1kCTtWpxELFF4ah1".equalsIgnoreCase(m30269b0());
    }

    /* renamed from: N */
    public void m30308N() {
        AppLovinSdk.SdkInitializationListener sdkInitializationListener = this.f9048Y;
        if (sdkInitializationListener != null) {
            if (m30310L()) {
                this.f9048Y = null;
                this.f9049Z = null;
            } else if (this.f9049Z != sdkInitializationListener) {
                if (((Boolean) m30291a(C2251d.C2256e.f8747t)).booleanValue()) {
                    this.f9048Y = null;
                } else {
                    this.f9049Z = sdkInitializationListener;
                }
            } else {
                return;
            }
            AppLovinSdkUtils.runOnUiThreadDelayed(new RunnableC2343b(sdkInitializationListener), Math.max(0L, ((Long) m30291a(C2251d.C2256e.f8752u)).longValue()));
        }
    }

    /* renamed from: O */
    public void m30307O() {
        long b = this.f9065o.m30519b(C2267f.f8886j);
        this.f9063m.m30584d();
        this.f9063m.m30587b();
        this.f9065o.m30523a();
        this.f9075y.m18850b();
        this.f9065o.m30518b(C2267f.f8886j, b + 1);
        if (this.f9041R.compareAndSet(true, false)) {
            m30312J();
        } else {
            this.f9041R.set(true);
        }
    }

    /* renamed from: P */
    public void m30306P() {
        this.f9038O.m30993b();
    }

    /* renamed from: Q */
    public String m30305Q() {
        return this.f9070t.m29835a();
    }

    /* renamed from: R */
    public String m30304R() {
        return this.f9070t.m29832b();
    }

    /* renamed from: S */
    public String m30303S() {
        return this.f9070t.m29831c();
    }

    /* renamed from: T */
    public AppLovinSdkSettings m30302T() {
        return this.f9054d;
    }

    /* renamed from: U */
    public AppLovinSdkConfiguration m30301U() {
        return this.f9051a0;
    }

    /* renamed from: V */
    public String m30300V() {
        return (String) m30290a(C2251d.C2258g.f8792B);
    }

    /* renamed from: W */
    public AppLovinAdServiceImpl m30299W() {
        return this.f9055e;
    }

    /* renamed from: X */
    public NativeAdServiceImpl m30298X() {
        return this.f9056f;
    }

    /* renamed from: Y */
    public AppLovinEventService m30297Y() {
        return this.f9057g;
    }

    /* renamed from: Z */
    public AppLovinUserService m30296Z() {
        return this.f9058h;
    }

    /* renamed from: a */
    public C2220m m30295a() {
        return this.f9037N;
    }

    /* renamed from: a */
    public <ST> C2251d.C2256e<ST> m30283a(String str, C2251d.C2256e<ST> eVar) {
        return this.f9063m.m30590a(str, eVar);
    }

    /* renamed from: a */
    public <T> T m30291a(C2251d.C2256e<T> eVar) {
        return (T) this.f9063m.m30592a(eVar);
    }

    /* renamed from: a */
    public <T> T m30290a(C2251d.C2258g<T> gVar) {
        return (T) m30273b(gVar, null);
    }

    /* renamed from: a */
    public <T> T m30280a(String str, T t, Class cls, SharedPreferences sharedPreferences) {
        return (T) C2251d.C2259h.m30569a(str, t, cls, sharedPreferences);
    }

    /* renamed from: a */
    public void m30294a(long j) {
        this.f9069s.m30339a(j);
    }

    /* renamed from: a */
    public void m30293a(SharedPreferences sharedPreferences) {
        this.f9067q.m30578a(sharedPreferences);
    }

    /* renamed from: a */
    public void m30292a(C2135c.C2141f fVar) {
        if (!this.f9062l.m18828a()) {
            List<String> b = m30275b(C2251d.C2255d.f8500t4);
            if (b.size() > 0 && this.f9035L.m30791b().containsAll(b)) {
                this.f9061k.m30044b(AppLovinSdk.TAG, "All required adapters initialized");
                this.f9062l.m18812e();
                m30308N();
            }
        }
    }

    /* renamed from: a */
    public <T> void m30289a(C2251d.C2258g<T> gVar, T t) {
        this.f9067q.m30575a((C2251d.C2258g<C2251d.C2258g<T>>) gVar, (C2251d.C2258g<T>) t);
    }

    /* renamed from: a */
    public <T> void m30288a(C2251d.C2258g<T> gVar, T t, SharedPreferences sharedPreferences) {
        this.f9067q.m30573a((C2251d.C2258g<C2251d.C2258g<T>>) gVar, (C2251d.C2258g<T>) t, sharedPreferences);
    }

    /* renamed from: a */
    public void m30286a(AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        if (!m30310L()) {
            this.f9048Y = sdkInitializationListener;
        } else if (sdkInitializationListener != null) {
            sdkInitializationListener.onSdkInitialized(this.f9051a0);
        }
    }

    /* renamed from: a */
    public void m30285a(AppLovinSdk appLovinSdk) {
        this.f9060j = appLovinSdk;
    }

    /* renamed from: a */
    public void m30284a(String str) {
        C2374t.m30037g(AppLovinSdk.TAG, "Setting plugin version: " + str);
        this.f9063m.m30591a(C2251d.C2256e.f8620W2, str);
        this.f9063m.m30587b();
    }

    /* renamed from: a */
    public void m30282a(String str, AppLovinSdkSettings appLovinSdkSettings, Context context) {
        C2251d.C2258g<String> gVar;
        String str2;
        C2251d.C2259h hVar;
        this.f9050a = str;
        this.f9053c = System.currentTimeMillis();
        this.f9054d = appLovinSdkSettings;
        this.f9051a0 = new SdkConfigurationImpl(this);
        f9023b0 = context.getApplicationContext();
        if (context instanceof Activity) {
            this.f9052b = new WeakReference<>((Activity) context);
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        this.f9061k = new C2374t(this);
        this.f9067q = new C2251d.C2259h(this);
        C2251d.C2257f fVar = new C2251d.C2257f(this);
        this.f9063m = fVar;
        fVar.m30585c();
        this.f9063m.m30593a();
        C2264e eVar = new C2264e(this);
        this.f9068r = eVar;
        eVar.m30532b();
        this.f9073w = new C2370r(this);
        this.f9071u = new C2269f(this);
        this.f9072v = new C2375u(this);
        this.f9074x = new C2247c(this);
        this.f9057g = new EventServiceImpl(this);
        this.f9058h = new UserServiceImpl(this);
        this.f9059i = new VariableServiceImpl(this);
        this.f9075y = new C7042c(this);
        this.f9062l = new C7048s(this);
        this.f9064n = new C2356a(this);
        this.f9065o = new C2268g(this);
        this.f9066p = new C2345m(this);
        this.f9024A = new C2240b(context);
        this.f9055e = new AppLovinAdServiceImpl(this);
        this.f9056f = new NativeAdServiceImpl(this);
        this.f9076z = new C2433z(this);
        this.f9025B = new C2371s(this);
        this.f9032I = new PostbackServiceImpl(this);
        this.f9033J = new C2363d(this);
        this.f9034K = new C2177j(this);
        this.f9035L = new C2176i(this);
        this.f9036M = new MediationServiceImpl(this);
        this.f9038O = new C2117a.C2119b(this);
        this.f9037N = new C2220m();
        this.f9039P = new C2214l(this);
        this.f9069s = new C2335k(this);
        this.f9070t = new C2425q(this);
        this.f9026C = new C2380x(this);
        this.f9029F = new C2421n(this);
        this.f9030G = new C7054e(this);
        this.f9031H = new C2352n(this);
        this.f9028E = new C2327h(this);
        if (((Boolean) this.f9063m.m30592a(C2251d.C2256e.f8520C2)).booleanValue()) {
            this.f9027D = new C7057c(context);
        }
        if (TextUtils.isEmpty(str)) {
            this.f9044U = true;
            C2374t.m30034j(AppLovinSdk.TAG, "Unable to find AppLovin SDK key. Please add  meta-data android:name=\"applovin.sdk.key\" android:value=\"YOUR_SDK_KEY_HERE\" into AndroidManifest.xml.");
            StringWriter stringWriter = new StringWriter();
            new Throwable("").printStackTrace(new PrintWriter(stringWriter));
            String stringWriter2 = stringWriter.toString();
            C2374t.m30034j(AppLovinSdk.TAG, "Called with an invalid SDK key from: " + stringWriter2);
        }
        if (!m30265c0()) {
            appLovinSdkSettings.setVerboseLogging(AbstractC2426r.m29825a(context));
            m30268c().m30591a(C2251d.C2256e.f8693k, Boolean.valueOf(appLovinSdkSettings.isVerboseLoggingEnabled()));
            m30268c().m30587b();
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            if (TextUtils.isEmpty((String) this.f9067q.m30566b((C2251d.C2258g<C2251d.C2258g<String>>) C2251d.C2258g.f8793c, (C2251d.C2258g<String>) null, defaultSharedPreferences))) {
                this.f9045V = true;
                hVar = this.f9067q;
                gVar = C2251d.C2258g.f8793c;
                str2 = Boolean.toString(true);
            } else {
                hVar = this.f9067q;
                gVar = C2251d.C2258g.f8793c;
                str2 = Boolean.toString(false);
            }
            hVar.m30573a((C2251d.C2258g<C2251d.C2258g<String>>) gVar, (C2251d.C2258g<String>) str2, defaultSharedPreferences);
            if (((Boolean) this.f9067q.m30568b(C2251d.C2258g.f8794d, false)).booleanValue()) {
                this.f9061k.m30044b(AppLovinSdk.TAG, "Initializing SDK for non-maiden launch");
                this.f9046W = true;
            } else {
                this.f9061k.m30044b(AppLovinSdk.TAG, "Initializing SDK for maiden launch");
                this.f9067q.m30575a((C2251d.C2258g<C2251d.C2258g<Boolean>>) C2251d.C2258g.f8794d, (C2251d.C2258g<Boolean>) true);
            }
            AbstractC2426r.m29817a(C2251d.C2258g.f8799i, 100, this);
            boolean a = C2389h.m29964a(m30264d());
            if (!((Boolean) this.f9063m.m30592a(C2251d.C2256e.f8525D2)).booleanValue() || a) {
                m30312J();
            }
            if (((Boolean) this.f9063m.m30592a(C2251d.C2256e.f8520C2)).booleanValue() && !a) {
                this.f9061k.m30042c(AppLovinSdk.TAG, "SDK initialized with no internet connection - listening for connection");
                m30313I();
            }
        } else {
            m30278a(false);
        }
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    /* renamed from: a */
    public <T> void m30281a(String str, T t, SharedPreferences.Editor editor) {
        this.f9067q.m30572a(str, (String) t, editor);
    }

    /* renamed from: a */
    public void m30279a(JSONObject jSONObject) {
        this.f9047X = C2390i.m29940a(this.f9066p.m30221d().f9090b, C2390i.m29912b(jSONObject, "test_mode_idfas", new JSONArray(), this)) || this.f9066p.m30223c().f9099i;
    }

    /* renamed from: a */
    public void m30278a(boolean z) {
        synchronized (this.f9040Q) {
            this.f9042S = false;
            this.f9043T = z;
        }
        if (this.f9063m != null && this.f9062l != null) {
            List<String> b = m30275b(C2251d.C2255d.f8500t4);
            if (b.isEmpty()) {
                this.f9062l.m18812e();
                m30308N();
                return;
            }
            long longValue = ((Long) m30291a(C2251d.C2255d.f8501u4)).longValue();
            C2270g.C2290g gVar = new C2270g.C2290g(this, true, new RunnableC2342a());
            C2374t tVar = this.f9061k;
            tVar.m30044b(AppLovinSdk.TAG, "Waiting for required adapters to init: " + b + " - timing out in " + longValue + "ms...");
            this.f9062l.m18824a((C2270g.AbstractRunnableC2278c) gVar, C7048s.EnumC7049a.MEDIATION_TIMEOUT, longValue, true);
        }
    }

    /* renamed from: a0 */
    public VariableServiceImpl m30277a0() {
        return this.f9059i;
    }

    /* renamed from: b */
    public C2214l m30276b() {
        return this.f9039P;
    }

    /* renamed from: b */
    public <T> T m30273b(C2251d.C2258g<T> gVar, T t) {
        return (T) this.f9067q.m30568b(gVar, t);
    }

    /* renamed from: b */
    public <T> T m30272b(C2251d.C2258g<T> gVar, T t, SharedPreferences sharedPreferences) {
        return (T) this.f9067q.m30566b((C2251d.C2258g<C2251d.C2258g<T>>) gVar, (C2251d.C2258g<T>) t, sharedPreferences);
    }

    /* renamed from: b */
    public List<String> m30275b(C2251d.C2256e eVar) {
        return this.f9063m.m30586b(eVar);
    }

    /* renamed from: b */
    public <T> void m30274b(C2251d.C2258g<T> gVar) {
        this.f9067q.m30577a(gVar);
    }

    /* renamed from: b */
    public void m30270b(String str) {
        C2374t.m30037g(AppLovinSdk.TAG, "Setting user id: " + str);
        this.f9070t.m29833a(str);
    }

    /* renamed from: b0 */
    public String m30269b0() {
        return this.f9050a;
    }

    /* renamed from: c */
    public C2251d.C2257f m30268c() {
        return this.f9063m;
    }

    /* renamed from: c */
    public void m30266c(String str) {
        m30289a((C2251d.C2258g<C2251d.C2258g<String>>) C2251d.C2258g.f8792B, (C2251d.C2258g<String>) str);
    }

    /* renamed from: c0 */
    public boolean m30265c0() {
        return this.f9044U;
    }

    /* renamed from: d */
    public Context m30264d() {
        return f9023b0;
    }

    /* renamed from: d0 */
    public C2374t m30262d0() {
        return this.f9061k;
    }

    /* renamed from: e */
    public Activity m30261e() {
        WeakReference<Activity> weakReference = this.f9052b;
        return weakReference != null ? weakReference.get() : null;
    }

    /* renamed from: e0 */
    public C2177j m30259e0() {
        return this.f9034K;
    }

    /* renamed from: f */
    public long m30258f() {
        return this.f9053c;
    }

    /* renamed from: f0 */
    public C2176i m30256f0() {
        return this.f9035L;
    }

    /* renamed from: g */
    public boolean m30255g() {
        return this.f9045V;
    }

    /* renamed from: g0 */
    public MediationServiceImpl m30254g0() {
        return this.f9036M;
    }

    /* renamed from: h */
    public boolean m30253h() {
        return this.f9046W;
    }

    /* renamed from: h0 */
    public C2117a.C2119b m30252h0() {
        return this.f9038O;
    }

    /* renamed from: i */
    public C2356a m30251i() {
        return this.f9064n;
    }

    /* renamed from: j */
    public C7048s m30249j() {
        return this.f9062l;
    }

    /* renamed from: k */
    public C2268g m30248k() {
        return this.f9065o;
    }

    /* renamed from: l */
    public C2363d m30247l() {
        return this.f9033J;
    }

    /* renamed from: m */
    public C2345m m30246m() {
        return this.f9066p;
    }

    /* renamed from: n */
    public C2264e m30245n() {
        return this.f9068r;
    }

    /* renamed from: o */
    public C2335k m30244o() {
        return this.f9069s;
    }

    /* renamed from: p */
    public PostbackServiceImpl m30243p() {
        return this.f9032I;
    }

    /* renamed from: q */
    public AppLovinSdk m30242q() {
        return this.f9060j;
    }

    /* renamed from: r */
    public C2269f m30241r() {
        return this.f9071u;
    }

    /* renamed from: s */
    public C2375u m30240s() {
        return this.f9072v;
    }

    /* renamed from: t */
    public C2370r m30239t() {
        return this.f9073w;
    }

    public String toString() {
        return "CoreSdk{sdkKey='" + this.f9050a + "', enabled=" + this.f9043T + ", isFirstSession=" + this.f9045V + '}';
    }

    /* renamed from: u */
    public C2247c m30238u() {
        return this.f9074x;
    }

    /* renamed from: v */
    public C7042c m30237v() {
        return this.f9075y;
    }

    /* renamed from: w */
    public C2433z m30236w() {
        return this.f9076z;
    }

    /* renamed from: x */
    public C2371s m30235x() {
        return this.f9025B;
    }

    /* renamed from: y */
    public C2240b m30234y() {
        return this.f9024A;
    }

    /* renamed from: z */
    public void m30233z() {
        synchronized (this.f9040Q) {
            if (!this.f9042S && !this.f9043T) {
                m30312J();
            }
        }
    }
}
