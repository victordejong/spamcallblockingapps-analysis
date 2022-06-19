package com.applovin.impl.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.mediation.C1108d;
import com.applovin.impl.mediation.C1188e;
import com.applovin.impl.mediation.C1189f;
import com.applovin.impl.mediation.C1236h;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.impl.mediation.debugger.C1113a;
import com.applovin.impl.mediation.debugger.p045ui.testmode.C1187b;
import com.applovin.impl.mediation.p038a.C1049f;
import com.applovin.impl.mediation.p040c.C1106b;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdService;
import com.applovin.impl.sdk.network.C1442b;
import com.applovin.impl.sdk.network.C1449d;
import com.applovin.impl.sdk.network.C1459f;
import com.applovin.impl.sdk.network.PostbackServiceImpl;
import com.applovin.impl.sdk.p052a.C1261f;
import com.applovin.impl.sdk.p055c.C1313a;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p055c.C1315c;
import com.applovin.impl.sdk.p055c.C1316d;
import com.applovin.impl.sdk.p055c.C1317e;
import com.applovin.impl.sdk.p056d.C1324c;
import com.applovin.impl.sdk.p056d.C1328f;
import com.applovin.impl.sdk.p056d.C1329g;
import com.applovin.impl.sdk.p057e.C1349i;
import com.applovin.impl.sdk.p057e.C1359n;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.p057e.C1387z;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.C1532m;
import com.applovin.impl.sdk.utils.C1535o;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinEventService;
import com.applovin.sdk.AppLovinMediationProvider;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinTargetingData;
import com.applovin.sdk.AppLovinUserSegment;
import com.applovin.sdk.AppLovinUserService;
import com.google.android.gms.internal.ads.C1676a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.sdk.l */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/l.class */
public class C1408l {

    /* renamed from: a */
    public static Context f5278a;

    /* renamed from: c */
    private static C1248a f5279c;

    /* renamed from: A */
    private C1324c f5280A;

    /* renamed from: B */
    private C1544w f5281B;

    /* renamed from: C */
    private C1474q f5282C;

    /* renamed from: D */
    private C1449d f5283D;

    /* renamed from: E */
    private C1392h f5284E;

    /* renamed from: F */
    private C1532m f5285F;

    /* renamed from: G */
    private C1389g f5286G;

    /* renamed from: H */
    private C1414m f5287H;

    /* renamed from: I */
    private C1261f f5288I;

    /* renamed from: J */
    private C1478s f5289J;

    /* renamed from: K */
    private PostbackServiceImpl f5290K;

    /* renamed from: L */
    private C1459f f5291L;

    /* renamed from: M */
    private C1189f f5292M;

    /* renamed from: N */
    private C1188e f5293N;

    /* renamed from: O */
    private MediationServiceImpl f5294O;

    /* renamed from: P */
    private C1236h f5295P;

    /* renamed from: Q */
    private C1113a f5296Q;

    /* renamed from: R */
    private C1481u f5297R;

    /* renamed from: S */
    private C1108d f5298S;

    /* renamed from: T */
    private C1187b f5299T;

    /* renamed from: U */
    private List<MaxAdFormat> f5300U;

    /* renamed from: V */
    private final Object f5301V = new Object();

    /* renamed from: W */
    private final AtomicBoolean f5302W = new AtomicBoolean(true);

    /* renamed from: X */
    private boolean f5303X = false;

    /* renamed from: Y */
    private boolean f5304Y = false;

    /* renamed from: Z */
    private boolean f5305Z = false;

    /* renamed from: aa */
    private boolean f5306aa = false;

    /* renamed from: ab */
    private int f5307ab = 0;

    /* renamed from: ac */
    private AppLovinSdk.SdkInitializationListener f5308ac;

    /* renamed from: ad */
    private AppLovinSdk.SdkInitializationListener f5309ad;

    /* renamed from: ae */
    private AppLovinSdkConfiguration f5310ae;

    /* renamed from: b */
    public C1315c f5311b;

    /* renamed from: d */
    private String f5312d;

    /* renamed from: e */
    private WeakReference<Activity> f5313e;

    /* renamed from: f */
    private long f5314f;

    /* renamed from: g */
    private AppLovinSdkSettings f5315g;

    /* renamed from: h */
    private AppLovinUserSegment f5316h;

    /* renamed from: i */
    private AppLovinTargetingData f5317i;

    /* renamed from: j */
    private String f5318j;

    /* renamed from: k */
    private AppLovinAdServiceImpl f5319k;

    /* renamed from: l */
    private AppLovinNativeAdService f5320l;

    /* renamed from: m */
    private EventServiceImpl f5321m;

    /* renamed from: n */
    private UserServiceImpl f5322n;

    /* renamed from: o */
    private VariableServiceImpl f5323o;

    /* renamed from: p */
    private AppLovinSdk f5324p;

    /* renamed from: q */
    private C1479t f5325q;

    /* renamed from: r */
    private C1362o f5326r;

    /* renamed from: s */
    private C1442b f5327s;

    /* renamed from: t */
    private C1329g f5328t;

    /* renamed from: u */
    private C1420n f5329u;

    /* renamed from: v */
    private C1317e f5330v;

    /* renamed from: w */
    private C1401k f5331w;

    /* renamed from: x */
    private C1535o f5332x;

    /* renamed from: y */
    private C1312c f5333y;

    /* renamed from: z */
    private C1473p f5334z;

    /* renamed from: L */
    public static Context m5531L() {
        return f5278a;
    }

    /* renamed from: a */
    public static C1248a m5514a(Context context) {
        if (f5279c == null) {
            f5279c = new C1248a(context);
        }
        return f5279c;
    }

    /* renamed from: a */
    public void m5496a(JSONObject jSONObject) {
        for (String str : JsonUtils.getList(jSONObject, "error_messages", Collections.emptyList())) {
            C1479t.m5107i("AppLovinSdk", str);
        }
    }

    /* renamed from: am */
    private void m5482am() {
        this.f5283D.m5307a(new C1449d.AbstractC1450a() { // from class: com.applovin.impl.sdk.l.5
            @Override // com.applovin.impl.sdk.network.C1449d.AbstractC1450a
            /* renamed from: a */
            public void mo5305a() {
                C1408l.this.f5325q.m5114c("AppLovinSdk", "Connected to internet - re-initializing SDK");
                synchronized (C1408l.this.f5301V) {
                    if (!C1408l.this.f5303X) {
                        C1408l.this.m5481b();
                    }
                }
                C1408l.this.f5283D.m5306b(this);
            }

            @Override // com.applovin.impl.sdk.network.C1449d.AbstractC1450a
            /* renamed from: b */
            public void mo5304b() {
            }
        });
    }

    /* renamed from: b */
    public List<MaxAdFormat> m5474b(JSONObject jSONObject) {
        List<String> asList = Arrays.asList(JsonUtils.getString(jSONObject, "eaf", "").split(","));
        ArrayList arrayList = new ArrayList(asList.size());
        for (String str : asList) {
            MaxAdFormat formatFromString = MaxAdFormat.formatFromString(str);
            if (formatFromString != null) {
                arrayList.add(formatFromString);
            }
        }
        return arrayList;
    }

    /* renamed from: A */
    public C1479t m5542A() {
        return this.f5325q;
    }

    /* renamed from: B */
    public C1189f m5541B() {
        return this.f5292M;
    }

    /* renamed from: C */
    public C1188e m5540C() {
        return this.f5293N;
    }

    /* renamed from: D */
    public MediationServiceImpl m5539D() {
        return this.f5294O;
    }

    /* renamed from: E */
    public C1481u m5538E() {
        return this.f5297R;
    }

    /* renamed from: F */
    public C1113a m5537F() {
        return this.f5296Q;
    }

    /* renamed from: G */
    public C1236h m5536G() {
        return this.f5295P;
    }

    /* renamed from: H */
    public C1108d m5535H() {
        return this.f5298S;
    }

    /* renamed from: I */
    public C1187b m5534I() {
        return this.f5299T;
    }

    /* renamed from: J */
    public C1315c m5533J() {
        return this.f5311b;
    }

    /* renamed from: K */
    public Context m5532K() {
        return f5278a;
    }

    /* renamed from: M */
    public Activity m5530M() {
        WeakReference<Activity> weakReference = this.f5313e;
        return weakReference != null ? weakReference.get() : null;
    }

    /* renamed from: N */
    public long m5529N() {
        return this.f5314f;
    }

    /* renamed from: O */
    public boolean m5528O() {
        return this.f5305Z;
    }

    /* renamed from: P */
    public boolean m5527P() {
        return this.f5306aa;
    }

    /* renamed from: Q */
    public C1442b m5526Q() {
        return this.f5327s;
    }

    /* renamed from: R */
    public C1362o m5525R() {
        return this.f5326r;
    }

    /* renamed from: S */
    public C1329g m5524S() {
        return this.f5328t;
    }

    /* renamed from: T */
    public C1459f m5523T() {
        return this.f5291L;
    }

    /* renamed from: U */
    public C1420n m5522U() {
        return this.f5329u;
    }

    /* renamed from: V */
    public C1401k m5521V() {
        return this.f5331w;
    }

    /* renamed from: W */
    public PostbackServiceImpl m5520W() {
        return this.f5290K;
    }

    /* renamed from: X */
    public AppLovinSdk m5519X() {
        return this.f5324p;
    }

    /* renamed from: Y */
    public C1312c m5518Y() {
        return this.f5333y;
    }

    /* renamed from: Z */
    public C1473p m5517Z() {
        return this.f5334z;
    }

    /* renamed from: a */
    public <T> T m5511a(C1314b<T> c1314b) {
        return (T) this.f5311b.m5826a(c1314b);
    }

    /* renamed from: a */
    public <T> T m5509a(C1316d<T> c1316d) {
        return (T) m5478b((C1316d<C1316d<T>>) c1316d, (C1316d<T>) null);
    }

    /* renamed from: a */
    public <T> T m5507a(C1316d<T> c1316d, T t, SharedPreferences sharedPreferences) {
        return (T) this.f5330v.m5800b((C1316d<C1316d<T>>) c1316d, (C1316d<T>) t, sharedPreferences);
    }

    /* renamed from: a */
    public <T> T m5497a(String str, T t, Class<?> cls, SharedPreferences sharedPreferences) {
        return (T) C1317e.m5803a(str, t, cls, sharedPreferences);
    }

    /* renamed from: a */
    public void m5516a() {
        synchronized (this.f5301V) {
            if (!this.f5303X && !this.f5304Y) {
                m5481b();
            }
        }
    }

    /* renamed from: a */
    public void m5515a(long j) {
        this.f5331w.m5561a(j);
    }

    /* renamed from: a */
    public void m5513a(SharedPreferences sharedPreferences) {
        this.f5330v.m5811a(sharedPreferences);
    }

    /* renamed from: a */
    public void m5512a(C1049f c1049f) {
        if (this.f5326r.m5655a()) {
            return;
        }
        List<String> m5480b = m5480b(C1313a.f4688a);
        if (m5480b.size() <= 0 || !this.f5293N.m6176c().containsAll(m5480b)) {
            return;
        }
        this.f5325q.m5116b("AppLovinSdk", "All required adapters initialized");
        this.f5326r.m5646d();
        m5460j();
    }

    /* renamed from: a */
    public <T> void m5508a(C1316d<T> c1316d, T t) {
        this.f5330v.m5809a(c1316d, t);
    }

    /* renamed from: a */
    public void m5502a(final AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        if (!m5469d()) {
            this.f5308ac = sdkInitializationListener;
        } else if (sdkInitializationListener == null) {
        } else {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.l.1
                @Override // java.lang.Runnable
                public void run() {
                    sdkInitializationListener.onSdkInitialized(C1408l.this.f5310ae);
                }
            });
        }
    }

    /* renamed from: a */
    public void m5501a(AppLovinSdk appLovinSdk) {
        this.f5324p = appLovinSdk;
    }

    /* renamed from: a */
    public void m5500a(String str) {
        C1479t.m5110f("AppLovinSdk", "Setting plugin version: " + str);
        this.f5311b.m5825a(C1314b.f4926dy, str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x038b, code lost:
        if (com.applovin.sdk.AppLovinSdk.VERSION_CODE > com.applovin.impl.sdk.utils.Utils.toVersionCode(r0)) goto L37;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m5499a(java.lang.String r6, com.applovin.sdk.AppLovinSdkSettings r7, android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 997
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.C1408l.m5499a(java.lang.String, com.applovin.sdk.AppLovinSdkSettings, android.content.Context):void");
    }

    /* renamed from: a */
    public <T> void m5498a(String str, T t, SharedPreferences.Editor editor) {
        this.f5330v.m5806a(str, (String) t, editor);
    }

    /* renamed from: a */
    public void m5495a(boolean z) {
        synchronized (this.f5301V) {
            this.f5303X = false;
            this.f5304Y = z;
        }
        if (this.f5311b == null || this.f5326r == null) {
            return;
        }
        List<String> m5480b = m5480b(C1313a.f4688a);
        if (m5480b.isEmpty()) {
            this.f5326r.m5646d();
            m5460j();
            return;
        }
        long longValue = ((Long) m5511a(C1313a.f4689b)).longValue();
        C1387z c1387z = new C1387z(this, true, new Runnable() { // from class: com.applovin.impl.sdk.l.2
            @Override // java.lang.Runnable
            public void run() {
                if (C1408l.this.f5326r.m5655a()) {
                    return;
                }
                C1408l.this.f5325q.m5116b("AppLovinSdk", "Timing out adapters init...");
                C1408l.this.f5326r.m5646d();
                C1408l.this.m5460j();
            }
        });
        C1479t c1479t = this.f5325q;
        c1479t.m5116b("AppLovinSdk", "Waiting for required adapters to init: " + m5480b + " - timing out in " + longValue + "ms...");
        this.f5326r.m5651a(c1387z, C1362o.EnumC1364a.MEDIATION_TIMEOUT, longValue, true);
    }

    /* renamed from: a */
    public boolean m5510a(C1314b<String> c1314b, MaxAdFormat maxAdFormat) {
        return m5472c(c1314b).contains(maxAdFormat);
    }

    /* renamed from: a */
    public boolean m5503a(MaxAdFormat maxAdFormat) {
        List<MaxAdFormat> list = this.f5300U;
        return list != null && list.size() > 0 && !this.f5300U.contains(maxAdFormat);
    }

    /* renamed from: aa */
    public C1324c m5494aa() {
        return this.f5280A;
    }

    /* renamed from: ab */
    public C1544w m5493ab() {
        return this.f5281B;
    }

    /* renamed from: ac */
    public C1474q m5492ac() {
        return this.f5282C;
    }

    /* renamed from: ad */
    public C1248a m5491ad() {
        return f5279c;
    }

    /* renamed from: ae */
    public C1392h m5490ae() {
        return this.f5284E;
    }

    /* renamed from: af */
    public C1532m m5489af() {
        return this.f5285F;
    }

    /* renamed from: ag */
    public C1389g m5488ag() {
        return this.f5286G;
    }

    /* renamed from: ah */
    public AppLovinBroadcastManager m5487ah() {
        return AppLovinBroadcastManager.getInstance(f5278a);
    }

    /* renamed from: ai */
    public C1414m m5486ai() {
        return this.f5287H;
    }

    /* renamed from: aj */
    public C1261f m5485aj() {
        return this.f5288I;
    }

    /* renamed from: ak */
    public C1478s m5484ak() {
        return this.f5289J;
    }

    /* renamed from: al */
    public Activity m5483al() {
        Activity m6068a = m5514a(f5278a).m6068a();
        if (m6068a != null) {
            return m6068a;
        }
        Activity m5530M = m5530M();
        if (m5530M == null) {
            return null;
        }
        return m5530M;
    }

    /* renamed from: b */
    public <T> T m5478b(C1316d<T> c1316d, T t) {
        return (T) this.f5330v.m5802b(c1316d, t);
    }

    /* renamed from: b */
    public List<String> m5480b(C1314b<String> c1314b) {
        return this.f5311b.m5820b(c1314b);
    }

    /* renamed from: b */
    public void m5481b() {
        synchronized (this.f5301V) {
            this.f5303X = true;
            m5525R().m5647c();
            int i = this.f5307ab + 1;
            this.f5307ab = i;
            m5525R().m5652a(new C1349i(i, this, new C1349i.AbstractC1351a() { // from class: com.applovin.impl.sdk.l.3
                @Override // com.applovin.impl.sdk.p057e.C1349i.AbstractC1351a
                /* renamed from: a */
                public void mo5443a(JSONObject jSONObject) {
                    boolean z = jSONObject.length() > 0;
                    C1493h.m5052d(jSONObject, C1408l.this);
                    C1493h.m5053c(jSONObject, C1408l.this);
                    C1493h.m5050e(jSONObject, C1408l.this);
                    C1493h.m5056a(jSONObject, z, C1408l.this);
                    C1106b.m6463a(jSONObject, C1408l.this);
                    C1106b.m6461b(jSONObject, C1408l.this);
                    C1408l.this.m5537F().m6419a(JsonUtils.getBoolean(jSONObject, "smd", Boolean.FALSE).booleanValue(), JsonUtils.getInt(jSONObject, "smd_delay_sec", 2));
                    C1408l c1408l = C1408l.this;
                    c1408l.f5300U = c1408l.m5474b(jSONObject);
                    C1493h.m5048f(jSONObject, C1408l.this);
                    C1408l.this.m5534I().m6190a(jSONObject);
                    C1408l.this.m5496a(jSONObject);
                    C1408l.this.m5525R().m5654a(new C1359n(C1408l.this));
                }
            }), C1362o.EnumC1364a.MAIN, ((Integer) m5511a(C1314b.f4896dU)).intValue());
        }
    }

    /* renamed from: b */
    public <T> void m5479b(C1316d<T> c1316d) {
        this.f5330v.m5810a(c1316d);
    }

    /* renamed from: b */
    public void m5475b(String str) {
        C1479t c1479t = this.f5325q;
        c1479t.m5116b("AppLovinSdk", "Setting user id: " + str);
        if (StringUtils.isValidString(str) && str.length() > 8000) {
            StringBuilder m8752j = C0082b.m8752j("Provided user id longer than supported (");
            m8752j.append(str.length());
            m8752j.append(" bytes, ");
            m8752j.append(8000);
            m8752j.append(" maximum)");
            C1479t.m5107i("AppLovinSdk", m8752j.toString());
        }
        this.f5332x.m4953a(str);
    }

    /* renamed from: c */
    public List<MaxAdFormat> m5472c(C1314b<String> c1314b) {
        return this.f5311b.m5818c(c1314b);
    }

    /* renamed from: c */
    public void m5470c(String str) {
        this.f5318j = str;
        m5479b(C1316d.f4982A);
    }

    /* renamed from: c */
    public boolean m5473c() {
        boolean z;
        synchronized (this.f5301V) {
            z = this.f5303X;
        }
        return z;
    }

    /* renamed from: d */
    public boolean m5469d() {
        boolean z;
        synchronized (this.f5301V) {
            z = this.f5304Y;
        }
        return z;
    }

    /* renamed from: e */
    public boolean m5467e() {
        return "HSrCHRtOan6wp2kwOIGJC1RDtuSrF2mWVbio2aBcMHX9KF3iTJ1lLSzCKP1ZSo5yNolPNw1kCTtWpxELFF4ah1".equalsIgnoreCase(m5444z());
    }

    /* renamed from: f */
    public boolean m5465f() {
        return StringUtils.containsIgnoreCase(m5450t(), AppLovinMediationProvider.MAX);
    }

    /* renamed from: g */
    public boolean m5463g() {
        return Utils.checkClassExistence("com.unity3d.player.UnityPlayerActivity");
    }

    /* renamed from: h */
    public void m5462h() {
        String str = (String) this.f5330v.m5802b(C1316d.f4987c, null);
        if (StringUtils.isValidString(str)) {
            if (AppLovinSdk.VERSION_CODE >= Utils.toVersionCode(str)) {
                return;
            }
            C1479t.m5107i("AppLovinSdk", C1676a.m4788i(C0082b.m8752j("Current version ("), AppLovinSdk.VERSION, ") is older than earlier installed version (", str, "), which may cause compatibility issues."));
        }
    }

    /* renamed from: i */
    public void m5461i() {
        this.f5284E.m5590a();
    }

    /* renamed from: j */
    public void m5460j() {
        final AppLovinSdk.SdkInitializationListener sdkInitializationListener = this.f5308ac;
        if (sdkInitializationListener != null) {
            if (m5469d()) {
                this.f5308ac = null;
                this.f5309ad = null;
            } else if (this.f5309ad == sdkInitializationListener) {
                return;
            } else {
                if (((Boolean) m5511a(C1314b.f4754aj)).booleanValue()) {
                    this.f5308ac = null;
                } else {
                    this.f5309ad = sdkInitializationListener;
                }
            }
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.l.4
                @Override // java.lang.Runnable
                public void run() {
                    C1408l.this.f5325q.m5116b("AppLovinSdk", "Calling back publisher's initialization completion handler...");
                    sdkInitializationListener.onSdkInitialized(C1408l.this.f5310ae);
                }
            }, Math.max(0L, ((Long) m5511a(C1314b.f4755ak)).longValue()));
        }
    }

    /* renamed from: k */
    public void m5459k() {
        C1479t.m5107i("AppLovinSdk", "Resetting SDK state...");
        C1329g c1329g = this.f5328t;
        C1328f c1328f = C1328f.f5087g;
        long m5738b = c1329g.m5738b(c1328f);
        this.f5311b.m5819c();
        this.f5311b.m5827a();
        this.f5328t.m5742a();
        this.f5328t.m5737b(c1328f, m5738b + 1);
        if (this.f5302W.compareAndSet(true, false)) {
            m5481b();
        } else {
            this.f5302W.set(true);
        }
    }

    /* renamed from: l */
    public void m5458l() {
        this.f5296Q.m6416c();
    }

    /* renamed from: m */
    public String m5457m() {
        return this.f5332x.m4956a();
    }

    /* renamed from: n */
    public String m5456n() {
        return this.f5332x.m4952b();
    }

    /* renamed from: o */
    public String m5455o() {
        return this.f5332x.m4951c();
    }

    /* renamed from: p */
    public AppLovinSdkSettings m5454p() {
        return this.f5315g;
    }

    /* renamed from: q */
    public AppLovinUserSegment m5453q() {
        return this.f5316h;
    }

    /* renamed from: r */
    public C1330e m5452r() {
        return (C1330e) this.f5317i;
    }

    /* renamed from: s */
    public AppLovinSdkConfiguration m5451s() {
        return this.f5310ae;
    }

    /* renamed from: t */
    public String m5450t() {
        String str = (String) m5509a(C1316d.f4982A);
        return StringUtils.isValidString(str) ? str : this.f5318j;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("CoreSdk{sdkKey='");
        C0033h.m8882o(m8752j, this.f5312d, '\'', ", enabled=");
        m8752j.append(this.f5304Y);
        m8752j.append(", isFirstSession=");
        m8752j.append(this.f5305Z);
        m8752j.append('}');
        return m8752j.toString();
    }

    /* renamed from: u */
    public AppLovinAdServiceImpl m5449u() {
        return this.f5319k;
    }

    /* renamed from: v */
    public AppLovinNativeAdService m5448v() {
        return this.f5320l;
    }

    /* renamed from: w */
    public AppLovinEventService m5447w() {
        return this.f5321m;
    }

    /* renamed from: x */
    public AppLovinUserService m5446x() {
        return this.f5322n;
    }

    /* renamed from: y */
    public VariableServiceImpl m5445y() {
        return this.f5323o;
    }

    /* renamed from: z */
    public String m5444z() {
        return this.f5312d;
    }
}
