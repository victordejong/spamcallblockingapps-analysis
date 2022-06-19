package com.applovin.impl.sdk;

import android.content.Context;
import android.graphics.PointF;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.adview.C0969b;
import com.applovin.impl.sdk.network.C1464h;
import com.applovin.impl.sdk.network.C1469j;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p053ad.AppLovinAdImpl;
import com.applovin.impl.sdk.p053ad.C1283c;
import com.applovin.impl.sdk.p053ad.C1285d;
import com.applovin.impl.sdk.p053ad.C1292f;
import com.applovin.impl.sdk.p053ad.EnumC1282b;
import com.applovin.impl.sdk.p056d.C1322a;
import com.applovin.impl.sdk.p057e.AbstractRunnableC1331a;
import com.applovin.impl.sdk.p057e.C1353j;
import com.applovin.impl.sdk.p057e.C1354k;
import com.applovin.impl.sdk.p057e.C1355l;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.p057e.C1367p;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinAdServiceImpl.class */
public class AppLovinAdServiceImpl implements AppLovinAdService {

    /* renamed from: a */
    private final C1408l f4445a;

    /* renamed from: b */
    private final C1479t f4446b;

    /* renamed from: d */
    private final Map<C1285d, C1241b> f4448d;

    /* renamed from: c */
    private final Handler f4447c = new Handler(Looper.getMainLooper());

    /* renamed from: e */
    private final Object f4449e = new Object();

    /* renamed from: f */
    private final Map<String, String> f4450f = new HashMap();

    /* renamed from: g */
    private final AtomicReference<JSONObject> f4451g = new AtomicReference<>();

    /* renamed from: com.applovin.impl.sdk.AppLovinAdServiceImpl$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinAdServiceImpl$a.class */
    public class C1240a implements AppLovinAdLoadListener {

        /* renamed from: b */
        private final C1241b f4459b;

        private C1240a(C1241b c1241b) {
            AppLovinAdServiceImpl.this = r4;
            this.f4459b = c1241b;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            HashSet hashSet;
            AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
            C1285d adZone = appLovinAdImpl.getAdZone();
            C1292f c1292f = appLovinAd;
            if (!(appLovinAd instanceof C1292f)) {
                AppLovinAdServiceImpl.this.f4445a.m5518Y().m5839a(appLovinAdImpl);
                c1292f = new C1292f(adZone, AppLovinAdServiceImpl.this.f4445a);
            }
            synchronized (this.f4459b.f4460a) {
                hashSet = new HashSet(this.f4459b.f4462c);
                this.f4459b.f4462c.clear();
                this.f4459b.f4461b = false;
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                AppLovinAdServiceImpl.this.m6092a(c1292f, (AppLovinAdLoadListener) it2.next());
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            HashSet hashSet;
            synchronized (this.f4459b.f4460a) {
                hashSet = new HashSet(this.f4459b.f4462c);
                this.f4459b.f4462c.clear();
                this.f4459b.f4461b = false;
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                AppLovinAdServiceImpl.this.m6105a(i, (AppLovinAdLoadListener) it2.next());
            }
        }
    }

    /* renamed from: com.applovin.impl.sdk.AppLovinAdServiceImpl$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinAdServiceImpl$b.class */
    public static class C1241b {

        /* renamed from: a */
        public final Object f4460a;

        /* renamed from: b */
        public boolean f4461b;

        /* renamed from: c */
        public final Collection<AppLovinAdLoadListener> f4462c;

        private C1241b() {
            this.f4460a = new Object();
            this.f4462c = new HashSet();
        }

        public String toString() {
            StringBuilder m8752j = C0082b.m8752j("AdLoadState{, isWaitingForAd=");
            m8752j.append(this.f4461b);
            m8752j.append(", pendingAdListeners=");
            m8752j.append(this.f4462c);
            m8752j.append('}');
            return m8752j.toString();
        }
    }

    public AppLovinAdServiceImpl(C1408l c1408l) {
        this.f4445a = c1408l;
        this.f4446b = c1408l.m5542A();
        HashMap hashMap = new HashMap(5);
        this.f4448d = hashMap;
        hashMap.put(C1285d.m5998g(), new C1241b());
        hashMap.put(C1285d.m5997h(), new C1241b());
        hashMap.put(C1285d.m5996i(), new C1241b());
        hashMap.put(C1285d.m5995j(), new C1241b());
        hashMap.put(C1285d.m5994k(), new C1241b());
    }

    /* renamed from: a */
    private Uri m6102a(Uri uri, String str) {
        try {
            return Uri.parse(uri.getQueryParameter(str));
        } catch (Throwable th) {
            C1479t m5542A = this.f4445a.m5542A();
            m5542A.m5112d("AppLovinAdService", "Unable to parse query parameter into Uri: " + str);
            return null;
        }
    }

    /* renamed from: a */
    private C1241b m6097a(C1285d c1285d) {
        C1241b c1241b;
        synchronized (this.f4449e) {
            C1241b c1241b2 = this.f4448d.get(c1285d);
            c1241b = c1241b2;
            if (c1241b2 == null) {
                c1241b = new C1241b();
                this.f4448d.put(c1285d, c1241b);
            }
        }
        return c1241b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
        if (r9 > 100) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m6091a(java.lang.String r6, long r7, int r9, java.lang.String r10, boolean r11) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = com.applovin.impl.sdk.utils.StringUtils.isValidString(r0)     // Catch: java.lang.Throwable -> L52
            if (r0 == 0) goto L50
            r0 = r9
            if (r0 < 0) goto L17
            r0 = r9
            r12 = r0
            r0 = r9
            r1 = 100
            if (r0 <= r1) goto L1a
        L17:
            r0 = 0
            r12 = r0
        L1a:
            r0 = r6
            android.net.Uri r0 = android.net.Uri.parse(r0)     // Catch: java.lang.Throwable -> L52
            android.net.Uri$Builder r0 = r0.buildUpon()     // Catch: java.lang.Throwable -> L52
            java.lang.String r1 = "et_s"
            r2 = r7
            java.lang.String r2 = java.lang.Long.toString(r2)     // Catch: java.lang.Throwable -> L52
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)     // Catch: java.lang.Throwable -> L52
            java.lang.String r1 = "pv"
            r2 = r12
            java.lang.String r2 = java.lang.Integer.toString(r2)     // Catch: java.lang.Throwable -> L52
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)     // Catch: java.lang.Throwable -> L52
            java.lang.String r1 = "vid_ts"
            r2 = r10
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)     // Catch: java.lang.Throwable -> L52
            java.lang.String r1 = "uvs"
            r2 = r11
            java.lang.String r2 = java.lang.Boolean.toString(r2)     // Catch: java.lang.Throwable -> L52
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)     // Catch: java.lang.Throwable -> L52
            android.net.Uri r0 = r0.build()     // Catch: java.lang.Throwable -> L52
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L52
            r10 = r0
            r0 = r10
            return r0
        L50:
            r0 = 0
            return r0
        L52:
            r13 = move-exception
            r0 = r5
            com.applovin.impl.sdk.t r0 = r0.f4446b
            r10 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r14 = r0
            r0 = r14
            java.lang.String r1 = "Unknown error parsing the video end url: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            java.lang.String r1 = "AppLovinAdService"
            r2 = r14
            java.lang.String r2 = r2.toString()
            r3 = r13
            r0.m5115b(r1, r2, r3)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.AppLovinAdServiceImpl.m6091a(java.lang.String, long, int, java.lang.String, boolean):java.lang.String");
    }

    /* renamed from: a */
    private String m6090a(String str, long j, long j2, List<Long> list, boolean z, int i) {
        if (StringUtils.isValidString(str)) {
            Uri.Builder appendQueryParameter = Uri.parse(str).buildUpon().appendQueryParameter("et_ms", Long.toString(j)).appendQueryParameter("vs_ms", Long.toString(j2));
            if (list != null && list.size() > 0) {
                appendQueryParameter.appendQueryParameter("ec_ms", list.toString());
            }
            if (i != C1389g.f5230a) {
                appendQueryParameter.appendQueryParameter("musw_ch", Boolean.toString(z));
                appendQueryParameter.appendQueryParameter("musw_st", Boolean.toString(C1389g.m5597a(i)));
            }
            return appendQueryParameter.build().toString();
        }
        return null;
    }

    /* renamed from: a */
    public void m6105a(final int i, final AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f4447c.post(new Runnable() { // from class: com.applovin.impl.sdk.AppLovinAdServiceImpl.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    appLovinAdLoadListener.failedToReceiveAd(i);
                } catch (Throwable th) {
                    C1479t.m5113c("AppLovinAdService", "Unable to notify listener about ad load failure", th);
                }
            }
        });
    }

    /* renamed from: a */
    private void m6104a(Uri uri, AbstractC1286e abstractC1286e, AppLovinAdView appLovinAdView, C0969b c0969b) {
        if (Utils.openUri(appLovinAdView.getContext(), uri, this.f4445a)) {
            C1496j.m5004c(c0969b.m6915g(), abstractC1286e, appLovinAdView);
        }
        c0969b.m6899o();
    }

    /* renamed from: a */
    private void m6103a(Uri uri, AbstractC1286e abstractC1286e, AppLovinAdView appLovinAdView, C0969b c0969b, Context context, C1408l c1408l) {
        if (uri == null || !StringUtils.isValidString(uri.getQuery())) {
            c1408l.m5542A().m5111e("AppLovinAdService", "Failed to execute Deep Link+ command - no query parameters found");
            return;
        }
        Uri m6102a = m6102a(uri, "primaryUrl");
        List<Uri> m6089b = m6089b(uri, "primaryTrackingUrl");
        Uri m6102a2 = m6102a(uri, "fallbackUrl");
        List<Uri> m6089b2 = m6089b(uri, "fallbackTrackingUrl");
        if (m6102a == null && m6102a2 == null) {
            c1408l.m5542A().m5111e("AppLovinAdService", "Failed to parse both primary and backup URLs for Deep Link+ command");
            return;
        }
        if (!m6101a(m6102a, "primary", m6089b, abstractC1286e, appLovinAdView, c0969b, context, c1408l)) {
            m6101a(m6102a2, "backup", m6089b2, abstractC1286e, appLovinAdView, c0969b, context, c1408l);
        }
        if (c0969b == null) {
            return;
        }
        c0969b.m6899o();
    }

    /* renamed from: a */
    private void m6096a(C1285d c1285d, C1469j c1469j, C1240a c1240a) {
        AppLovinAdImpl m5838a = this.f4445a.m5518Y().m5838a(c1285d);
        if (m5838a == null) {
            m6093a(new C1354k(c1285d, c1469j, c1240a, this.f4445a));
            return;
        }
        C1479t c1479t = this.f4446b;
        c1479t.m5116b("AppLovinAdService", "Using pre-loaded ad: " + m5838a + " for " + c1285d);
        c1240a.adReceived(m5838a);
    }

    /* renamed from: a */
    private void m6095a(C1285d c1285d, C1469j c1469j, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (c1285d != null) {
            if (appLovinAdLoadListener == null) {
                throw new IllegalArgumentException("No callback specified");
            }
            C1479t m5542A = this.f4445a.m5542A();
            m5542A.m5116b("AppLovinAdService", "Loading next ad of zone {" + c1285d + "}...");
            C1241b m6097a = m6097a(c1285d);
            synchronized (m6097a.f4460a) {
                m6097a.f4462c.add(appLovinAdLoadListener);
                if (!m6097a.f4461b) {
                    m6097a.f4461b = true;
                    m6096a(c1285d, c1469j, new C1240a(m6097a));
                } else {
                    this.f4446b.m5116b("AppLovinAdService", "Already waiting on an ad load...");
                }
            }
            return;
        }
        throw new IllegalArgumentException("No zone specified");
    }

    /* renamed from: a */
    private void m6094a(C1322a c1322a) {
        if (!StringUtils.isValidString(c1322a.m5783a())) {
            this.f4446b.m5112d("AppLovinAdService", "Requested a postback dispatch for a null URL; nothing to do...");
            return;
        }
        this.f4445a.m5523T().m5257a(C1464h.m5222o().m5211c(Utils.replaceCommonMacros(c1322a.m5783a())).m5207d(StringUtils.isValidString(c1322a.m5782b()) ? Utils.replaceCommonMacros(c1322a.m5782b()) : null).m5214b(c1322a.m5781c()).m5217a(false).m5209c(c1322a.m5780d()).m5221a());
    }

    /* renamed from: a */
    private void m6093a(AbstractRunnableC1331a abstractRunnableC1331a) {
        if (!this.f4445a.m5469d()) {
            C1479t.m5108h("AppLovinSdk", "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener).");
        }
        this.f4445a.m5516a();
        this.f4445a.m5525R().m5653a(abstractRunnableC1331a, C1362o.EnumC1364a.MAIN);
    }

    /* renamed from: a */
    public void m6092a(final AppLovinAd appLovinAd, final AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f4447c.post(new Runnable() { // from class: com.applovin.impl.sdk.AppLovinAdServiceImpl.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    appLovinAdLoadListener.adReceived(appLovinAd);
                } catch (Throwable th) {
                    C1479t.m5113c("AppLovinAdService", "Unable to notify listener about a newly loaded ad", th);
                }
            }
        });
    }

    /* renamed from: a */
    private boolean m6101a(Uri uri, String str, List<Uri> list, AbstractC1286e abstractC1286e, AppLovinAdView appLovinAdView, C0969b c0969b, Context context, C1408l c1408l) {
        C1479t m5542A = c1408l.m5542A();
        m5542A.m5116b("AppLovinAdService", "Opening " + str + " URL: " + uri);
        boolean openUri = Utils.openUri(context, uri, c1408l);
        C1479t m5542A2 = c1408l.m5542A();
        if (openUri) {
            m5542A2.m5116b("AppLovinAdService", "URL opened successfully, dispatching tracking URLs: " + list);
            for (Uri uri2 : list) {
                c1408l.m5520W().dispatchPostbackAsync(uri2.toString(), null);
            }
            if (c0969b != null) {
                C1496j.m5004c(c0969b.m6915g(), abstractC1286e, appLovinAdView);
            }
        } else {
            m5542A2.m5111e("AppLovinAdService", "URL failed to open");
        }
        return openUri;
    }

    /* renamed from: b */
    private List<Uri> m6089b(Uri uri, String str) {
        List<String> queryParameters = uri.getQueryParameters(str);
        ArrayList arrayList = new ArrayList(queryParameters.size());
        for (String str2 : queryParameters) {
            try {
                arrayList.add(Uri.parse(str2));
            } catch (Throwable th) {
                C1479t m5542A = this.f4445a.m5542A();
                m5542A.m5112d("AppLovinAdService", "Unable to parse query parameter into Uri: " + str);
            }
        }
        return arrayList;
    }

    public void addCustomQueryParams(Map<String, String> map) {
        synchronized (this.f4450f) {
            this.f4450f.putAll(map);
        }
    }

    public AppLovinAd dequeueAd(C1285d c1285d) {
        AppLovinAdImpl m5837b = this.f4445a.m5518Y().m5837b(c1285d);
        C1479t c1479t = this.f4446b;
        c1479t.m5116b("AppLovinAdService", "Dequeued ad: " + m5837b + " for zone: " + c1285d + "...");
        return m5837b;
    }

    public JSONObject getAndResetCustomPostBody() {
        return this.f4451g.getAndSet(null);
    }

    public Map<String, String> getAndResetCustomQueryParams() {
        HashMap hashMap;
        synchronized (this.f4450f) {
            hashMap = new HashMap(this.f4450f);
            this.f4450f.clear();
        }
        return hashMap;
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public String getBidToken() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        String m5416a = this.f4445a.m5522U().m5416a();
        StrictMode.setThreadPolicy(allowThreadDiskReads);
        return m5416a;
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAd(AppLovinAdSize appLovinAdSize, AppLovinAdLoadListener appLovinAdLoadListener) {
        m6095a(C1285d.m6008a(appLovinAdSize, AppLovinAdType.REGULAR), (C1469j) null, appLovinAdLoadListener);
    }

    public void loadNextAd(String str, AppLovinAdSize appLovinAdSize, C1469j c1469j, AppLovinAdLoadListener appLovinAdLoadListener) {
        C1479t c1479t = this.f4446b;
        c1479t.m5116b("AppLovinAdService", "Loading next ad of zone {" + str + "} with size " + appLovinAdSize);
        m6095a(C1285d.m6007a(appLovinAdSize, AppLovinAdType.REGULAR, str), c1469j, appLovinAdLoadListener);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAdForAdToken(String str, AppLovinAdLoadListener appLovinAdLoadListener) {
        String str2;
        StringBuilder sb;
        C1355l c1367p;
        String trim = str != null ? str.trim() : null;
        if (TextUtils.isEmpty(trim)) {
            C1479t.m5107i("AppLovinAdService", "Invalid ad token specified");
            m6105a(-8, appLovinAdLoadListener);
            return;
        }
        C1283c c1283c = new C1283c(trim, this.f4445a);
        if (c1283c.m6012b() != C1283c.EnumC1284a.REGULAR) {
            if (c1283c.m6012b() == C1283c.EnumC1284a.AD_RESPONSE_JSON) {
                JSONObject m6010d = c1283c.m6010d();
                if (m6010d != null) {
                    C1493h.m5048f(m6010d, this.f4445a);
                    C1493h.m5052d(m6010d, this.f4445a);
                    C1493h.m5053c(m6010d, this.f4445a);
                    C1493h.m5050e(m6010d, this.f4445a);
                    if (JsonUtils.getJSONArray(m6010d, "ads", new JSONArray()).length() <= 0) {
                        C1479t c1479t = this.f4446b;
                        c1479t.m5111e("AppLovinAdService", "No ad returned from the server for token: " + c1283c);
                        appLovinAdLoadListener.failedToReceiveAd(204);
                        return;
                    }
                    C1479t c1479t2 = this.f4446b;
                    c1479t2.m5116b("AppLovinAdService", "Rendering ad for token: " + c1283c);
                    c1367p = new C1367p(m6010d, Utils.getZone(m6010d, this.f4445a), EnumC1282b.DECODED_AD_TOKEN_JSON, appLovinAdLoadListener, this.f4445a);
                } else {
                    sb = new StringBuilder();
                    str2 = "Unable to retrieve ad response JSON from token: ";
                }
            } else {
                sb = new StringBuilder();
                str2 = "Invalid ad token specified: ";
            }
            sb.append(str2);
            sb.append(c1283c);
            C1479t.m5107i("AppLovinAdService", sb.toString());
            appLovinAdLoadListener.failedToReceiveAd(-8);
            return;
        }
        C1479t c1479t3 = this.f4446b;
        c1479t3.m5116b("AppLovinAdService", "Loading next ad for token: " + c1283c);
        c1367p = new C1355l(c1283c, appLovinAdLoadListener, this.f4445a);
        m6093a(c1367p);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAdForZoneId(String str, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (!TextUtils.isEmpty(str)) {
            C1479t c1479t = this.f4446b;
            c1479t.m5116b("AppLovinAdService", "Loading next ad of zone {" + str + "}");
            m6095a(C1285d.m6006a(str), (C1469j) null, appLovinAdLoadListener);
            return;
        }
        throw new IllegalArgumentException("No zone id specified");
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAdForZoneIds(List<String> list, AppLovinAdLoadListener appLovinAdLoadListener) {
        List<String> removeTrimmedEmptyStrings = CollectionUtils.removeTrimmedEmptyStrings(list);
        if (removeTrimmedEmptyStrings == null || removeTrimmedEmptyStrings.isEmpty()) {
            C1479t.m5107i("AppLovinAdService", "No zones were provided");
            m6105a(-7, appLovinAdLoadListener);
            return;
        }
        C1479t c1479t = this.f4446b;
        c1479t.m5116b("AppLovinAdService", "Loading next ad for zones: " + removeTrimmedEmptyStrings);
        m6093a(new C1353j(removeTrimmedEmptyStrings, appLovinAdLoadListener, this.f4445a));
    }

    public void loadNextIncentivizedAd(String str, AppLovinAdLoadListener appLovinAdLoadListener) {
        C1479t c1479t = this.f4446b;
        c1479t.m5116b("AppLovinAdService", "Loading next incentivized ad of zone {" + str + "}");
        m6095a(C1285d.m6003b(str), (C1469j) null, appLovinAdLoadListener);
    }

    public void maybeSubmitPersistentPostbacks(List<C1322a> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (C1322a c1322a : list) {
            m6094a(c1322a);
        }
    }

    public void setCustomPostBody(JSONObject jSONObject) {
        this.f4451g.set(jSONObject);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("AppLovinAdService{adLoadStates=");
        m8752j.append(this.f4448d);
        m8752j.append('}');
        return m8752j.toString();
    }

    public void trackAndLaunchClick(AbstractC1286e abstractC1286e, AppLovinAdView appLovinAdView, C0969b c0969b, Uri uri, PointF pointF, boolean z) {
        if (abstractC1286e == null) {
            this.f4446b.m5111e("AppLovinAdService", "Unable to track ad view click. No ad specified");
            return;
        }
        this.f4446b.m5116b("AppLovinAdService", "Tracking click on an ad...");
        maybeSubmitPersistentPostbacks(abstractC1286e.m5963a(pointF, z));
        if (appLovinAdView == null) {
            this.f4446b.m5111e("AppLovinAdService", "Unable to launch click - adView has been prematurely destroyed");
        } else if (Utils.isDeepLinkPlusUrl(uri)) {
            m6103a(uri, abstractC1286e, appLovinAdView, c0969b, appLovinAdView.getContext(), this.f4445a);
        } else {
            m6104a(uri, abstractC1286e, appLovinAdView, c0969b);
        }
    }

    public void trackAndLaunchVideoClick(AbstractC1286e abstractC1286e, Uri uri, PointF pointF, Context context) {
        if (abstractC1286e == null) {
            this.f4446b.m5111e("AppLovinAdService", "Unable to track video click. No ad specified");
            return;
        }
        this.f4446b.m5116b("AppLovinAdService", "Tracking VIDEO click on an ad...");
        maybeSubmitPersistentPostbacks(abstractC1286e.m5964a(pointF));
        if (Utils.isDeepLinkPlusUrl(uri)) {
            m6103a(uri, abstractC1286e, (AppLovinAdView) null, (C0969b) null, context, this.f4445a);
        } else {
            Utils.openUri(context, uri, this.f4445a);
        }
    }

    public void trackAppKilled(AbstractC1286e abstractC1286e) {
        if (abstractC1286e == null) {
            this.f4446b.m5111e("AppLovinAdService", "Unable to track app killed. No ad specified");
            return;
        }
        this.f4446b.m5116b("AppLovinAdService", "Tracking app killed during ad...");
        List<C1322a> m5936ao = abstractC1286e.m5936ao();
        if (m5936ao != null && !m5936ao.isEmpty()) {
            for (C1322a c1322a : m5936ao) {
                m6094a(new C1322a(c1322a.m5783a(), c1322a.m5782b()));
            }
            return;
        }
        C1479t c1479t = this.f4446b;
        StringBuilder m8752j = C0082b.m8752j("Unable to track app killed during AD #");
        m8752j.append(abstractC1286e.getAdIdNumber());
        m8752j.append(". Missing app killed tracking URL.");
        c1479t.m5112d("AppLovinAdService", m8752j.toString());
    }

    public void trackFullScreenAdClosed(AbstractC1286e abstractC1286e, long j, List<Long> list, long j2, boolean z, int i) {
        C1479t c1479t = this.f4446b;
        if (abstractC1286e == null) {
            c1479t.m5111e("AppLovinAdService", "Unable to track ad closed. No ad specified.");
            return;
        }
        c1479t.m5116b("AppLovinAdService", "Tracking ad closed...");
        List<C1322a> m5937an = abstractC1286e.m5937an();
        if (m5937an == null || m5937an.isEmpty()) {
            C1479t c1479t2 = this.f4446b;
            StringBuilder m8752j = C0082b.m8752j("Unable to track ad closed for AD #");
            m8752j.append(abstractC1286e.getAdIdNumber());
            m8752j.append(". Missing ad close tracking URL.");
            m8752j.append(abstractC1286e.getAdIdNumber());
            c1479t2.m5112d("AppLovinAdService", m8752j.toString());
            return;
        }
        for (C1322a c1322a : m5937an) {
            String m6090a = m6090a(c1322a.m5783a(), j, j2, list, z, i);
            String m6090a2 = m6090a(c1322a.m5782b(), j, j2, list, z, i);
            if (StringUtils.isValidString(m6090a)) {
                m6094a(new C1322a(m6090a, m6090a2));
            } else {
                C1479t c1479t3 = this.f4446b;
                StringBuilder m8752j2 = C0082b.m8752j("Failed to parse url: ");
                m8752j2.append(c1322a.m5783a());
                c1479t3.m5111e("AppLovinAdService", m8752j2.toString());
            }
        }
    }

    public void trackImpression(AbstractC1286e abstractC1286e) {
        if (abstractC1286e == null) {
            this.f4446b.m5111e("AppLovinAdService", "Unable to track impression click. No ad specified");
            return;
        }
        this.f4446b.m5116b("AppLovinAdService", "Tracking impression on ad...");
        maybeSubmitPersistentPostbacks(abstractC1286e.mo5935ap());
    }

    public void trackVideoEnd(AbstractC1286e abstractC1286e, long j, int i, boolean z) {
        C1479t c1479t = this.f4446b;
        if (abstractC1286e == null) {
            c1479t.m5111e("AppLovinAdService", "Unable to track video end. No ad specified");
            return;
        }
        c1479t.m5116b("AppLovinAdService", "Tracking video end on ad...");
        List<C1322a> m5938am = abstractC1286e.m5938am();
        if (m5938am == null || m5938am.isEmpty()) {
            C1479t c1479t2 = this.f4446b;
            StringBuilder m8752j = C0082b.m8752j("Unable to submit persistent postback for AD #");
            m8752j.append(abstractC1286e.getAdIdNumber());
            m8752j.append(". Missing video end tracking URL.");
            c1479t2.m5112d("AppLovinAdService", m8752j.toString());
            return;
        }
        String l = Long.toString(System.currentTimeMillis());
        for (C1322a c1322a : m5938am) {
            if (StringUtils.isValidString(c1322a.m5783a())) {
                String m6091a = m6091a(c1322a.m5783a(), j, i, l, z);
                String m6091a2 = m6091a(c1322a.m5782b(), j, i, l, z);
                if (m6091a != null) {
                    m6094a(new C1322a(m6091a, m6091a2));
                } else {
                    C1479t c1479t3 = this.f4446b;
                    StringBuilder m8752j2 = C0082b.m8752j("Failed to parse url: ");
                    m8752j2.append(c1322a.m5783a());
                    c1479t3.m5111e("AppLovinAdService", m8752j2.toString());
                }
            } else {
                this.f4446b.m5112d("AppLovinAdService", "Requested a postback dispatch for an empty video end URL; nothing to do...");
            }
        }
    }
}
