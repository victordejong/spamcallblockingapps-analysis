package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.core.p026h.C0595u;
import com.google.android.gms.ads.internal.C2301c;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.ads.internal.overlay.AbstractC2328o;
import com.google.android.gms.ads.internal.overlay.AbstractC2333t;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.BinderC2316c;
import com.google.android.gms.ads.internal.overlay.C2317d;
import com.google.android.gms.ads.internal.overlay.C2327n;
import com.google.android.gms.common.util.AbstractC2717n;
import java.io.ByteArrayInputStream;
import java.io.File;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aem.class */
public final class aem extends aev implements aef {

    /* renamed from: a */
    protected act f7990a;

    /* renamed from: d */
    private dxs f7993d;

    /* renamed from: e */
    private AbstractC2328o f7994e;

    /* renamed from: f */
    private aee f7995f;

    /* renamed from: g */
    private aeh f7996g;

    /* renamed from: h */
    private AbstractC3111ei f7997h;

    /* renamed from: i */
    private AbstractC3113ek f7998i;

    /* renamed from: j */
    private aeg f7999j;

    /* renamed from: l */
    private volatile boolean f8001l;
    @GuardedBy("lock")

    /* renamed from: m */
    private boolean f8002m;
    @GuardedBy("lock")

    /* renamed from: n */
    private boolean f8003n;
    @GuardedBy("lock")

    /* renamed from: o */
    private boolean f8004o;

    /* renamed from: p */
    private AbstractC2333t f8005p;

    /* renamed from: q */
    private C3362np f8006q;

    /* renamed from: r */
    private C2301c f8007r;

    /* renamed from: s */
    private C3355ni f8008s;

    /* renamed from: t */
    private AbstractC3501st f8009t;

    /* renamed from: u */
    private boolean f8010u;

    /* renamed from: v */
    private boolean f8011v;

    /* renamed from: w */
    private int f8012w;

    /* renamed from: x */
    private boolean f8013x;

    /* renamed from: y */
    private View.OnAttachStateChangeListener f8014y;

    /* renamed from: c */
    private final Object f7992c = new Object();

    /* renamed from: k */
    private boolean f8000k = false;

    /* renamed from: b */
    private final C3199ho<act> f7991b = new C3199ho<>();

    /* renamed from: a */
    public final void m13532a(View view, AbstractC3501st abstractC3501st, int i) {
        if (!abstractC3501st.mo7177b() || i <= 0) {
            return;
        }
        abstractC3501st.mo7181a(view);
        if (!abstractC3501st.mo7177b()) {
            return;
        }
        C3567ve.f17498a.postDelayed(new aeo(this, view, abstractC3501st, i), 100L);
    }

    /* renamed from: a */
    private final void m13531a(AdOverlayInfoParcel adOverlayInfoParcel) {
        boolean z = false;
        boolean m7424a = this.f8008s != null ? this.f8008s.m7424a() : false;
        C2341q.m14745b();
        Context context = this.f7990a.getContext();
        if (!m7424a) {
            z = true;
        }
        C2327n.m14751a(context, adOverlayInfoParcel, z);
        if (this.f8009t != null) {
            String str = adOverlayInfoParcel.f6684l;
            String str2 = str;
            if (str == null) {
                str2 = str;
                if (adOverlayInfoParcel.f6673a != null) {
                    str2 = adOverlayInfoParcel.f6673a.f6710a;
                }
            }
            this.f8009t.mo7180a(str2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0193, code lost:
        com.google.android.gms.ads.internal.C2341q.m14744c();
        r7 = com.google.android.gms.internal.ads.C3567ve.m6984a(r0);
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.webkit.WebResourceResponse m13510e(com.google.android.gms.internal.ads.aey r7) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aem.m13510e(com.google.android.gms.internal.ads.aey):android.webkit.WebResourceResponse");
    }

    /* renamed from: n */
    private final void m13501n() {
        if (this.f8014y == null) {
            return;
        }
        this.f7990a.getView().removeOnAttachStateChangeListener(this.f8014y);
    }

    /* renamed from: o */
    private final void m13500o() {
        if (this.f7995f != null && ((this.f8010u && this.f8012w <= 0) || this.f8011v)) {
            this.f7995f.mo11712a(!this.f8011v);
            this.f7995f = null;
        }
        this.f7990a.mo13493G();
    }

    /* renamed from: p */
    private static WebResourceResponse m13499p() {
        return ((Boolean) dyx.m8158e().m7876a(edi.f16374ag)).booleanValue() ? new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0])) : null;
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: a */
    public final C2301c mo13536a() {
        return this.f8007r;
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: a */
    public final void mo13535a(int i, int i2) {
        if (this.f8008s != null) {
            this.f8008s.m7423a(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: a */
    public final void mo13534a(int i, int i2, boolean z) {
        this.f8006q.m7415a(i, i2);
        if (this.f8008s != null) {
            this.f8008s.m7422a(i, i2, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: a */
    public final void mo13533a(Uri uri) {
        this.f7991b.m7786b(uri);
    }

    /* renamed from: a */
    public final void m13530a(C2317d c2317d) {
        AbstractC2328o abstractC2328o = null;
        boolean mo13497A = this.f7990a.mo13497A();
        dxs dxsVar = (!mo13497A || this.f7990a.mo13428t().m13549e()) ? this.f7993d : null;
        if (!mo13497A) {
            abstractC2328o = this.f7994e;
        }
        m13531a(new AdOverlayInfoParcel(c2317d, dxsVar, abstractC2328o, this.f8005p, this.f7990a.mo13438j()));
    }

    /* renamed from: a */
    public final void m13529a(act actVar, boolean z) {
        C3362np c3362np = new C3362np(actVar, actVar.mo13431q(), new ecp(actVar.getContext()));
        this.f7990a = actVar;
        this.f8001l = z;
        this.f8006q = c3362np;
        this.f8008s = null;
        this.f7991b.m7790a((C3199ho<act>) actVar);
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: a */
    public final void mo13528a(aee aeeVar) {
        this.f7995f = aeeVar;
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: a */
    public final void mo13527a(aeh aehVar) {
        this.f7996g = aehVar;
    }

    @Override // com.google.android.gms.internal.ads.aev
    /* renamed from: a */
    public final void mo7799a(aey aeyVar) {
        this.f8010u = true;
        if (this.f7996g != null) {
            this.f7996g.mo7771a();
            this.f7996g = null;
        }
        m13500o();
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: a */
    public final void mo13525a(dxs dxsVar, AbstractC3111ei abstractC3111ei, AbstractC2328o abstractC2328o, AbstractC3113ek abstractC3113ek, AbstractC2333t abstractC2333t, boolean z, AbstractC3134fd abstractC3134fd, C2301c c2301c, AbstractC3365ns abstractC3365ns, AbstractC3501st abstractC3501st) {
        C2301c c2301c2 = c2301c;
        if (c2301c == null) {
            c2301c2 = new C2301c(this.f7990a.getContext(), abstractC3501st, null);
        }
        this.f8008s = new C3355ni(this.f7990a, abstractC3365ns);
        this.f8009t = abstractC3501st;
        if (((Boolean) dyx.m8158e().m7876a(edi.f16380am)).booleanValue()) {
            m13523a("/adMetadata", new C3109eg(abstractC3111ei));
        }
        m13523a("/appEvent", new C3110eh(abstractC3113ek));
        m13523a("/backButton", C3115em.f16629j);
        m13523a("/refresh", C3115em.f16630k);
        m13523a("/canOpenURLs", C3115em.f16620a);
        m13523a("/canOpenIntents", C3115em.f16621b);
        m13523a("/click", C3115em.f16622c);
        m13523a("/close", C3115em.f16623d);
        m13523a("/customClose", C3115em.f16624e);
        m13523a("/instrument", C3115em.f16633n);
        m13523a("/delayPageLoaded", C3115em.f16635p);
        m13523a("/delayPageClosed", C3115em.f16636q);
        m13523a("/getLocationInfo", C3115em.f16637r);
        m13523a("/httpTrack", C3115em.f16625f);
        m13523a("/log", C3115em.f16626g);
        m13523a("/mraid", new C3136ff(c2301c2, this.f8008s, abstractC3365ns));
        m13523a("/mraidLoaded", this.f8006q);
        m13523a("/open", new C3135fe(c2301c2, this.f8008s));
        m13523a("/precache", new acc());
        m13523a("/touch", C3115em.f16628i);
        m13523a("/video", C3115em.f16631l);
        m13523a("/videoMeta", C3115em.f16632m);
        if (C2341q.m14747A().m7166a(this.f7990a.getContext())) {
            m13523a("/logScionEvent", new C3133fc(this.f7990a.getContext()));
        }
        this.f7993d = dxsVar;
        this.f7994e = abstractC2328o;
        this.f7997h = abstractC3111ei;
        this.f7998i = abstractC3113ek;
        this.f8005p = abstractC2333t;
        this.f8007r = c2301c2;
        this.f8000k = z;
    }

    /* renamed from: a */
    public final void m13524a(String str, AbstractC2717n<AbstractC3131fa<? super act>> abstractC2717n) {
        this.f7991b.m7789a(str, abstractC2717n);
    }

    /* renamed from: a */
    public final void m13523a(String str, AbstractC3131fa<? super act> abstractC3131fa) {
        this.f7991b.m7788a(str, abstractC3131fa);
    }

    /* renamed from: a */
    public final void m13522a(boolean z) {
        this.f8000k = z;
    }

    /* renamed from: a */
    public final void m13521a(boolean z, int i) {
        m13531a(new AdOverlayInfoParcel((!this.f7990a.mo13497A() || this.f7990a.mo13428t().m13549e()) ? this.f7993d : null, this.f7994e, this.f8005p, this.f7990a, z, i, this.f7990a.mo13438j()));
    }

    /* renamed from: a */
    public final void m13520a(boolean z, int i, String str) {
        aeq aeqVar = null;
        boolean mo13497A = this.f7990a.mo13497A();
        dxs dxsVar = (!mo13497A || this.f7990a.mo13428t().m13549e()) ? this.f7993d : null;
        if (!mo13497A) {
            aeqVar = new aeq(this.f7990a, this.f7994e);
        }
        m13531a(new AdOverlayInfoParcel(dxsVar, aeqVar, this.f7997h, this.f7998i, this.f8005p, this.f7990a, z, i, str, this.f7990a.mo13438j()));
    }

    /* renamed from: a */
    public final void m13519a(boolean z, int i, String str, String str2) {
        boolean mo13497A = this.f7990a.mo13497A();
        m13531a(new AdOverlayInfoParcel((!mo13497A || this.f7990a.mo13428t().m13549e()) ? this.f7993d : null, mo13497A ? null : new aeq(this.f7990a, this.f7994e), this.f7997h, this.f7998i, this.f8005p, this.f7990a, z, i, str, str2, this.f7990a.mo13438j()));
    }

    @Override // com.google.android.gms.internal.ads.aev
    /* renamed from: b */
    public final void mo7798b(aey aeyVar) {
        this.f7991b.m7792a(aeyVar.f8088b);
    }

    /* renamed from: b */
    public final void m13517b(String str, AbstractC3131fa<? super act> abstractC3131fa) {
        this.f7991b.m7785b(str, abstractC3131fa);
    }

    /* renamed from: b */
    public final void m13516b(boolean z) {
        this.f8013x = z;
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: b */
    public final boolean mo13518b() {
        return this.f8001l;
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: c */
    public final void mo13514c(boolean z) {
        synchronized (this.f7992c) {
            this.f8002m = true;
        }
    }

    /* renamed from: c */
    public final boolean m13515c() {
        boolean z;
        synchronized (this.f7992c) {
            z = this.f8002m;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.aev
    /* renamed from: c */
    public final boolean mo7797c(aey aeyVar) {
        boolean z;
        String valueOf = String.valueOf(aeyVar.f8087a);
        C3556uu.m7052a(valueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(valueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri uri = aeyVar.f8088b;
        if (this.f7991b.m7792a(uri)) {
            z = true;
        } else {
            if (this.f8000k) {
                String scheme = uri.getScheme();
                if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    if (this.f7993d != null) {
                        this.f7993d.mo8200e();
                        if (this.f8009t != null) {
                            this.f8009t.mo7180a(aeyVar.f8087a);
                        }
                        this.f7993d = null;
                    }
                    z = false;
                }
            }
            if (!this.f7990a.getWebView().willNotDraw()) {
                try {
                    ctl mo13423y = this.f7990a.mo13423y();
                    Uri uri2 = uri;
                    if (mo13423y != null) {
                        uri2 = uri;
                        if (mo13423y.m10669a(uri)) {
                            uri2 = mo13423y.m10667a(uri, this.f7990a.getContext(), this.f7990a.getView(), this.f7990a.mo13444f());
                        }
                    }
                    uri = uri2;
                } catch (zzdw e) {
                    String valueOf2 = String.valueOf(aeyVar.f8087a);
                    C3556uu.m6745e(valueOf2.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf2) : new String("Unable to append parameter to URL: "));
                }
                if (this.f8007r == null || this.f8007r.m14800b()) {
                    m13530a(new C2317d("android.intent.action.VIEW", uri.toString(), null, null, null, null, null));
                } else {
                    this.f8007r.m14801a(aeyVar.f8087a);
                }
            } else {
                String valueOf3 = String.valueOf(aeyVar.f8087a);
                C3556uu.m6745e(valueOf3.length() != 0 ? "AdWebView unable to handle URL: ".concat(valueOf3) : new String("AdWebView unable to handle URL: "));
            }
            z = true;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.aev
    /* renamed from: d */
    public final WebResourceResponse mo13420d(aey aeyVar) {
        WebResourceResponse m6965c;
        WebResourceResponse m13499p;
        dvt m8497a;
        if (this.f8009t != null) {
            this.f8009t.mo7179a(aeyVar.f8087a, aeyVar.f8089c, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(aeyVar.f8087a).getName())) {
            m6965c = null;
        } else {
            mo13502m();
            String str = this.f7990a.mo13428t().m13549e() ? (String) dyx.m8158e().m7876a(edi.f16319E) : this.f7990a.mo13497A() ? (String) dyx.m8158e().m7876a(edi.f16318D) : (String) dyx.m8158e().m7876a(edi.f16317C);
            C2341q.m14744c();
            m6965c = C3567ve.m6965c(this.f7990a.getContext(), this.f7990a.mo13438j().f17636a, str);
        }
        if (m6965c != null) {
            m13499p = m6965c;
        } else {
            try {
                if (!C3525tq.m7131a(aeyVar.f8087a, this.f7990a.getContext(), this.f8013x).equals(aeyVar.f8087a)) {
                    m13499p = m13510e(aeyVar);
                } else {
                    dvu m8485a = dvu.m8485a(aeyVar.f8087a);
                    m13499p = (m8485a == null || (m8497a = C2341q.m14738i().m8497a(m8485a)) == null || !m8497a.m8489a()) ? (!C3638xv.m6760c() || !C2779al.f9931b.mo13599a().booleanValue()) ? null : m13510e(aeyVar) : new WebResourceResponse("", "", m8497a.m8488b());
                }
            } catch (Exception | NoClassDefFoundError e) {
                C2341q.m14740g().m7095a(e, "AdWebViewClient.interceptRequest");
                m13499p = m13499p();
            }
        }
        return m13499p;
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: d */
    public final void mo13512d(boolean z) {
        synchronized (this.f7992c) {
            this.f8003n = z;
        }
    }

    /* renamed from: d */
    public final boolean m13513d() {
        boolean z;
        synchronized (this.f7992c) {
            z = this.f8003n;
        }
        return z;
    }

    /* renamed from: e */
    public final ViewTreeObserver.OnGlobalLayoutListener m13511e() {
        synchronized (this.f7992c) {
        }
        return null;
    }

    /* renamed from: f */
    public final ViewTreeObserver.OnScrollChangedListener m13509f() {
        synchronized (this.f7992c) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: g */
    public final void mo13508g() {
        AbstractC3501st abstractC3501st = this.f8009t;
        if (abstractC3501st != null) {
            WebView webView = this.f7990a.getWebView();
            if (C0595u.m20370B(webView)) {
                m13532a(webView, abstractC3501st, 10);
                return;
            }
            m13501n();
            this.f8014y = new aen(this, abstractC3501st);
            this.f7990a.getView().addOnAttachStateChangeListener(this.f8014y);
        }
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: h */
    public final void mo13507h() {
        synchronized (this.f7992c) {
            this.f8004o = true;
        }
        this.f8012w++;
        m13500o();
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: i */
    public final void mo13506i() {
        this.f8012w--;
        m13500o();
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: j */
    public final void mo13505j() {
        this.f8011v = true;
        m13500o();
    }

    /* renamed from: k */
    public final void m13504k() {
        if (this.f8009t != null) {
            this.f8009t.mo7175d();
            this.f8009t = null;
        }
        m13501n();
        this.f7991b.m7784d();
        this.f7991b.m7790a((C3199ho<act>) null);
        synchronized (this.f7992c) {
            this.f7993d = null;
            this.f7994e = null;
            this.f7995f = null;
            this.f7996g = null;
            this.f7997h = null;
            this.f7998i = null;
            this.f8005p = null;
            this.f7999j = null;
            if (this.f8008s != null) {
                this.f8008s.m7420a(true);
                this.f8008s = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: l */
    public final AbstractC3501st mo13503l() {
        return this.f8009t;
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: m */
    public final void mo13502m() {
        synchronized (this.f7992c) {
            this.f8000k = false;
            this.f8001l = true;
            C3650yg.f17646e.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ael

                /* renamed from: a */
                private final aem f7989a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f7989a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    aem aemVar = this.f7989a;
                    aemVar.f7990a.mo13494F();
                    BinderC2316c mo13430r = aemVar.f7990a.mo13430r();
                    if (mo13430r != null) {
                        mo13430r.m14758m();
                    }
                }
            });
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        dvk mo13487M = this.f7990a.mo13487M();
        if (mo13487M != null && webView == mo13487M.mo8508a()) {
            mo13487M.mo8506a(webView, str, bitmap);
        }
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.f7990a.mo13459a(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }
}
