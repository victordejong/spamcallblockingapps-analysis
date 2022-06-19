package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.C5625b;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.overlay.AbstractC5653o;
import com.google.android.gms.ads.internal.overlay.AbstractC5659u;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.BinderC5650l;
import com.google.android.gms.ads.internal.overlay.C5651m;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.util.AbstractC5739u0;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.common.util.AbstractC6238p;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/do0.class */
public class do0 extends WebViewClient implements jp0 {

    /* renamed from: d */
    public static final /* synthetic */ int f21704d = 0;

    /* renamed from: A */
    private boolean f21705A;

    /* renamed from: B */
    private boolean f21706B;

    /* renamed from: C */
    private int f21707C;

    /* renamed from: D */
    private boolean f21708D;

    /* renamed from: F */
    private View.OnAttachStateChangeListener f21710F;

    /* renamed from: e */
    private final wn0 f21711e;

    /* renamed from: f */
    private final C6854pm f21712f;

    /* renamed from: i */
    private AbstractC6673kq f21715i;

    /* renamed from: j */
    private AbstractC5653o f21716j;

    /* renamed from: k */
    private hp0 f21717k;

    /* renamed from: l */
    private ip0 f21718l;

    /* renamed from: m */
    private m10 f21719m;

    /* renamed from: n */
    private o10 f21720n;

    /* renamed from: o */
    private qa1 f21721o;

    /* renamed from: p */
    private boolean f21722p;

    /* renamed from: q */
    private boolean f21723q;

    /* renamed from: r */
    private boolean f21724r;

    /* renamed from: s */
    private boolean f21725s;

    /* renamed from: t */
    private boolean f21726t;

    /* renamed from: u */
    private AbstractC5659u f21727u;

    /* renamed from: v */
    private qa0 f21728v;

    /* renamed from: w */
    private C5625b f21729w;

    /* renamed from: y */
    protected hf0 f21731y;

    /* renamed from: z */
    private bp2 f21732z;

    /* renamed from: g */
    private final HashMap<String, List<n20<? super wn0>>> f21713g = new HashMap<>();

    /* renamed from: h */
    private final Object f21714h = new Object();

    /* renamed from: x */
    private la0 f21730x = null;

    /* renamed from: E */
    private final HashSet<String> f21709E = new HashSet<>(Arrays.asList(((String) C7192yr.m8714c().m14263c(C6679kw.f25599U3)).split(",")));

    public do0(wn0 wn0Var, C6854pm c6854pm, boolean z) {
        qa0 qa0Var = new qa0(wn0Var, wn0Var.mo7883v0(), new C7011tv(wn0Var.getContext()));
        this.f21712f = c6854pm;
        this.f21711e = wn0Var;
        this.f21724r = z;
        this.f21728v = qa0Var;
    }

    /* renamed from: H */
    private static final boolean m15741H(boolean z, wn0 wn0Var) {
        return z && !wn0Var.mo7894o().m13128g() && !wn0Var.mo7958E().equals("interstitial_mb");
    }

    /* renamed from: q */
    public final void m15721q(View view, hf0 hf0Var, int i) {
        if (!hf0Var.mo14674e() || i <= 0) {
            return;
        }
        hf0Var.mo14677a(view);
        if (!hf0Var.mo14674e()) {
            return;
        }
        C5679c2.f18451a.postDelayed(new Runnable(this, view, hf0Var, i) { // from class: com.google.android.gms.internal.ads.xn0

            /* renamed from: d */
            private final do0 f32127d;

            /* renamed from: e */
            private final View f32128e;

            /* renamed from: f */
            private final hf0 f32129f;

            /* renamed from: g */
            private final int f32130g;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32127d = this;
                this.f32128e = view;
                this.f32129f = hf0Var;
                this.f32130g = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f32127d.m15722p(this.f32128e, this.f32129f, this.f32130g);
            }
        }, 100L);
    }

    /* renamed from: r */
    private final void m15720r() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f21710F;
        if (onAttachStateChangeListener == null) {
            return;
        }
        ((View) this.f21711e).removeOnAttachStateChangeListener(onAttachStateChangeListener);
    }

    /* renamed from: u */
    private static WebResourceResponse m15719u() {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25815v0)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0195, code lost:
        com.google.android.gms.ads.internal.C5667s.m18160d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0199, code lost:
        r0 = com.google.android.gms.ads.internal.util.C5679c2.m18056s(r0);
        android.net.TrafficStats.clearThreadStatsTag();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01a3, code lost:
        return r0;
     */
    /* JADX WARN: Finally extract failed */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.webkit.WebResourceResponse m15718v(java.lang.String r9, java.util.Map<java.lang.String, java.lang.String> r10) {
        /*
            Method dump skipped, instructions count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.do0.m15718v(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    /* renamed from: y */
    public final void m15717y(Map<String, String> map, List<n20<? super wn0>> list, String str) {
        if (C5722o1.m17988m()) {
            C5722o1.m17990k(str.length() != 0 ? "Received GMSG: ".concat(str) : new String("Received GMSG: "));
            for (String str2 : map.keySet()) {
                String str3 = map.get(str2);
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 4 + String.valueOf(str3).length());
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(str3);
                C5722o1.m17990k(sb.toString());
            }
        }
        for (n20<? super wn0> n20Var : list) {
            n20Var.mo8404a(this.f21711e, map);
        }
    }

    /* renamed from: C0 */
    public final void m15744C0(String str, n20<? super wn0> n20Var) {
        synchronized (this.f21714h) {
            List<n20<? super wn0>> list = this.f21713g.get(str);
            if (list == null) {
                return;
            }
            list.remove(n20Var);
        }
    }

    /* renamed from: D0 */
    public final void m15743D0(String str, AbstractC6238p<n20<? super wn0>> abstractC6238p) {
        synchronized (this.f21714h) {
            List<n20<? super wn0>> list = this.f21713g.get(str);
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (n20<? super wn0> n20Var : list) {
                if (abstractC6238p.mo16121a(n20Var)) {
                    arrayList.add(n20Var);
                }
            }
            list.removeAll(arrayList);
        }
    }

    /* renamed from: E0 */
    public final void m15742E0() {
        hf0 hf0Var = this.f21731y;
        if (hf0Var != null) {
            hf0Var.zzg();
            this.f21731y = null;
        }
        m15720r();
        synchronized (this.f21714h) {
            this.f21713g.clear();
            this.f21715i = null;
            this.f21716j = null;
            this.f21717k = null;
            this.f21718l = null;
            this.f21719m = null;
            this.f21720n = null;
            this.f21722p = false;
            this.f21724r = false;
            this.f21725s = false;
            this.f21727u = null;
            this.f21729w = null;
            this.f21728v = null;
            la0 la0Var = this.f21730x;
            if (la0Var != null) {
                la0Var.m13623i(true);
                this.f21730x = null;
            }
            this.f21732z = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.jp0
    /* renamed from: G0 */
    public final void mo14090G0(int i, int i2, boolean z) {
        qa0 qa0Var = this.f21728v;
        if (qa0Var != null) {
            qa0Var.m11999h(i, i2);
        }
        la0 la0Var = this.f21730x;
        if (la0Var != null) {
            la0Var.m13622j(i, i2, false);
        }
    }

    /* renamed from: I */
    public final boolean m15740I() {
        boolean z;
        synchronized (this.f21714h) {
            z = this.f21725s;
        }
        return z;
    }

    /* renamed from: J */
    public final boolean m15739J() {
        boolean z;
        synchronized (this.f21714h) {
            z = this.f21726t;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.jp0
    /* renamed from: K0 */
    public final void mo14089K0(int i, int i2) {
        la0 la0Var = this.f21730x;
        if (la0Var != null) {
            la0Var.m13620l(i, i2);
        }
    }

    /* renamed from: N */
    public final ViewTreeObserver.OnGlobalLayoutListener m15738N() {
        synchronized (this.f21714h) {
        }
        return null;
    }

    /* renamed from: O */
    public final ViewTreeObserver.OnScrollChangedListener m15737O() {
        synchronized (this.f21714h) {
        }
        return null;
    }

    /* renamed from: U */
    public final void m15735U() {
        if (this.f21717k != null && ((this.f21705A && this.f21707C <= 0) || this.f21706B || this.f21723q)) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25736l1)).booleanValue() && this.f21711e.mo7901k() != null) {
                C6938rw.m11264a(this.f21711e.mo7901k().m9038c(), this.f21711e.zzi(), "awfllc");
            }
            hp0 hp0Var = this.f21717k;
            boolean z = false;
            if (!this.f21706B) {
                z = false;
                if (!this.f21723q) {
                    z = true;
                }
            }
            hp0Var.mo8634b(z);
            this.f21717k = null;
        }
        this.f21711e.mo7948K();
    }

    @Override // com.google.android.gms.internal.ads.jp0
    /* renamed from: V */
    public final void mo14088V(ip0 ip0Var) {
        this.f21718l = ip0Var;
    }

    /* renamed from: Y */
    public final void m15734Y(zzc zzcVar, boolean z) {
        boolean mo7932T = this.f21711e.mo7932T();
        boolean m15741H = m15741H(mo7932T, this.f21711e);
        boolean z2 = true;
        if (!m15741H) {
            z2 = !z;
        }
        m15727j0(new AdOverlayInfoParcel(zzcVar, m15741H ? null : this.f21715i, mo7932T ? null : this.f21716j, this.f21727u, this.f21711e.zzt(), this.f21711e, z2 ? null : this.f21721o));
    }

    /* renamed from: a */
    public final WebResourceResponse m15733a(String str, Map<String, String> map) {
        zzayk m8785f;
        try {
            if (C7235zx.f33442a.m12799e().booleanValue() && this.f21732z != null && "oda".equals(Uri.parse(str).getScheme())) {
                this.f21732z.m16302b(str);
                return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
            }
            String m12915a = ng0.m12915a(str, this.f21711e.getContext(), this.f21708D);
            if (!m12915a.equals(str)) {
                return m15718v(m12915a, map);
            }
            zzayn m8086k0 = zzayn.m8086k0(Uri.parse(str));
            if (m8086k0 != null && (m8785f = C5667s.m18154j().m8785f(m8086k0)) != null && m8785f.zza()) {
                return new WebResourceResponse("", "", m8785f.m8092k0());
            }
            if (di0.m15804j() && C7087vx.f31396b.m12799e().booleanValue()) {
                return m15718v(str, map);
            }
            return null;
        } catch (Exception | NoClassDefFoundError e) {
            C5667s.m18156h().m12235k(e, "AdWebViewClient.interceptRequest");
            return m15719u();
        }
    }

    @Override // com.google.android.gms.internal.ads.qa1
    /* renamed from: b */
    public final void mo7917b() {
        qa1 qa1Var = this.f21721o;
        if (qa1Var != null) {
            qa1Var.mo7917b();
        }
    }

    /* renamed from: b0 */
    public final void m15732b0(AbstractC5739u0 abstractC5739u0, dw1 dw1Var, rn1 rn1Var, jo2 jo2Var, String str, String str2, int i) {
        wn0 wn0Var = this.f21711e;
        m15727j0(new AdOverlayInfoParcel(wn0Var, wn0Var.zzt(), abstractC5739u0, dw1Var, rn1Var, jo2Var, str, str2, i));
    }

    @Override // com.google.android.gms.internal.ads.jp0
    /* renamed from: c */
    public final C5625b mo14087c() {
        return this.f21729w;
    }

    /* renamed from: d */
    public final void m15731d(boolean z) {
        this.f21722p = false;
    }

    /* renamed from: d0 */
    public final void m15730d0(boolean z, int i, boolean z2) {
        boolean m15741H = m15741H(this.f21711e.mo7932T(), this.f21711e);
        boolean z3 = true;
        if (!m15741H) {
            z3 = !z2;
        }
        AbstractC6673kq abstractC6673kq = m15741H ? null : this.f21715i;
        AbstractC5653o abstractC5653o = this.f21716j;
        AbstractC5659u abstractC5659u = this.f21727u;
        wn0 wn0Var = this.f21711e;
        m15727j0(new AdOverlayInfoParcel(abstractC6673kq, abstractC5653o, abstractC5659u, wn0Var, z, i, wn0Var.zzt(), z3 ? null : this.f21721o));
    }

    @Override // com.google.android.gms.internal.ads.jp0
    /* renamed from: e */
    public final boolean mo14086e() {
        boolean z;
        synchronized (this.f21714h) {
            z = this.f21724r;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.jp0
    /* renamed from: f0 */
    public final void mo14085f0(hp0 hp0Var) {
        this.f21717k = hp0Var;
    }

    @Override // com.google.android.gms.internal.ads.jp0
    /* renamed from: g */
    public final void mo14084g() {
        hf0 hf0Var = this.f21731y;
        if (hf0Var != null) {
            WebView mo7956F = this.f21711e.mo7956F();
            if (C1679w.m29314U(mo7956F)) {
                m15721q(mo7956F, hf0Var, 10);
                return;
            }
            m15720r();
            ao0 ao0Var = new ao0(this, hf0Var);
            this.f21710F = ao0Var;
            ((View) this.f21711e).addOnAttachStateChangeListener(ao0Var);
        }
    }

    /* renamed from: g0 */
    public final void m15729g0(boolean z, int i, String str, boolean z2) {
        boolean mo7932T = this.f21711e.mo7932T();
        boolean m15741H = m15741H(mo7932T, this.f21711e);
        boolean z3 = true;
        if (!m15741H) {
            z3 = !z2;
        }
        AbstractC6673kq abstractC6673kq = m15741H ? null : this.f21715i;
        co0 co0Var = mo7932T ? null : new co0(this.f21711e, this.f21716j);
        m10 m10Var = this.f21719m;
        o10 o10Var = this.f21720n;
        AbstractC5659u abstractC5659u = this.f21727u;
        wn0 wn0Var = this.f21711e;
        m15727j0(new AdOverlayInfoParcel(abstractC6673kq, co0Var, m10Var, o10Var, abstractC5659u, wn0Var, z, i, str, wn0Var.zzt(), z3 ? null : this.f21721o));
    }

    @Override // com.google.android.gms.internal.ads.jp0
    /* renamed from: h */
    public final void mo14083h() {
        synchronized (this.f21714h) {
        }
        this.f21707C++;
        m15735U();
    }

    @Override // com.google.android.gms.internal.ads.jp0
    /* renamed from: i */
    public final void mo14082i() {
        this.f21707C--;
        m15735U();
    }

    /* renamed from: i0 */
    public final void m15728i0(boolean z, int i, String str, String str2, boolean z2) {
        boolean mo7932T = this.f21711e.mo7932T();
        boolean m15741H = m15741H(mo7932T, this.f21711e);
        boolean z3 = true;
        if (!m15741H) {
            z3 = !z2;
        }
        AbstractC6673kq abstractC6673kq = m15741H ? null : this.f21715i;
        co0 co0Var = mo7932T ? null : new co0(this.f21711e, this.f21716j);
        m10 m10Var = this.f21719m;
        o10 o10Var = this.f21720n;
        AbstractC5659u abstractC5659u = this.f21727u;
        wn0 wn0Var = this.f21711e;
        m15727j0(new AdOverlayInfoParcel(abstractC6673kq, co0Var, m10Var, o10Var, abstractC5659u, wn0Var, z, i, str, str2, wn0Var.zzt(), z3 ? null : this.f21721o));
    }

    @Override // com.google.android.gms.internal.ads.jp0
    /* renamed from: j */
    public final void mo14081j() {
        C6854pm c6854pm = this.f21712f;
        if (c6854pm != null) {
            c6854pm.m12217c(10005);
        }
        this.f21706B = true;
        m15735U();
        this.f21711e.destroy();
    }

    /* renamed from: j0 */
    public final void m15727j0(AdOverlayInfoParcel adOverlayInfoParcel) {
        la0 la0Var = this.f21730x;
        boolean m13621k = la0Var != null ? la0Var.m13621k() : false;
        C5667s.m18161c();
        C5651m.m18186a(this.f21711e.getContext(), adOverlayInfoParcel, !m13621k);
        hf0 hf0Var = this.f21731y;
        if (hf0Var != null) {
            String str = adOverlayInfoParcel.f18326o;
            String str2 = str;
            if (str == null) {
                zzc zzcVar = adOverlayInfoParcel.f18315d;
                str2 = str;
                if (zzcVar != null) {
                    str2 = zzcVar.f18379e;
                }
            }
            hf0Var.mo14673y(str2);
        }
    }

    @Override // com.google.android.gms.internal.ads.jp0
    /* renamed from: k0 */
    public final void mo14080k0(boolean z) {
        synchronized (this.f21714h) {
            this.f21725s = true;
        }
    }

    /* renamed from: l */
    public final void m15726l(boolean z) {
        this.f21708D = z;
    }

    /* renamed from: n */
    public final /* synthetic */ void m15724n() {
        this.f21711e.mo7945M();
        BinderC5650l mo7938Q = this.f21711e.mo7938Q();
        if (mo7938Q != null) {
            mo7938Q.m18187w();
        }
    }

    /* renamed from: o0 */
    public final void m15723o0(String str, n20<? super wn0> n20Var) {
        synchronized (this.f21714h) {
            List<n20<? super wn0>> list = this.f21713g.get(str);
            List<n20<? super wn0>> list2 = list;
            if (list == null) {
                list2 = new CopyOnWriteArrayList<>();
                this.f21713g.put(str, list2);
            }
            list2.add(n20Var);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        String valueOf = String.valueOf(str);
        C5722o1.m17990k(valueOf.length() != 0 ? "Loading resource: ".concat(valueOf) : new String("Loading resource: "));
        Uri parse = Uri.parse(str);
        if (!"gmsg".equalsIgnoreCase(parse.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            return;
        }
        mo14076y0(parse);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.f21714h) {
            if (this.f21711e.mo7905h0()) {
                C5722o1.m17990k("Blank page loaded, 1...");
                this.f21711e.mo7927W0();
                return;
            }
            this.f21705A = true;
            ip0 ip0Var = this.f21718l;
            if (ip0Var != null) {
                ip0Var.mo14328b();
                this.f21718l = null;
            }
            m15735U();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        this.f21723q = true;
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.f21711e.mo7881w0(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    /* renamed from: p */
    public final /* synthetic */ void m15722p(View view, hf0 hf0Var, int i) {
        m15721q(view, hf0Var, i - 1);
    }

    @Override // com.google.android.gms.internal.ads.jp0
    /* renamed from: q0 */
    public final void mo14079q0(AbstractC6673kq abstractC6673kq, m10 m10Var, AbstractC5653o abstractC5653o, o10 o10Var, AbstractC5659u abstractC5659u, boolean z, q20 q20Var, C5625b c5625b, sa0 sa0Var, hf0 hf0Var, dw1 dw1Var, bp2 bp2Var, rn1 rn1Var, jo2 jo2Var, o20 o20Var, qa1 qa1Var) {
        if (c5625b == null) {
            c5625b = new C5625b(this.f21711e.getContext(), hf0Var, null);
        }
        this.f21730x = new la0(this.f21711e, sa0Var);
        this.f21731y = hf0Var;
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25452C0)).booleanValue()) {
            m15723o0("/adMetadata", new l10(m10Var));
        }
        if (o10Var != null) {
            m15723o0("/appEvent", new n10(o10Var));
        }
        m15723o0("/backButton", m20.f26392j);
        m15723o0("/refresh", m20.f26393k);
        m15723o0("/canOpenApp", m20.f26384b);
        m15723o0("/canOpenURLs", m20.f26383a);
        m15723o0("/canOpenIntents", m20.f26385c);
        m15723o0("/close", m20.f26386d);
        m15723o0("/customClose", m20.f26387e);
        m15723o0("/instrument", m20.f26396n);
        m15723o0("/delayPageLoaded", m20.f26398p);
        m15723o0("/delayPageClosed", m20.f26399q);
        m15723o0("/getLocationInfo", m20.f26400r);
        m15723o0("/log", m20.f26389g);
        m15723o0("/mraid", new u20(c5625b, this.f21730x, sa0Var));
        qa0 qa0Var = this.f21728v;
        if (qa0Var != null) {
            m15723o0("/mraidLoaded", qa0Var);
        }
        m15723o0("/open", new z20(c5625b, this.f21730x, dw1Var, rn1Var, jo2Var));
        m15723o0("/precache", new lm0());
        m15723o0("/touch", m20.f26391i);
        m15723o0("/video", m20.f26394l);
        m15723o0("/videoMeta", m20.f26395m);
        if (dw1Var == null || bp2Var == null) {
            m15723o0("/click", m20.m13374b(qa1Var));
            m15723o0("/httpTrack", m20.f26388f);
        } else {
            m15723o0("/click", gk2.m14916a(dw1Var, bp2Var, qa1Var));
            m15723o0("/httpTrack", gk2.m14915b(dw1Var, bp2Var));
        }
        if (C5667s.m18163a().m13546g(this.f21711e.getContext())) {
            m15723o0("/logScionEvent", new t20(this.f21711e.getContext()));
        }
        if (q20Var != null) {
            m15723o0("/setInterstitialProperties", new p20(q20Var, null));
        }
        if (o20Var != null) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25773p6)).booleanValue()) {
                m15723o0("/inspectorNetworkExtras", o20Var);
            }
        }
        this.f21715i = abstractC6673kq;
        this.f21716j = abstractC5653o;
        this.f21719m = m10Var;
        this.f21720n = o10Var;
        this.f21727u = abstractC5659u;
        this.f21729w = c5625b;
        this.f21721o = qa1Var;
        this.f21722p = z;
        this.f21732z = bp2Var;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return m15733a(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
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
        C5722o1.m17990k(valueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(valueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            mo14076y0(parse);
            return true;
        }
        if (this.f21722p && webView == this.f21711e.mo7956F()) {
            String scheme = parse.getScheme();
            if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                AbstractC6673kq abstractC6673kq = this.f21715i;
                if (abstractC6673kq != null) {
                    abstractC6673kq.mo7877z0();
                    hf0 hf0Var = this.f21731y;
                    if (hf0Var != null) {
                        hf0Var.mo14673y(str);
                    }
                    this.f21715i = null;
                }
                qa1 qa1Var = this.f21721o;
                if (qa1Var != null) {
                    qa1Var.mo7917b();
                    this.f21721o = null;
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
        }
        if (this.f21711e.mo7956F().willNotDraw()) {
            String valueOf2 = String.valueOf(str);
            ei0.m15464f(valueOf2.length() != 0 ? "AdWebView unable to handle URL: ".concat(valueOf2) : new String("AdWebView unable to handle URL: "));
            return true;
        }
        try {
            C7016u mo7966A = this.f21711e.mo7966A();
            uri = parse;
            if (mo7966A != null) {
                uri = parse;
                if (mo7966A.m10451a(parse)) {
                    Context context = this.f21711e.getContext();
                    wn0 wn0Var = this.f21711e;
                    uri = mo7966A.m10447e(parse, context, (View) wn0Var, wn0Var.mo7908g());
                }
            }
        } catch (zzaat e) {
            String valueOf3 = String.valueOf(str);
            ei0.m15464f(valueOf3.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf3) : new String("Unable to append parameter to URL: "));
            uri = parse;
        }
        C5625b c5625b = this.f21729w;
        if (c5625b == null || c5625b.m18222b()) {
            m15734Y(new zzc("android.intent.action.VIEW", uri.toString(), null, null, null, null, null, null), true);
            return true;
        }
        this.f21729w.m18221c(str);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.jp0
    /* renamed from: t */
    public final void mo14078t() {
        synchronized (this.f21714h) {
            this.f21722p = false;
            this.f21724r = true;
            qi0.f28499e.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.yn0

                /* renamed from: d */
                private final do0 f32553d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32553d = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f32553d.m15724n();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.jp0
    /* renamed from: u0 */
    public final void mo14077u0(boolean z) {
        synchronized (this.f21714h) {
            this.f21726t = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.jp0
    /* renamed from: y0 */
    public final void mo14076y0(Uri uri) {
        String path = uri.getPath();
        List<n20<? super wn0>> list = this.f21713g.get(path);
        if (path == null || list == null) {
            String valueOf = String.valueOf(uri);
            valueOf.length();
            C5722o1.m17990k("No GMSG handler found for GMSG: ".concat(valueOf));
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25649a5)).booleanValue() || C5667s.m18156h().m12241e() == null) {
                return;
            }
            qi0.f28495a.execute(new Runnable((path == null || path.length() < 2) ? "null" : path.substring(1)) { // from class: com.google.android.gms.internal.ads.zn0

                /* renamed from: d */
                private final String f33006d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f33006d = substring;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    String str = this.f33006d;
                    int i = do0.f21704d;
                    C5667s.m18156h().m12241e().m12116e(str);
                }
            });
            return;
        }
        String encodedQuery = uri.getEncodedQuery();
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25591T3)).booleanValue() && this.f21709E.contains(path) && encodedQuery != null) {
            if (encodedQuery.length() >= ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25607V3)).intValue()) {
                C5722o1.m17990k(path.length() != 0 ? "Parsing gmsg query params on BG thread: ".concat(path) : new String("Parsing gmsg query params on BG thread: "));
                k03.m13988p(C5667s.m18160d().m18088T(uri), new bo0(this, list, path, uri), qi0.f28499e);
                return;
            }
        }
        C5667s.m18160d();
        m15717y(C5679c2.m18057r(uri), list, path);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6673kq
    /* renamed from: z0 */
    public final void mo7877z0() {
        AbstractC6673kq abstractC6673kq = this.f21715i;
        if (abstractC6673kq != null) {
            abstractC6673kq.mo7877z0();
        }
    }
}
