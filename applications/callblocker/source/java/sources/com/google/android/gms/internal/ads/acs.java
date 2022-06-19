package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
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
import com.google.android.gms.internal.ads.dwk;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acs.class */
public class acs extends WebViewClient implements aef {

    /* renamed from: a */
    protected act f7835a;

    /* renamed from: b */
    protected AbstractC3501st f7836b;

    /* renamed from: c */
    private final dwi f7837c;

    /* renamed from: d */
    private final HashMap<String, List<AbstractC3131fa<? super act>>> f7838d;

    /* renamed from: e */
    private final Object f7839e;

    /* renamed from: f */
    private dxs f7840f;

    /* renamed from: g */
    private AbstractC2328o f7841g;

    /* renamed from: h */
    private aee f7842h;

    /* renamed from: i */
    private aeh f7843i;

    /* renamed from: j */
    private AbstractC3111ei f7844j;

    /* renamed from: k */
    private AbstractC3113ek f7845k;

    /* renamed from: l */
    private aeg f7846l;

    /* renamed from: m */
    private boolean f7847m;
    @GuardedBy("lock")

    /* renamed from: n */
    private boolean f7848n;
    @GuardedBy("lock")

    /* renamed from: o */
    private boolean f7849o;
    @GuardedBy("lock")

    /* renamed from: p */
    private boolean f7850p;
    @GuardedBy("lock")

    /* renamed from: q */
    private boolean f7851q;

    /* renamed from: r */
    private AbstractC2333t f7852r;

    /* renamed from: s */
    private final C3362np f7853s;

    /* renamed from: t */
    private C2301c f7854t;

    /* renamed from: u */
    private C3355ni f7855u;

    /* renamed from: v */
    private boolean f7856v;

    /* renamed from: w */
    private boolean f7857w;

    /* renamed from: x */
    private int f7858x;

    /* renamed from: y */
    private boolean f7859y;

    /* renamed from: z */
    private View.OnAttachStateChangeListener f7860z;

    public acs(act actVar, dwi dwiVar, boolean z) {
        this(actVar, dwiVar, z, new C3362np(actVar, actVar.mo13431q(), new ecp(actVar.getContext())), null);
    }

    private acs(act actVar, dwi dwiVar, boolean z, C3362np c3362np, C3355ni c3355ni) {
        this.f7838d = new HashMap<>();
        this.f7839e = new Object();
        this.f7847m = false;
        this.f7837c = dwiVar;
        this.f7835a = actVar;
        this.f7848n = z;
        this.f7853s = c3362np;
        this.f7855u = null;
    }

    /* renamed from: a */
    public final void m13623a(View view, AbstractC3501st abstractC3501st, int i) {
        if (!abstractC3501st.mo7177b() || i <= 0) {
            return;
        }
        abstractC3501st.mo7181a(view);
        if (!abstractC3501st.mo7177b()) {
            return;
        }
        C3567ve.f17498a.postDelayed(new acx(this, view, abstractC3501st, i), 100L);
    }

    /* renamed from: a */
    private final void m13622a(AdOverlayInfoParcel adOverlayInfoParcel) {
        boolean z = false;
        boolean m7424a = this.f7855u != null ? this.f7855u.m7424a() : false;
        C2341q.m14745b();
        Context context = this.f7835a.getContext();
        if (!m7424a) {
            z = true;
        }
        C2327n.m14751a(context, adOverlayInfoParcel, z);
        if (this.f7836b != null) {
            String str = adOverlayInfoParcel.f6684l;
            String str2 = str;
            if (str == null) {
                str2 = str;
                if (adOverlayInfoParcel.f6673a != null) {
                    str2 = adOverlayInfoParcel.f6673a.f6710a;
                }
            }
            this.f7836b.mo7180a(str2);
        }
    }

    /* renamed from: a */
    public final void m13615a(Map<String, String> map, List<AbstractC3131fa<? super act>> list, String str) {
        if (C3556uu.m6753a(2)) {
            String valueOf = String.valueOf(str);
            C3556uu.m7052a(valueOf.length() != 0 ? "Received GMSG: ".concat(valueOf) : new String("Received GMSG: "));
            for (String str2 : map.keySet()) {
                String str3 = map.get(str2);
                C3556uu.m7052a(new StringBuilder(String.valueOf(str2).length() + 4 + String.valueOf(str3).length()).append("  ").append(str2).append(": ").append(str3).toString());
            }
        }
        for (AbstractC3131fa<? super act> abstractC3131fa : list) {
            abstractC3131fa.mo7414a(this.f7835a, map);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0191, code lost:
        com.google.android.gms.ads.internal.C2341q.m14744c();
        r7 = com.google.android.gms.internal.ads.C3567ve.m6984a(r0);
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.webkit.WebResourceResponse m13609b(java.lang.String r7, java.util.Map<java.lang.String, java.lang.String> r8) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.acs.m13609b(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    /* renamed from: n */
    private final void m13602n() {
        if (this.f7860z == null) {
            return;
        }
        this.f7835a.getView().removeOnAttachStateChangeListener(this.f7860z);
    }

    /* renamed from: o */
    private final void m13601o() {
        if (this.f7842h != null && ((this.f7856v && this.f7858x <= 0) || this.f7857w)) {
            this.f7842h.mo11712a(!this.f7857w);
            this.f7842h = null;
        }
        this.f7835a.mo13493G();
    }

    /* renamed from: p */
    private static WebResourceResponse m13600p() {
        return ((Boolean) dyx.m8158e().m7876a(edi.f16374ag)).booleanValue() ? new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0])) : null;
    }

    /* renamed from: a */
    public final WebResourceResponse m13616a(String str, Map<String, String> map) {
        WebResourceResponse m13600p;
        dvt m8497a;
        try {
            String m7131a = C3525tq.m7131a(str, this.f7835a.getContext(), this.f7859y);
            if (!m7131a.equals(str)) {
                m13600p = m13609b(m7131a, map);
            } else {
                dvu m8485a = dvu.m8485a(str);
                m13600p = (m8485a == null || (m8497a = C2341q.m14738i().m8497a(m8485a)) == null || !m8497a.m8489a()) ? (!C3638xv.m6760c() || !C2779al.f9931b.mo13599a().booleanValue()) ? null : m13609b(str, map) : new WebResourceResponse("", "", m8497a.m8488b());
            }
        } catch (Exception | NoClassDefFoundError e) {
            C2341q.m14740g().m7095a(e, "AdWebViewClient.interceptRequest");
            m13600p = m13600p();
        }
        return m13600p;
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: a */
    public final C2301c mo13536a() {
        return this.f7854t;
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: a */
    public final void mo13535a(int i, int i2) {
        if (this.f7855u != null) {
            this.f7855u.m7423a(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: a */
    public final void mo13534a(int i, int i2, boolean z) {
        this.f7853s.m7415a(i, i2);
        if (this.f7855u != null) {
            this.f7855u.m7422a(i, i2, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: a */
    public final void mo13533a(Uri uri) {
        String path = uri.getPath();
        List<AbstractC3131fa<? super act>> list = this.f7838d.get(path);
        if (list != null) {
            if (((Boolean) dyx.m8158e().m7876a(edi.f16449cB)).booleanValue()) {
                crg.m10781a(C2341q.m14744c().m6999a(uri), new acz(this, list, path), C3650yg.f17647f);
                return;
            }
            C2341q.m14744c();
            m13615a(C3567ve.m6973b(uri), list, path);
            return;
        }
        String valueOf = String.valueOf(uri);
        C3556uu.m7052a(new StringBuilder(String.valueOf(valueOf).length() + 32).append("No GMSG handler found for GMSG: ").append(valueOf).toString());
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16501dA)).booleanValue() || C2341q.m14740g().m7100a() == null) {
            return;
        }
        C3650yg.f17642a.execute(new Runnable(path) { // from class: com.google.android.gms.internal.ads.acu

            /* renamed from: a */
            private final String f7861a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7861a = path;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C2341q.m14740g().m7100a().m8105b(this.f7861a.substring(1));
            }
        });
    }

    /* renamed from: a */
    public final void m13621a(C2317d c2317d) {
        AbstractC2328o abstractC2328o = null;
        boolean mo13497A = this.f7835a.mo13497A();
        dxs dxsVar = (!mo13497A || this.f7835a.mo13428t().m13549e()) ? this.f7840f : null;
        if (!mo13497A) {
            abstractC2328o = this.f7841g;
        }
        m13622a(new AdOverlayInfoParcel(c2317d, dxsVar, abstractC2328o, this.f7852r, this.f7835a.mo13438j()));
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: a */
    public final void mo13528a(aee aeeVar) {
        this.f7842h = aeeVar;
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: a */
    public final void mo13527a(aeh aehVar) {
        this.f7843i = aehVar;
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: a */
    public final void mo13525a(dxs dxsVar, AbstractC3111ei abstractC3111ei, AbstractC2328o abstractC2328o, AbstractC3113ek abstractC3113ek, AbstractC2333t abstractC2333t, boolean z, AbstractC3134fd abstractC3134fd, C2301c c2301c, AbstractC3365ns abstractC3365ns, AbstractC3501st abstractC3501st) {
        C2301c c2301c2 = c2301c;
        if (c2301c == null) {
            c2301c2 = new C2301c(this.f7835a.getContext(), abstractC3501st, null);
        }
        this.f7855u = new C3355ni(this.f7835a, abstractC3365ns);
        this.f7836b = abstractC3501st;
        if (((Boolean) dyx.m8158e().m7876a(edi.f16380am)).booleanValue()) {
            m13617a("/adMetadata", new C3109eg(abstractC3111ei));
        }
        m13617a("/appEvent", new C3110eh(abstractC3113ek));
        m13617a("/backButton", C3115em.f16629j);
        m13617a("/refresh", C3115em.f16630k);
        m13617a("/canOpenURLs", C3115em.f16620a);
        m13617a("/canOpenIntents", C3115em.f16621b);
        m13617a("/click", C3115em.f16622c);
        m13617a("/close", C3115em.f16623d);
        m13617a("/customClose", C3115em.f16624e);
        m13617a("/instrument", C3115em.f16633n);
        m13617a("/delayPageLoaded", C3115em.f16635p);
        m13617a("/delayPageClosed", C3115em.f16636q);
        m13617a("/getLocationInfo", C3115em.f16637r);
        m13617a("/httpTrack", C3115em.f16625f);
        m13617a("/log", C3115em.f16626g);
        m13617a("/mraid", new C3136ff(c2301c2, this.f7855u, abstractC3365ns));
        m13617a("/mraidLoaded", this.f7853s);
        m13617a("/open", new C3135fe(c2301c2, this.f7855u));
        m13617a("/precache", new acc());
        m13617a("/touch", C3115em.f16628i);
        m13617a("/video", C3115em.f16631l);
        m13617a("/videoMeta", C3115em.f16632m);
        if (C2341q.m14747A().m7166a(this.f7835a.getContext())) {
            m13617a("/logScionEvent", new C3133fc(this.f7835a.getContext()));
        }
        this.f7840f = dxsVar;
        this.f7841g = abstractC2328o;
        this.f7844j = abstractC3111ei;
        this.f7845k = abstractC3113ek;
        this.f7852r = abstractC2333t;
        this.f7854t = c2301c2;
        this.f7847m = z;
    }

    /* renamed from: a */
    public final void m13618a(String str, AbstractC2717n<AbstractC3131fa<? super act>> abstractC2717n) {
        synchronized (this.f7839e) {
            List<AbstractC3131fa<? super act>> list = this.f7838d.get(str);
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (AbstractC3131fa<? super act> abstractC3131fa : list) {
                if (abstractC2717n.mo7772a(abstractC3131fa)) {
                    arrayList.add(abstractC3131fa);
                }
            }
            list.removeAll(arrayList);
        }
    }

    /* renamed from: a */
    public final void m13617a(String str, AbstractC3131fa<? super act> abstractC3131fa) {
        synchronized (this.f7839e) {
            List<AbstractC3131fa<? super act>> list = this.f7838d.get(str);
            List<AbstractC3131fa<? super act>> list2 = list;
            if (list == null) {
                list2 = new CopyOnWriteArrayList<>();
                this.f7838d.put(str, list2);
            }
            list2.add(abstractC3131fa);
        }
    }

    /* renamed from: a */
    public final void m13614a(boolean z) {
        this.f7847m = z;
    }

    /* renamed from: a */
    public final void m13613a(boolean z, int i) {
        m13622a(new AdOverlayInfoParcel((!this.f7835a.mo13497A() || this.f7835a.mo13428t().m13549e()) ? this.f7840f : null, this.f7841g, this.f7852r, this.f7835a, z, i, this.f7835a.mo13438j()));
    }

    /* renamed from: a */
    public final void m13612a(boolean z, int i, String str) {
        acy acyVar = null;
        boolean mo13497A = this.f7835a.mo13497A();
        dxs dxsVar = (!mo13497A || this.f7835a.mo13428t().m13549e()) ? this.f7840f : null;
        if (!mo13497A) {
            acyVar = new acy(this.f7835a, this.f7841g);
        }
        m13622a(new AdOverlayInfoParcel(dxsVar, acyVar, this.f7844j, this.f7845k, this.f7852r, this.f7835a, z, i, str, this.f7835a.mo13438j()));
    }

    /* renamed from: a */
    public final void m13611a(boolean z, int i, String str, String str2) {
        boolean mo13497A = this.f7835a.mo13497A();
        m13622a(new AdOverlayInfoParcel((!mo13497A || this.f7835a.mo13428t().m13549e()) ? this.f7840f : null, mo13497A ? null : new acy(this.f7835a, this.f7841g), this.f7844j, this.f7845k, this.f7852r, this.f7835a, z, i, str, str2, this.f7835a.mo13438j()));
    }

    /* renamed from: b */
    public final void m13610b(String str, AbstractC3131fa<? super act> abstractC3131fa) {
        synchronized (this.f7839e) {
            List<AbstractC3131fa<? super act>> list = this.f7838d.get(str);
            if (list == null) {
                return;
            }
            list.remove(abstractC3131fa);
        }
    }

    /* renamed from: b */
    public final void m13608b(boolean z) {
        this.f7859y = z;
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: b */
    public final boolean mo13518b() {
        boolean z;
        synchronized (this.f7839e) {
            z = this.f7848n;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: c */
    public final void mo13514c(boolean z) {
        synchronized (this.f7839e) {
            this.f7849o = true;
        }
    }

    /* renamed from: c */
    public final boolean m13607c() {
        boolean z;
        synchronized (this.f7839e) {
            z = this.f7849o;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: d */
    public final void mo13512d(boolean z) {
        synchronized (this.f7839e) {
            this.f7850p = z;
        }
    }

    /* renamed from: d */
    public final boolean m13606d() {
        boolean z;
        synchronized (this.f7839e) {
            z = this.f7850p;
        }
        return z;
    }

    /* renamed from: e */
    public final ViewTreeObserver.OnGlobalLayoutListener m13605e() {
        synchronized (this.f7839e) {
        }
        return null;
    }

    /* renamed from: f */
    public final ViewTreeObserver.OnScrollChangedListener m13604f() {
        synchronized (this.f7839e) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: g */
    public final void mo13508g() {
        AbstractC3501st abstractC3501st = this.f7836b;
        if (abstractC3501st != null) {
            WebView webView = this.f7835a.getWebView();
            if (C0595u.m20370B(webView)) {
                m13623a(webView, abstractC3501st, 10);
                return;
            }
            m13602n();
            this.f7860z = new acw(this, abstractC3501st);
            this.f7835a.getView().addOnAttachStateChangeListener(this.f7860z);
        }
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: h */
    public final void mo13507h() {
        synchronized (this.f7839e) {
            this.f7851q = true;
        }
        this.f7858x++;
        m13601o();
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: i */
    public final void mo13506i() {
        this.f7858x--;
        m13601o();
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: j */
    public final void mo13505j() {
        if (this.f7837c != null) {
            this.f7837c.m8442a(dwk.C3018a.EnumC3019a.DELAY_PAGE_LOAD_CANCELLED_AD);
        }
        this.f7857w = true;
        m13601o();
        if (((Boolean) dyx.m8158e().m7876a(edi.f16452cE)).booleanValue()) {
            this.f7835a.destroy();
        }
    }

    /* renamed from: k */
    public final void m13603k() {
        if (this.f7836b != null) {
            this.f7836b.mo7175d();
            this.f7836b = null;
        }
        m13602n();
        synchronized (this.f7839e) {
            this.f7838d.clear();
            this.f7840f = null;
            this.f7841g = null;
            this.f7842h = null;
            this.f7843i = null;
            this.f7844j = null;
            this.f7845k = null;
            this.f7847m = false;
            this.f7848n = false;
            this.f7849o = false;
            this.f7851q = false;
            this.f7852r = null;
            this.f7846l = null;
            if (this.f7855u != null) {
                this.f7855u.m7420a(true);
                this.f7855u = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: l */
    public final AbstractC3501st mo13503l() {
        return this.f7836b;
    }

    @Override // com.google.android.gms.internal.ads.aef
    /* renamed from: m */
    public final void mo13502m() {
        synchronized (this.f7839e) {
            this.f7847m = false;
            this.f7848n = true;
            C3650yg.f17646e.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.acv

                /* renamed from: a */
                private final acs f7862a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f7862a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    acs acsVar = this.f7862a;
                    acsVar.f7835a.mo13494F();
                    BinderC2316c mo13430r = acsVar.f7835a.mo13430r();
                    if (mo13430r != null) {
                        mo13430r.m14758m();
                    }
                }
            });
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        String valueOf = String.valueOf(str);
        C3556uu.m7052a(valueOf.length() != 0 ? "Loading resource: ".concat(valueOf) : new String("Loading resource: "));
        Uri parse = Uri.parse(str);
        if (!"gmsg".equalsIgnoreCase(parse.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            return;
        }
        mo13533a(parse);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.f7839e) {
            if (this.f7835a.mo13593B()) {
                C3556uu.m7052a("Blank page loaded, 1...");
                this.f7835a.mo13418C();
                return;
            }
            this.f7856v = true;
            if (this.f7843i != null) {
                this.f7843i.mo7771a();
                this.f7843i = null;
            }
            m13601o();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        dvk mo13487M = this.f7835a.mo13487M();
        if (mo13487M != null && webView == mo13487M.mo8508a()) {
            mo13487M.mo8506a(webView, str, bitmap);
        }
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.f7835a.mo13459a(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(11)
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return m13616a(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        boolean z;
        switch (keyEvent.getKeyCode()) {
            case 79:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 126:
            case 127:
            case 128:
            case 129:
            case 130:
            case 222:
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Uri uri;
        boolean shouldOverrideUrlLoading;
        String valueOf = String.valueOf(str);
        C3556uu.m7052a(valueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(valueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri parse = Uri.parse(str);
        if (!"gmsg".equalsIgnoreCase(parse.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            if (this.f7847m && webView == this.f7835a.getWebView()) {
                String scheme = parse.getScheme();
                if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    if (this.f7840f != null) {
                        this.f7840f.mo8200e();
                        if (this.f7836b != null) {
                            this.f7836b.mo7180a(str);
                        }
                        this.f7840f = null;
                    }
                    shouldOverrideUrlLoading = super.shouldOverrideUrlLoading(webView, str);
                    return shouldOverrideUrlLoading;
                }
            }
            if (!this.f7835a.getWebView().willNotDraw()) {
                try {
                    ctl mo13423y = this.f7835a.mo13423y();
                    uri = parse;
                    if (mo13423y != null) {
                        uri = parse;
                        if (mo13423y.m10669a(parse)) {
                            uri = mo13423y.m10667a(parse, this.f7835a.getContext(), this.f7835a.getView(), this.f7835a.mo13444f());
                        }
                    }
                } catch (zzdw e) {
                    String valueOf2 = String.valueOf(str);
                    C3556uu.m6745e(valueOf2.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf2) : new String("Unable to append parameter to URL: "));
                    uri = parse;
                }
                if (this.f7854t == null || this.f7854t.m14800b()) {
                    m13621a(new C2317d("android.intent.action.VIEW", uri.toString(), null, null, null, null, null));
                } else {
                    this.f7854t.m14801a(str);
                }
            } else {
                String valueOf3 = String.valueOf(str);
                C3556uu.m6745e(valueOf3.length() != 0 ? "AdWebView unable to handle URL: ".concat(valueOf3) : new String("AdWebView unable to handle URL: "));
            }
        } else {
            mo13533a(parse);
        }
        shouldOverrideUrlLoading = true;
        return shouldOverrideUrlLoading;
    }
}
