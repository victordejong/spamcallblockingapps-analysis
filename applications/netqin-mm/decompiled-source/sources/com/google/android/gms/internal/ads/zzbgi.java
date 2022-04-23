package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbgi;
import com.google.android.gms.internal.ads.zztu;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import p012b.p042i.p054p.C1002u;
import p131c.p161d.p170b.p224d.p252g.p253a.C3797m9;
import p131c.p161d.p170b.p224d.p252g.p253a.C3834n9;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3760l9;
import p131c.p161d.p170b.p224d.p252g.p253a.View$OnAttachStateChangeListenerC3723k9;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgi.class */
public class zzbgi extends WebViewClient implements zzbhv {

    /* renamed from: a */
    public zzbgj f24954a;

    /* renamed from: b */
    public final zzts f24955b;

    /* renamed from: c */
    public final HashMap<String, List<zzahq<? super zzbgj>>> f24956c;

    /* renamed from: d */
    public final Object f24957d;

    /* renamed from: e */
    public zzux f24958e;

    /* renamed from: f */
    public zzp f24959f;

    /* renamed from: g */
    public zzbhu f24960g;

    /* renamed from: h */
    public zzbhx f24961h;

    /* renamed from: i */
    public zzagt f24962i;

    /* renamed from: j */
    public zzagv f24963j;

    /* renamed from: k */
    public boolean f24964k;

    /* renamed from: l */
    public boolean f24965l;

    /* renamed from: m */
    public boolean f24966m;

    /* renamed from: n */
    public boolean f24967n;

    /* renamed from: o */
    public zzv f24968o;

    /* renamed from: p */
    public final zzaqo f24969p;

    /* renamed from: q */
    public zza f24970q;

    /* renamed from: r */
    public zzaqd f24971r;

    /* renamed from: s */
    public zzawl f24972s;

    /* renamed from: t */
    public boolean f24973t;

    /* renamed from: u */
    public boolean f24974u;

    /* renamed from: v */
    public int f24975v;

    /* renamed from: w */
    public boolean f24976w;

    /* renamed from: x */
    public View.OnAttachStateChangeListener f24977x;

    public zzbgi(zzbgj zzbgjVar, zzts zztsVar, boolean z) {
        this(zzbgjVar, zztsVar, z, new zzaqo(zzbgjVar, zzbgjVar.mo15599K(), new zzaam(zzbgjVar.getContext())), null);
    }

    @VisibleForTesting
    public zzbgi(zzbgj zzbgjVar, zzts zztsVar, boolean z, zzaqo zzaqoVar, zzaqd zzaqdVar) {
        this.f24956c = new HashMap<>();
        this.f24957d = new Object();
        this.f24964k = false;
        this.f24955b = zztsVar;
        this.f24954a = zzbgjVar;
        this.f24965l = z;
        this.f24969p = zzaqoVar;
        this.f24971r = null;
    }

    /* renamed from: p */
    public static WebResourceResponse m15611p() {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23821h0)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    /* renamed from: a */
    public final WebResourceResponse m15627a(String str, Map<String, String> map) {
        zzsz a;
        try {
            String a2 = zzaxh.m16219a(str, this.f24954a.getContext(), this.f24976w);
            if (!a2.equals(str)) {
                return m15621b(a2, map);
            }
            zzte a3 = zzte.m11438a(str);
            if (a3 != null && (a = com.google.android.gms.ads.internal.zzp.m17963i().m11452a(a3)) != null && a.m11446f()) {
                return new WebResourceResponse("", "", a.m11445i());
            }
            if (!zzbbk.m15880a() || !zzacr.f23976b.mo16862a().booleanValue()) {
                return null;
            }
            return m15621b(str, map);
        } catch (Exception | NoClassDefFoundError e) {
            com.google.android.gms.ads.internal.zzp.m17965g().m16188a(e, "AdWebViewClient.interceptRequest");
            return m15611p();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: a */
    public final void mo15500a() {
        zzts zztsVar = this.f24955b;
        if (zztsVar != null) {
            zztsVar.m11424a(zztu.zza.zzb.DELAY_PAGE_LOAD_CANCELLED_AD);
        }
        this.f24974u = true;
        m15612o();
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23711M2)).booleanValue()) {
            this.f24954a.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: a */
    public final void mo15499a(int i, int i2) {
        zzaqd zzaqdVar = this.f24971r;
        if (zzaqdVar != null) {
            zzaqdVar.m16448a(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: a */
    public final void mo15498a(int i, int i2, boolean z) {
        this.f24969p.m16424a(i, i2);
        zzaqd zzaqdVar = this.f24971r;
        if (zzaqdVar != null) {
            zzaqdVar.m16447a(i, i2, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: a */
    public final void mo15497a(Uri uri) {
        final String path = uri.getPath();
        List<zzahq<? super zzbgj>> list = this.f24956c.get(path);
        if (list != null) {
            if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23696J2)).booleanValue()) {
                com.google.android.gms.ads.internal.zzp.m17969c();
                m15626a(zzayu.m16109b(uri), list, path);
                return;
            }
            zzdyq.m12991a(com.google.android.gms.ads.internal.zzp.m17969c().m16135a(uri), new C3834n9(this, list, path), zzbbz.f24769f);
            return;
        }
        String valueOf = String.valueOf(uri);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 32);
        sb.append("No GMSG handler found for GMSG: ");
        sb.append(valueOf);
        zzayp.m16153g(sb.toString());
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23692I3)).booleanValue() && com.google.android.gms.ads.internal.zzp.m17965g().m16184c() != null) {
            zzbbz.f24764a.execute(new Runnable(path) { // from class: c.d.b.d.g.a.i9

                /* renamed from: a */
                public final String f13503a;

                {
                    this.f13503a = path;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    com.google.android.gms.ads.internal.zzp.m17965g().m16184c().m16897b(this.f13503a.substring(1));
                }
            });
        }
    }

    /* renamed from: a */
    public final void m15634a(View view, zzawl zzawlVar, int i) {
        if (zzawlVar.mo16260c() && i > 0) {
            zzawlVar.mo16265a(view);
            if (zzawlVar.mo16260c()) {
                zzayu.f24665h.postDelayed(new RunnableC3760l9(this, view, zzawlVar, i), 100L);
            }
        }
    }

    /* renamed from: a */
    public final void m15633a(AdOverlayInfoParcel adOverlayInfoParcel) {
        zzaqd zzaqdVar = this.f24971r;
        boolean a = zzaqdVar != null ? zzaqdVar.m16449a() : false;
        com.google.android.gms.ads.internal.zzp.m17970b();
        zzl.m18002a(this.f24954a.getContext(), adOverlayInfoParcel, !a);
        if (this.f24972s != null) {
            String str = adOverlayInfoParcel.f22740l;
            String str2 = str;
            if (str == null) {
                zzb zzbVar = adOverlayInfoParcel.f22729a;
                str2 = str;
                if (zzbVar != null) {
                    str2 = zzbVar.f22746b;
                }
            }
            this.f24972s.mo16264a(str2);
        }
    }

    /* renamed from: a */
    public final void m15632a(zzb zzbVar) {
        boolean e = this.f24954a.mo15526e();
        m15633a(new AdOverlayInfoParcel(zzbVar, (!e || this.f24954a.mo15517c().m15510b()) ? this.f24958e : null, e ? null : this.f24959f, this.f24968o, this.f24954a.mo15516a()));
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: a */
    public final void mo15492a(zzbhu zzbhuVar) {
        this.f24960g = zzbhuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: a */
    public final void mo15491a(zzbhx zzbhxVar) {
        this.f24961h = zzbhxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: a */
    public final void mo15489a(zzux zzuxVar, zzagt zzagtVar, zzp zzpVar, zzagv zzagvVar, zzv zzvVar, boolean z, zzahp zzahpVar, zza zzaVar, zzaqq zzaqqVar, zzawl zzawlVar) {
        zza zzaVar2 = zzaVar;
        if (zzaVar == null) {
            zzaVar2 = new zza(this.f24954a.getContext(), zzawlVar, null);
        }
        this.f24971r = new zzaqd(this.f24954a, zzaqqVar);
        this.f24972s = zzawlVar;
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23863o0)).booleanValue()) {
            m15628a("/adMetadata", new zzagu(zzagtVar));
        }
        m15628a("/appEvent", new zzagw(zzagvVar));
        m15628a("/backButton", zzagx.f24101k);
        m15628a("/refresh", zzagx.f24102l);
        m15628a("/canOpenApp", zzagx.f24092b);
        m15628a("/canOpenURLs", zzagx.f24091a);
        m15628a("/canOpenIntents", zzagx.f24093c);
        m15628a("/click", zzagx.f24094d);
        m15628a("/close", zzagx.f24095e);
        m15628a("/customClose", zzagx.f24096f);
        m15628a("/instrument", zzagx.f24105o);
        m15628a("/delayPageLoaded", zzagx.f24107q);
        m15628a("/delayPageClosed", zzagx.f24108r);
        m15628a("/getLocationInfo", zzagx.f24109s);
        m15628a("/httpTrack", zzagx.f24097g);
        m15628a("/log", zzagx.f24098h);
        m15628a("/mraid", new zzahr(zzaVar2, this.f24971r, zzaqqVar));
        m15628a("/mraidLoaded", this.f24969p);
        m15628a("/open", new zzahu(zzaVar2, this.f24971r));
        m15628a("/precache", new zzbfq());
        m15628a("/touch", zzagx.f24100j);
        m15628a("/video", zzagx.f24103m);
        m15628a("/videoMeta", zzagx.f24104n);
        if (com.google.android.gms.ads.internal.zzp.m17972A().m16256a(this.f24954a.getContext())) {
            m15628a("/logScionEvent", new zzahs(this.f24954a.getContext()));
        }
        this.f24958e = zzuxVar;
        this.f24959f = zzpVar;
        this.f24962i = zzagtVar;
        this.f24963j = zzagvVar;
        this.f24968o = zzvVar;
        this.f24970q = zzaVar2;
        this.f24964k = z;
    }

    /* renamed from: a */
    public final void m15629a(String str, Predicate<zzahq<? super zzbgj>> predicate) {
        synchronized (this.f24957d) {
            try {
                List<zzahq<? super zzbgj>> list = this.f24956c.get(str);
                if (list != null) {
                    ArrayList arrayList = new ArrayList();
                    for (zzahq<? super zzbgj> zzahqVar : list) {
                        if (predicate.apply(zzahqVar)) {
                            arrayList.add(zzahqVar);
                        }
                    }
                    list.removeAll(arrayList);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final void m15628a(String str, zzahq<? super zzbgj> zzahqVar) {
        synchronized (this.f24957d) {
            List<zzahq<? super zzbgj>> list = this.f24956c.get(str);
            List<zzahq<? super zzbgj>> list2 = list;
            if (list == null) {
                list2 = new CopyOnWriteArrayList<>();
                this.f24956c.put(str, list2);
            }
            list2.add(zzahqVar);
        }
    }

    /* renamed from: a */
    public final void m15626a(Map<String, String> map, List<zzahq<? super zzbgj>> list, String str) {
        if (zzbbq.m15859a(2)) {
            String valueOf = String.valueOf(str);
            zzayp.m16153g(valueOf.length() != 0 ? "Received GMSG: ".concat(valueOf) : new String("Received GMSG: "));
            for (String str2 : map.keySet()) {
                String str3 = map.get(str2);
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 4 + String.valueOf(str3).length());
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(str3);
                zzayp.m16153g(sb.toString());
            }
        }
        for (zzahq<? super zzbgj> zzahqVar : list) {
            zzahqVar.mo14168a(this.f24954a, map);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: a */
    public final void mo15486a(boolean z) {
        synchronized (this.f24957d) {
            this.f24966m = true;
        }
    }

    /* renamed from: a */
    public final void m15625a(boolean z, int i) {
        zzux zzuxVar = (!this.f24954a.mo15526e() || this.f24954a.mo15517c().m15510b()) ? this.f24958e : null;
        zzp zzpVar = this.f24959f;
        zzv zzvVar = this.f24968o;
        zzbgj zzbgjVar = this.f24954a;
        m15633a(new AdOverlayInfoParcel(zzuxVar, zzpVar, zzvVar, zzbgjVar, z, i, zzbgjVar.mo15516a()));
    }

    /* renamed from: a */
    public final void m15624a(boolean z, int i, String str) {
        boolean e = this.f24954a.mo15526e();
        zzux zzuxVar = (!e || this.f24954a.mo15517c().m15510b()) ? this.f24958e : null;
        C3797m9 m9Var = e ? null : new C3797m9(this.f24954a, this.f24959f);
        zzagt zzagtVar = this.f24962i;
        zzagv zzagvVar = this.f24963j;
        zzv zzvVar = this.f24968o;
        zzbgj zzbgjVar = this.f24954a;
        m15633a(new AdOverlayInfoParcel(zzuxVar, m9Var, zzagtVar, zzagvVar, zzvVar, zzbgjVar, z, i, str, zzbgjVar.mo15516a()));
    }

    /* renamed from: a */
    public final void m15623a(boolean z, int i, String str, String str2) {
        boolean e = this.f24954a.mo15526e();
        zzux zzuxVar = (!e || this.f24954a.mo15517c().m15510b()) ? this.f24958e : null;
        C3797m9 m9Var = e ? null : new C3797m9(this.f24954a, this.f24959f);
        zzagt zzagtVar = this.f24962i;
        zzagv zzagvVar = this.f24963j;
        zzv zzvVar = this.f24968o;
        zzbgj zzbgjVar = this.f24954a;
        m15633a(new AdOverlayInfoParcel(zzuxVar, m9Var, zzagtVar, zzagvVar, zzvVar, zzbgjVar, z, i, str, str2, zzbgjVar.mo15516a()));
    }

    /* renamed from: b */
    public final WebResourceResponse m15621b(String str, Map<String, String> map) throws IOException {
        HttpURLConnection httpURLConnection;
        URL url = new URL(str);
        int i = 0;
        while (true) {
            i++;
            if (i <= 20) {
                URLConnection openConnection = url.openConnection();
                openConnection.setConnectTimeout(10000);
                openConnection.setReadTimeout(10000);
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    openConnection.addRequestProperty(entry.getKey(), entry.getValue());
                }
                if (openConnection instanceof HttpURLConnection) {
                    httpURLConnection = (HttpURLConnection) openConnection;
                    com.google.android.gms.ads.internal.zzp.m17969c().m16137a(this.f24954a.getContext(), this.f24954a.mo15516a().f24759a, false, httpURLConnection);
                    zzbbk zzbbkVar = new zzbbk();
                    zzbbkVar.m15870a(httpURLConnection, (byte[]) null);
                    int responseCode = httpURLConnection.getResponseCode();
                    zzbbkVar.m15871a(httpURLConnection, responseCode);
                    if (responseCode < 300 || responseCode >= 400) {
                        break;
                    }
                    String headerField = httpURLConnection.getHeaderField("Location");
                    if (headerField == null) {
                        throw new IOException("Missing Location header in redirect");
                    } else if (headerField.startsWith("tel:")) {
                        return null;
                    } else {
                        URL url2 = new URL(url, headerField);
                        String protocol = url2.getProtocol();
                        if (protocol == null) {
                            zzbbq.m15852d("Protocol is null");
                            return m15611p();
                        } else if (protocol.equals("http") || protocol.equals("https")) {
                            String valueOf = String.valueOf(headerField);
                            zzbbq.m15858a(valueOf.length() != 0 ? "Redirecting to ".concat(valueOf) : new String("Redirecting to "));
                            httpURLConnection.disconnect();
                            url = url2;
                        } else {
                            String valueOf2 = String.valueOf(protocol);
                            zzbbq.m15852d(valueOf2.length() != 0 ? "Unsupported scheme: ".concat(valueOf2) : new String("Unsupported scheme: "));
                            return m15611p();
                        }
                    }
                } else {
                    throw new IOException("Invalid protocol.");
                }
            } else {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Too many redirects (20)");
                throw new IOException(sb.toString());
            }
        }
        com.google.android.gms.ads.internal.zzp.m17969c();
        return zzayu.m16120a(httpURLConnection);
    }

    /* renamed from: b */
    public final void m15622b(String str, zzahq<? super zzbgj> zzahqVar) {
        synchronized (this.f24957d) {
            List<zzahq<? super zzbgj>> list = this.f24956c.get(str);
            if (list != null) {
                list.remove(zzahqVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: b */
    public final void mo15480b(boolean z) {
        synchronized (this.f24957d) {
            this.f24967n = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: b */
    public final boolean mo15482b() {
        boolean z;
        synchronized (this.f24957d) {
            z = this.f24965l;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: c */
    public final zzawl mo15479c() {
        return this.f24972s;
    }

    /* renamed from: c */
    public final void m15620c(boolean z) {
        this.f24964k = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: d */
    public final void mo15477d() {
        synchronized (this.f24957d) {
            this.f24964k = false;
            this.f24965l = true;
            zzbbz.f24768e.execute(new Runnable(this) { // from class: c.d.b.d.g.a.j9

                /* renamed from: a */
                public final zzbgi f13598a;

                {
                    this.f13598a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbgi zzbgiVar = this.f13598a;
                    zzbgiVar.f24954a.mo15556k();
                    zze O = zzbgiVar.f24954a.mo15595O();
                    if (O != null) {
                        O.m18012a2();
                    }
                }
            });
        }
    }

    /* renamed from: d */
    public final void m15619d(boolean z) {
        this.f24976w = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: e */
    public final void mo15475e() {
        zzawl zzawlVar = this.f24972s;
        if (zzawlVar != null) {
            WebView webView = this.f24954a.getWebView();
            if (C1002u.m35197y(webView)) {
                m15634a(webView, zzawlVar, 10);
                return;
            }
            m15613n();
            this.f24977x = new View$OnAttachStateChangeListenerC3723k9(this, zzawlVar);
            this.f24954a.getView().addOnAttachStateChangeListener(this.f24977x);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: f */
    public final void mo15473f() {
        this.f24975v--;
        m15612o();
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: g */
    public final zza mo15472g() {
        return this.f24970q;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    /* renamed from: h */
    public final void mo15471h() {
        synchronized (this.f24957d) {
        }
        this.f24975v++;
        m15612o();
    }

    /* renamed from: i */
    public final void m15618i() {
        zzawl zzawlVar = this.f24972s;
        if (zzawlVar != null) {
            zzawlVar.mo16266a();
            this.f24972s = null;
        }
        m15613n();
        synchronized (this.f24957d) {
            this.f24956c.clear();
            this.f24958e = null;
            this.f24959f = null;
            this.f24960g = null;
            this.f24961h = null;
            this.f24962i = null;
            this.f24963j = null;
            this.f24964k = false;
            this.f24965l = false;
            this.f24966m = false;
            this.f24968o = null;
            if (this.f24971r != null) {
                this.f24971r.m16445a(true);
                this.f24971r = null;
            }
        }
    }

    /* renamed from: j */
    public final boolean m15617j() {
        boolean z;
        synchronized (this.f24957d) {
            z = this.f24966m;
        }
        return z;
    }

    /* renamed from: k */
    public final boolean m15616k() {
        boolean z;
        synchronized (this.f24957d) {
            z = this.f24967n;
        }
        return z;
    }

    /* renamed from: l */
    public final ViewTreeObserver.OnGlobalLayoutListener m15615l() {
        synchronized (this.f24957d) {
        }
        return null;
    }

    /* renamed from: m */
    public final ViewTreeObserver.OnScrollChangedListener m15614m() {
        synchronized (this.f24957d) {
        }
        return null;
    }

    /* renamed from: n */
    public final void m15613n() {
        if (this.f24977x != null) {
            this.f24954a.getView().removeOnAttachStateChangeListener(this.f24977x);
        }
    }

    /* renamed from: o */
    public final void m15612o() {
        if (this.f24960g != null && ((this.f24973t && this.f24975v <= 0) || this.f24974u)) {
            this.f24960g.mo15515a(!this.f24974u);
            this.f24960g = null;
        }
        this.f24954a.mo15551r();
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        String valueOf = String.valueOf(str);
        zzayp.m16153g(valueOf.length() != 0 ? "Loading resource: ".concat(valueOf) : new String("Loading resource: "));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            mo15497a(parse);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.f24957d) {
            if (this.f24954a.mo15560g()) {
                zzayp.m16153g("Blank page loaded, 1...");
                this.f24954a.mo15456G();
                return;
            }
            this.f24973t = true;
            zzbhx zzbhxVar = this.f24961h;
            if (zzbhxVar != null) {
                zzbhxVar.mo15514a();
                this.f24961h = null;
            }
            m15612o();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        zzsu J = this.f24954a.mo15600J();
        if (J != null && webView == J.getWebView()) {
            J.mo11460a(webView, str, bitmap);
        }
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.f24954a.mo15567b(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return m15627a(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Uri uri;
        String valueOf = String.valueOf(str);
        zzayp.m16153g(valueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(valueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri parse = Uri.parse(str);
        if (!"gmsg".equalsIgnoreCase(parse.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            if (this.f24964k && webView == this.f24954a.getWebView()) {
                String scheme = parse.getScheme();
                if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    zzux zzuxVar = this.f24958e;
                    if (zzuxVar != null) {
                        zzuxVar.onAdClicked();
                        zzawl zzawlVar = this.f24972s;
                        if (zzawlVar != null) {
                            zzawlVar.mo16264a(str);
                        }
                        this.f24958e = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            if (!this.f24954a.getWebView().willNotDraw()) {
                try {
                    zzeg h = this.f24954a.mo15518h();
                    uri = parse;
                    if (h != null) {
                        uri = parse;
                        if (h.m12598b(parse)) {
                            uri = h.m12601a(parse, this.f24954a.getContext(), this.f24954a.getView(), this.f24954a.mo15528b());
                        }
                    }
                } catch (zzef e) {
                    String valueOf2 = String.valueOf(str);
                    zzbbq.m15852d(valueOf2.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf2) : new String("Unable to append parameter to URL: "));
                    uri = parse;
                }
                zza zzaVar = this.f24970q;
                if (zzaVar == null || zzaVar.m17995c()) {
                    m15632a(new zzb("android.intent.action.VIEW", uri.toString(), null, null, null, null, null));
                    return true;
                }
                this.f24970q.m17997a(str);
                return true;
            }
            String valueOf3 = String.valueOf(str);
            zzbbq.m15852d(valueOf3.length() != 0 ? "AdWebView unable to handle URL: ".concat(valueOf3) : new String("AdWebView unable to handle URL: "));
            return true;
        }
        mo15497a(parse);
        return true;
    }
}
