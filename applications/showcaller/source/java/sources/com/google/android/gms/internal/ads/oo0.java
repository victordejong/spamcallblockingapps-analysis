package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.AbstractC5634k;
import com.google.android.gms.ads.internal.C5624a;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.overlay.BinderC5650l;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.util.AbstractC5739u0;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.util.C5716m1;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.common.util.AbstractC6238p;
import com.google.android.gms.common.util.C6237o;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oo0.class */
final class oo0 extends WebView implements DownloadListener, ViewTreeObserver.OnGlobalLayoutListener, wn0 {

    /* renamed from: d */
    public static final /* synthetic */ int f27606d = 0;

    /* renamed from: C */
    private ro0 f27609C;

    /* renamed from: D */
    private boolean f27610D;

    /* renamed from: E */
    private boolean f27611E;

    /* renamed from: F */
    private AbstractC7014ty f27612F;

    /* renamed from: G */
    private AbstractC6903qy f27613G;

    /* renamed from: H */
    private AbstractC6445el f27614H;

    /* renamed from: I */
    private int f27615I;

    /* renamed from: J */
    private int f27616J;

    /* renamed from: K */
    private C7123ww f27617K;

    /* renamed from: L */
    private final C7123ww f27618L;

    /* renamed from: M */
    private C7123ww f27619M;

    /* renamed from: N */
    private final C7160xw f27620N;

    /* renamed from: O */
    private int f27621O;

    /* renamed from: P */
    private int f27622P;

    /* renamed from: Q */
    private int f27623Q;

    /* renamed from: R */
    private BinderC5650l f27624R;

    /* renamed from: S */
    private boolean f27625S;

    /* renamed from: T */
    private final C5716m1 f27626T;

    /* renamed from: b0 */
    private Map<String, km0> f27631b0;

    /* renamed from: c0 */
    private final WindowManager f27632c0;

    /* renamed from: d0 */
    private final C6854pm f27633d0;

    /* renamed from: e */
    private final lp0 f27634e;

    /* renamed from: f */
    private final C7016u f27635f;

    /* renamed from: g */
    private final C6680kx f27636g;

    /* renamed from: h */
    private final zzcgz f27637h;

    /* renamed from: i */
    private AbstractC5634k f27638i;

    /* renamed from: j */
    private final C5624a f27639j;

    /* renamed from: k */
    private final DisplayMetrics f27640k;

    /* renamed from: l */
    private final float f27641l;

    /* renamed from: m */
    private ej2 f27642m;

    /* renamed from: n */
    private jj2 f27643n;

    /* renamed from: q */
    private do0 f27646q;

    /* renamed from: r */
    private BinderC5650l f27647r;

    /* renamed from: s */
    private AbstractC6253a f27648s;

    /* renamed from: t */
    private mp0 f27649t;

    /* renamed from: u */
    private final String f27650u;

    /* renamed from: v */
    private boolean f27651v;

    /* renamed from: w */
    private boolean f27652w;

    /* renamed from: x */
    private boolean f27653x;

    /* renamed from: y */
    private boolean f27654y;

    /* renamed from: z */
    private Boolean f27655z;

    /* renamed from: o */
    private boolean f27644o = false;

    /* renamed from: p */
    private boolean f27645p = false;

    /* renamed from: A */
    private boolean f27607A = true;

    /* renamed from: B */
    private final String f27608B = "";

    /* renamed from: U */
    private int f27627U = -1;

    /* renamed from: V */
    private int f27628V = -1;

    /* renamed from: W */
    private int f27629W = -1;

    /* renamed from: a0 */
    private int f27630a0 = -1;

    public oo0(lp0 lp0Var, mp0 mp0Var, String str, boolean z, boolean z2, C7016u c7016u, C6680kx c6680kx, zzcgz zzcgzVar, C6308ax c6308ax, AbstractC5634k abstractC5634k, C5624a c5624a, C6854pm c6854pm, ej2 ej2Var, jj2 jj2Var) {
        super(lp0Var);
        jj2 jj2Var2;
        this.f27634e = lp0Var;
        this.f27649t = mp0Var;
        this.f27650u = str;
        this.f27653x = z;
        this.f27635f = c7016u;
        this.f27636g = c6680kx;
        this.f27637h = zzcgzVar;
        this.f27638i = abstractC5634k;
        this.f27639j = c5624a;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.f27632c0 = windowManager;
        C5667s.m18160d();
        DisplayMetrics m18070f0 = C5679c2.m18070f0(windowManager);
        this.f27640k = m18070f0;
        this.f27641l = m18070f0.density;
        this.f27633d0 = c6854pm;
        this.f27642m = ej2Var;
        this.f27643n = jj2Var;
        this.f27626T = new C5716m1(lp0Var.m13461a(), this, this, null);
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            ei0.m15466d("Unable to enable Javascript.", e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(2);
        }
        settings.setUserAgentString(C5667s.m18160d().m18092P(lp0Var, zzcgzVar.f33854d));
        C5667s.m18158f().mo18038a(getContext(), settings);
        setDownloadListener(this);
        m12578q1();
        if (C6237o.m16780d()) {
            addJavascriptInterface(new wo0(this, new vo0(this) { // from class: com.google.android.gms.internal.ads.to0

                /* renamed from: a */
                private final wn0 f30092a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f30092a = this;
                }

                @Override // com.google.android.gms.internal.ads.vo0
                /* renamed from: a */
                public final void mo9923a(Uri uri) {
                    do0 m12583l1 = ((oo0) this.f30092a).m12583l1();
                    if (m12583l1 == null) {
                        ei0.m15467c("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
                    } else {
                        m12583l1.mo14076y0(uri);
                    }
                }
            }), "googleAdsJsInterface");
        }
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        m12573v1();
        C7160xw c7160xw = new C7160xw(new C6308ax(true, "make_wv", this.f27650u));
        this.f27620N = c7160xw;
        c7160xw.m9038c().m16475a(null);
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25736l1)).booleanValue() && (jj2Var2 = this.f27643n) != null && jj2Var2.f24897b != null) {
            c7160xw.m9038c().m16472d("gqi", this.f27643n.f24897b);
        }
        c7160xw.m9038c();
        C7123ww m16470f = C6308ax.m16470f();
        this.f27618L = m16470f;
        c7160xw.m9040a("native:view_create", m16470f);
        this.f27619M = null;
        this.f27617K = null;
        C5667s.m18158f().mo18036c(lp0Var);
        C5667s.m18156h().m12233m();
    }

    /* renamed from: n1 */
    private final void m12581n1(String str) {
        synchronized (this) {
            try {
                super.loadUrl("about:blank");
            } catch (Throwable th) {
                C5667s.m18156h().m12235k(th, "AdWebViewImpl.loadUrlUnsafe");
                ei0.m15463g("Could not call loadUrl in destroy(). ", th);
            }
        }
    }

    /* renamed from: o1 */
    private final void m12580o1() {
        synchronized (this) {
            Boolean m12239g = C5667s.m18156h().m12239g();
            this.f27655z = m12239g;
            if (m12239g == null) {
                try {
                    evaluateJavascript("(function(){})()", null);
                    m12585j1(Boolean.TRUE);
                } catch (IllegalStateException e) {
                    m12585j1(Boolean.FALSE);
                }
            }
        }
    }

    /* renamed from: p1 */
    private final void m12579p1() {
        C6938rw.m11264a(this.f27620N.m9038c(), this.f27618L, "aeh2");
    }

    /* renamed from: q1 */
    private final void m12578q1() {
        synchronized (this) {
            ej2 ej2Var = this.f27642m;
            if (ej2Var != null && ej2Var.f22238j0) {
                ei0.m15469a("Disabling hardware acceleration on an overlay.");
                m12577r1();
                return;
            }
            if (!this.f27653x && !this.f27649t.m13128g()) {
                if (Build.VERSION.SDK_INT < 18) {
                    ei0.m15469a("Disabling hardware acceleration on an AdView.");
                    m12577r1();
                    return;
                }
                ei0.m15469a("Enabling hardware acceleration on an AdView.");
                m12576s1();
                return;
            }
            ei0.m15469a("Enabling hardware acceleration on an overlay.");
            m12576s1();
        }
    }

    /* renamed from: r1 */
    private final void m12577r1() {
        synchronized (this) {
            if (!this.f27654y) {
                setLayerType(1, null);
            }
            this.f27654y = true;
        }
    }

    /* renamed from: s1 */
    private final void m12576s1() {
        synchronized (this) {
            if (this.f27654y) {
                setLayerType(0, null);
            }
            this.f27654y = false;
        }
    }

    /* renamed from: t1 */
    private final void m12575t1() {
        synchronized (this) {
            if (!this.f27625S) {
                this.f27625S = true;
                C5667s.m18156h().m12232n();
            }
        }
    }

    /* renamed from: u1 */
    private final void m12574u1() {
        synchronized (this) {
            Map<String, km0> map = this.f27631b0;
            if (map != null) {
                for (km0 km0Var : map.values()) {
                    km0Var.mo10626b();
                }
            }
            this.f27631b0 = null;
        }
    }

    /* renamed from: v1 */
    private final void m12573v1() {
        C7160xw c7160xw = this.f27620N;
        if (c7160xw == null) {
            return;
        }
        C6308ax m9038c = c7160xw.m9038c();
        C6864pw m12241e = C5667s.m18156h().m12241e();
        if (m12241e == null) {
            return;
        }
        m12241e.m12119b(m9038c);
    }

    /* renamed from: w1 */
    private final void m12572w1(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", true != z ? "0" : "1");
        mo7959D0("onAdVisibilityChanged", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.ep0
    /* renamed from: A */
    public final C7016u mo7966A() {
        return this.f27635f;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: A0 */
    public final void mo7965A0(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            this.f27648s = abstractC6253a;
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.so0
    /* renamed from: B */
    public final jj2 mo7964B() {
        return this.f27643n;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: B0 */
    public final boolean mo7963B0() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: C */
    public final void mo7962C() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.bp0
    /* renamed from: C0 */
    public final void mo7961C0(zzc zzcVar, boolean z) {
        this.f27646q.m15734Y(zzcVar, z);
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.gp0
    /* renamed from: D */
    public final View mo7960D() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.s40
    /* renamed from: D0 */
    public final void mo7959D0(String str, Map<String, ?> map) {
        try {
            mo7920a(str, C5667s.m18160d().m18091Q(map));
        } catch (JSONException e) {
            ei0.m15464f("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: E */
    public final String mo7958E() {
        String str;
        synchronized (this) {
            str = this.f27650u;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.g50
    /* renamed from: E0 */
    public final void mo7957E0(String str, JSONObject jSONObject) {
        mo7890r(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: F */
    public final WebView mo7956F() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: F0 */
    public final WebViewClient mo7955F0() {
        return this.f27646q;
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.kk0
    /* renamed from: G */
    public final void mo7954G(String str, km0 km0Var) {
        synchronized (this) {
            if (this.f27631b0 == null) {
                this.f27631b0 = new HashMap();
            }
            this.f27631b0.put(str, km0Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: H */
    public final int mo7953H() {
        return this.f27622P;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: H0 */
    public final void mo7952H0(BinderC5650l binderC5650l) {
        synchronized (this) {
            this.f27624R = binderC5650l;
        }
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: I */
    public final int mo7951I() {
        return this.f27623Q;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: I0 */
    public final void mo7950I0(mp0 mp0Var) {
        synchronized (this) {
            this.f27649t = mp0Var;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: J0 */
    public final void mo7949J0(BinderC5650l binderC5650l) {
        synchronized (this) {
            this.f27647r = binderC5650l;
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: K */
    public final void mo7948K() {
        if (this.f27619M == null) {
            this.f27620N.m9038c();
            C7123ww m16470f = C6308ax.m16470f();
            this.f27619M = m16470f;
            this.f27620N.m9040a("native:view_load", m16470f);
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: L */
    public final AbstractC7014ty mo7947L() {
        AbstractC7014ty abstractC7014ty;
        synchronized (this) {
            abstractC7014ty = this.f27612F;
        }
        return abstractC7014ty;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: L0 */
    public final boolean mo7946L0() {
        boolean z;
        synchronized (this) {
            z = this.f27651v;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: M */
    public final void mo7945M() {
        this.f27626T.m17998b();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: M0 */
    public final void mo7944M0(boolean z) {
        synchronized (this) {
            if (z) {
                setBackgroundColor(0);
            }
            BinderC5650l binderC5650l = this.f27647r;
            if (binderC5650l != null) {
                binderC5650l.m18194L6(z);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: N */
    public final void mo7943N(int i) {
        this.f27622P = i;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: N0 */
    public final void mo7942N0(ej2 ej2Var, jj2 jj2Var) {
        this.f27642m = ej2Var;
        this.f27643n = jj2Var;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: O0 */
    public final void mo7941O0(AbstractC6903qy abstractC6903qy) {
        synchronized (this) {
            this.f27613G = abstractC6903qy;
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: P */
    public final void mo7940P() {
        m12579p1();
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f27637h.f33854d);
        mo7959D0("onhide", hashMap);
    }

    @Override // com.google.android.gms.ads.internal.AbstractC5634k
    /* renamed from: P0 */
    public final void mo7939P0() {
        synchronized (this) {
            AbstractC5634k abstractC5634k = this.f27638i;
            if (abstractC5634k != null) {
                abstractC5634k.mo7939P0();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: Q */
    public final BinderC5650l mo7938Q() {
        BinderC5650l binderC5650l;
        synchronized (this) {
            binderC5650l = this.f27647r;
        }
        return binderC5650l;
    }

    @Override // com.google.android.gms.internal.ads.bp0
    /* renamed from: Q0 */
    public final void mo7937Q0(boolean z, int i, String str, String str2, boolean z2) {
        this.f27646q.m15728i0(z, i, str, str2, z2);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: R */
    public final void mo7936R() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: R0 */
    public final void mo7935R0(AbstractC6445el abstractC6445el) {
        synchronized (this) {
            this.f27614H = abstractC6445el;
        }
    }

    @Override // com.google.android.gms.internal.ads.bp0
    /* renamed from: S */
    public final void mo7934S(AbstractC5739u0 abstractC5739u0, dw1 dw1Var, rn1 rn1Var, jo2 jo2Var, String str, String str2, int i) {
        this.f27646q.m15732b0(abstractC5739u0, dw1Var, rn1Var, jo2Var, str, str2, i);
    }

    @Override // com.google.android.gms.internal.ads.bp0
    /* renamed from: S0 */
    public final void mo7933S0(boolean z, int i, boolean z2) {
        this.f27646q.m15730d0(z, i, z2);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: T */
    public final boolean mo7932T() {
        boolean z;
        synchronized (this) {
            z = this.f27653x;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: T0 */
    public final void mo7931T0(int i) {
        synchronized (this) {
            this.f27621O = i;
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: U0 */
    public final boolean mo7930U0() {
        boolean z;
        synchronized (this) {
            z = this.f27615I > 0;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: V0 */
    public final void mo7929V0(boolean z) {
        synchronized (this) {
            this.f27607A = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: W */
    public final void mo7928W() {
        if (this.f27617K == null) {
            C6938rw.m11264a(this.f27620N.m9038c(), this.f27618L, "aes2");
            this.f27620N.m9038c();
            C7123ww m16470f = C6308ax.m16470f();
            this.f27617K = m16470f;
            this.f27620N.m9040a("native:view_show", m16470f);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f27637h.f33854d);
        mo7959D0("onshow", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: W0 */
    public final void mo7927W0() {
        synchronized (this) {
            C5722o1.m17990k("Destroying WebView!");
            m12575t1();
            C5679c2.f18451a.post(new no0(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: X */
    public final r03<String> mo7926X() {
        C6680kx c6680kx = this.f27636g;
        return c6680kx == null ? k03.m14003a(null) : c6680kx.m13761b();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: X0 */
    public final void mo7925X0(String str, AbstractC6238p<n20<? super wn0>> abstractC6238p) {
        do0 do0Var = this.f27646q;
        if (do0Var != null) {
            do0Var.m15743D0(str, abstractC6238p);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6888qj
    /* renamed from: Y */
    public final void mo7924Y(C6851pj c6851pj) {
        boolean z;
        synchronized (this) {
            z = c6851pj.f28023j;
            this.f27610D = z;
        }
        m12572w1(z);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: Y0 */
    public final void mo7923Y0(boolean z) {
        synchronized (this) {
            boolean z2 = this.f27653x;
            this.f27653x = z;
            m12578q1();
            if (z != z2) {
                if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25523L)).booleanValue() || !this.f27649t.m13128g()) {
                    new ra0(this, "").m11617f(true != z ? "default" : "expanded");
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: Z */
    public final void mo7922Z(int i) {
        synchronized (this) {
            BinderC5650l binderC5650l = this.f27647r;
            if (binderC5650l != null) {
                binderC5650l.m18193M6(i);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.AbstractC5634k
    /* renamed from: Z0 */
    public final void mo7921Z0() {
        synchronized (this) {
            AbstractC5634k abstractC5634k = this.f27638i;
            if (abstractC5634k != null) {
                abstractC5634k.mo7921Z0();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.s40, com.google.android.gms.internal.ads.u40
    /* renamed from: a */
    public final void mo7920a(String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        String jSONObject3 = jSONObject2.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("',");
        sb.append(jSONObject3);
        sb.append(");");
        String sb2 = sb.toString();
        ei0.m15469a(sb2.length() != 0 ? "Dispatching AFMA event: ".concat(sb2) : new String("Dispatching AFMA event: "));
        m12586i1(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: a0 */
    public final void mo7919a0(boolean z) {
        this.f27646q.m15726l(z);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: a1 */
    public final boolean mo7918a1() {
        boolean z;
        synchronized (this) {
            z = this.f27607A;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.qa1
    /* renamed from: b */
    public final void mo7917b() {
        do0 do0Var = this.f27646q;
        if (do0Var != null) {
            do0Var.mo7917b();
        }
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: b0 */
    public final void mo7916b0(boolean z) {
        this.f27646q.m15731d(false);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: b1 */
    public final void mo7915b1(String str, String str2, String str3) {
        String str4;
        synchronized (this) {
            if (mo7905h0()) {
                ei0.m15464f("#004 The webview is destroyed. Ignoring action.");
                return;
            }
            String str5 = (String) C7192yr.m8714c().m14263c(C6679kw.f25515K);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("version", str5);
                jSONObject.put("sdk", "Google Mobile Ads");
                jSONObject.put("sdkVersion", "12.4.51-000");
                str4 = "<script>Object.defineProperty(window,'MRAID_ENV',{get:function(){return " + jSONObject.toString() + "}});</script>";
            } catch (JSONException e) {
                ei0.m15463g("Unable to build MRAID_ENV", e);
                str4 = null;
            }
            super.loadDataWithBaseURL(str, cp0.m16000a(str2, str4), "text/html", "UTF-8", null);
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: c0 */
    public final /* bridge */ /* synthetic */ jp0 mo7914c0() {
        return this.f27646q;
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: c1 */
    public final void mo7913c1(boolean z, long j) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("success", true != z ? "0" : "1");
        hashMap.put("duration", Long.toString(j));
        mo7959D0("onCacheAccessComplete", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: d */
    public final yj0 mo7912d() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: d0 */
    public final void mo7911d0(int i) {
        this.f27623Q = i;
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.wn0
    public final void destroy() {
        synchronized (this) {
            m12573v1();
            this.f27626T.m17997c();
            BinderC5650l binderC5650l = this.f27647r;
            if (binderC5650l != null) {
                binderC5650l.m18189b();
                this.f27647r.mo13933k();
                this.f27647r = null;
            }
            this.f27648s = null;
            this.f27646q.m15742E0();
            this.f27614H = null;
            this.f27638i = null;
            setOnClickListener(null);
            setOnTouchListener(null);
            if (this.f27652w) {
                return;
            }
            C5667s.m18138z().m16021c(this);
            m12574u1();
            this.f27652w = true;
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25669c7)).booleanValue()) {
                C5722o1.m17990k("Destroying the WebView immediately...");
                mo7927W0();
                return;
            }
            C5722o1.m17990k("Initiating WebView self destruct sequence in 3...");
            C5722o1.m17990k("Loading blank page in WebView, 2...");
            m12581n1("about:blank");
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: e0 */
    public final void mo7910e0(String str, n20<? super wn0> n20Var) {
        do0 do0Var = this.f27646q;
        if (do0Var != null) {
            do0Var.m15744C0(str, n20Var);
        }
    }

    @Override // android.webkit.WebView
    @TargetApi(19)
    public final void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        synchronized (this) {
            if (!mo7905h0()) {
                super.evaluateJavascript(str, valueCallback);
                return;
            }
            ei0.m15461i("#004 The webview is destroyed. Ignoring action.", null);
            if (valueCallback == null) {
                return;
            }
            valueCallback.onReceiveValue(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.kk0
    /* renamed from: f */
    public final ro0 mo7909f() {
        ro0 ro0Var;
        synchronized (this) {
            ro0Var = this.f27609C;
        }
        return ro0Var;
    }

    /* renamed from: f1 */
    public final boolean m12589f1() {
        int i;
        int i2;
        boolean z = false;
        if (this.f27646q.mo14086e() || this.f27646q.m15740I()) {
            C7118wr.m9485a();
            DisplayMetrics displayMetrics = this.f27640k;
            int m9163o = xh0.m9163o(displayMetrics, displayMetrics.widthPixels);
            C7118wr.m9485a();
            DisplayMetrics displayMetrics2 = this.f27640k;
            int m9163o2 = xh0.m9163o(displayMetrics2, displayMetrics2.heightPixels);
            Activity m13461a = this.f27634e.m13461a();
            if (m13461a == null || m13461a.getWindow() == null) {
                i2 = m9163o;
                i = m9163o2;
            } else {
                C5667s.m18160d();
                int[] m18055t = C5679c2.m18055t(m13461a);
                C7118wr.m9485a();
                i2 = xh0.m9163o(this.f27640k, m18055t[0]);
                C7118wr.m9485a();
                i = xh0.m9163o(this.f27640k, m18055t[1]);
            }
            int i3 = this.f27628V;
            if (i3 == m9163o && this.f27627U == m9163o2 && this.f27629W == i2 && this.f27630a0 == i) {
                return false;
            }
            if (i3 != m9163o || this.f27627U != m9163o2) {
                z = true;
            }
            this.f27628V = m9163o;
            this.f27627U = m9163o2;
            this.f27629W = i2;
            this.f27630a0 = i;
            new ra0(this, "").m11616g(m9163o, m9163o2, i2, i, this.f27640k.density, this.f27632c0.getDefaultDisplay().getRotation());
            return z;
        }
        return false;
    }

    protected final void finalize() {
        try {
            synchronized (this) {
                if (!this.f27652w) {
                    this.f27646q.m15742E0();
                    C5667s.m18138z().m16021c(this);
                    m12574u1();
                    m12575t1();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.xo0, com.google.android.gms.internal.ads.kk0
    /* renamed from: g */
    public final Activity mo7908g() {
        return this.f27634e.m13461a();
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: g0 */
    public final km0 mo7907g0(String str) {
        synchronized (this) {
            Map<String, km0> map = this.f27631b0;
            if (map == null) {
                return null;
            }
            return map.get(str);
        }
    }

    /* renamed from: g1 */
    protected final void m12588g1(String str) {
        synchronized (this) {
            if (!mo7905h0()) {
                loadUrl(str);
            } else {
                ei0.m15464f("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.kk0
    /* renamed from: h */
    public final C5624a mo7906h() {
        return this.f27639j;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: h0 */
    public final boolean mo7905h0() {
        boolean z;
        synchronized (this) {
            z = this.f27652w;
        }
        return z;
    }

    @TargetApi(19)
    /* renamed from: h1 */
    protected final void m12587h1(String str, ValueCallback<String> valueCallback) {
        synchronized (this) {
            if (!mo7905h0()) {
                evaluateJavascript(str, null);
            } else {
                ei0.m15464f("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: i */
    public final void mo7904i() {
        BinderC5650l mo7938Q = mo7938Q();
        if (mo7938Q != null) {
            mo7938Q.m18201H();
        }
    }

    /* renamed from: i1 */
    public final void m12586i1(String str) {
        if (!C6237o.m16778f()) {
            m12588g1(str.length() != 0 ? "javascript:".concat(str) : new String("javascript:"));
            return;
        }
        if (m12584k1() == null) {
            m12580o1();
        }
        if (m12584k1().booleanValue()) {
            m12587h1(str, null);
        } else {
            m12588g1(str.length() != 0 ? "javascript:".concat(str) : new String("javascript:"));
        }
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: j */
    public final String mo7903j() {
        String str;
        synchronized (this) {
            str = this.f27608B;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: j0 */
    public final void mo7902j0(int i) {
    }

    /* renamed from: j1 */
    final void m12585j1(Boolean bool) {
        synchronized (this) {
            this.f27655z = bool;
        }
        C5667s.m18156h().m12240f(bool);
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.kk0
    /* renamed from: k */
    public final C7160xw mo7901k() {
        return this.f27620N;
    }

    /* renamed from: k1 */
    final Boolean m12584k1() {
        Boolean bool;
        synchronized (this) {
            bool = this.f27655z;
        }
        return bool;
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: l */
    public final int mo7900l() {
        int i;
        synchronized (this) {
            i = this.f27621O;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: l0 */
    public final void mo7899l0(String str, n20<? super wn0> n20Var) {
        do0 do0Var = this.f27646q;
        if (do0Var != null) {
            do0Var.m15723o0(str, n20Var);
        }
    }

    /* renamed from: l1 */
    public final do0 m12583l1() {
        return this.f27646q;
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.wn0
    public final void loadData(String str, String str2, String str3) {
        synchronized (this) {
            if (!mo7905h0()) {
                super.loadData(str, str2, str3);
            } else {
                ei0.m15464f("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.wn0
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            if (!mo7905h0()) {
                super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            } else {
                ei0.m15464f("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.wn0
    public final void loadUrl(String str) {
        synchronized (this) {
            if (!mo7905h0()) {
                super.loadUrl(str);
            } else {
                ei0.m15464f("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: m */
    public final String mo7898m() {
        synchronized (this) {
            jj2 jj2Var = this.f27643n;
            if (jj2Var != null) {
                return jj2Var.f24897b;
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: m0 */
    public final void mo7897m0(AbstractC7014ty abstractC7014ty) {
        synchronized (this) {
            this.f27612F = abstractC7014ty;
        }
    }

    @Override // com.google.android.gms.internal.ads.g50, com.google.android.gms.internal.ads.u40
    /* renamed from: n */
    public final void mo7896n(String str) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: n0 */
    public final void mo7895n0(boolean z) {
        synchronized (this) {
            BinderC5650l binderC5650l = this.f27647r;
            if (binderC5650l != null) {
                binderC5650l.m18195K6(this.f27646q.mo14086e(), z);
            } else {
                this.f27651v = z;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.dp0
    /* renamed from: o */
    public final mp0 mo7894o() {
        mp0 mp0Var;
        synchronized (this) {
            mp0Var = this.f27649t;
        }
        return mp0Var;
    }

    @Override // com.google.android.gms.internal.ads.bp0
    /* renamed from: o0 */
    public final void mo7893o0(boolean z, int i, String str, boolean z2) {
        this.f27646q.m15729g0(z, i, str, z2);
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        synchronized (this) {
            super.onAttachedToWindow();
            if (!mo7905h0()) {
                this.f27626T.m17996d();
            }
            boolean z = this.f27610D;
            do0 do0Var = this.f27646q;
            boolean z2 = z;
            if (do0Var != null) {
                z2 = z;
                if (do0Var.m15740I()) {
                    if (!this.f27611E) {
                        this.f27646q.m15738N();
                        this.f27646q.m15737O();
                        this.f27611E = true;
                    }
                    m12589f1();
                    z2 = true;
                }
            }
            m12572w1(z2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        do0 do0Var;
        synchronized (this) {
            if (!mo7905h0()) {
                this.f27626T.m17995e();
            }
            super.onDetachedFromWindow();
            if (this.f27611E && (do0Var = this.f27646q) != null && do0Var.m15740I() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.f27646q.m15738N();
                this.f27646q.m15737O();
                this.f27611E = false;
            }
        }
        m12572w1(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            C5667s.m18160d();
            C5679c2.m18059p(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(str4).length());
            sb.append("Couldn't find an Activity to view url/mimetype: ");
            sb.append(str);
            sb.append(" / ");
            sb.append(str4);
            ei0.m15469a(sb.toString());
        }
    }

    @Override // android.webkit.WebView, android.view.View
    @TargetApi(21)
    protected final void onDraw(Canvas canvas) {
        if (mo7905h0()) {
            return;
        }
        if (Build.VERSION.SDK_INT == 21 && canvas.isHardwareAccelerated() && !isAttachedToWindow()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue > 0.0f && !canScrollVertically(-1)) {
                return false;
            }
            if (axisValue < 0.0f && !canScrollVertically(1)) {
                return false;
            }
            if (axisValue2 > 0.0f && !canScrollHorizontally(-1)) {
                return false;
            }
            if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean m12589f1 = m12589f1();
        BinderC5650l mo7938Q = mo7938Q();
        if (mo7938Q == null || !m12589f1) {
            return;
        }
        mo7938Q.m18202G6();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x023c A[Catch: all -> 0x038a, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x000e, B:10:0x0017, B:12:0x001e, B:14:0x0025, B:17:0x0032, B:19:0x003c, B:22:0x0045, B:24:0x004f, B:26:0x0065, B:29:0x006e, B:31:0x0079, B:35:0x008d, B:38:0x0096, B:51:0x0101, B:54:0x0115, B:56:0x011f, B:58:0x0135, B:61:0x013e, B:65:0x017c, B:67:0x0182, B:70:0x018b, B:73:0x0194, B:75:0x019e, B:78:0x01b5, B:90:0x0200, B:92:0x020f, B:97:0x0223, B:99:0x022b, B:101:0x023c, B:104:0x025e, B:115:0x028b, B:117:0x031f, B:119:0x0325, B:121:0x0331, B:127:0x0346, B:129:0x034f, B:131:0x0355, B:133:0x035b, B:135:0x036b, B:138:0x0381), top: B:145:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x028b A[Catch: all -> 0x038a, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x000e, B:10:0x0017, B:12:0x001e, B:14:0x0025, B:17:0x0032, B:19:0x003c, B:22:0x0045, B:24:0x004f, B:26:0x0065, B:29:0x006e, B:31:0x0079, B:35:0x008d, B:38:0x0096, B:51:0x0101, B:54:0x0115, B:56:0x011f, B:58:0x0135, B:61:0x013e, B:65:0x017c, B:67:0x0182, B:70:0x018b, B:73:0x0194, B:75:0x019e, B:78:0x01b5, B:90:0x0200, B:92:0x020f, B:97:0x0223, B:99:0x022b, B:101:0x023c, B:104:0x025e, B:115:0x028b, B:117:0x031f, B:119:0x0325, B:121:0x0331, B:127:0x0346, B:129:0x034f, B:131:0x0355, B:133:0x035b, B:135:0x036b, B:138:0x0381), top: B:145:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0346 A[Catch: all -> 0x038a, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x000e, B:10:0x0017, B:12:0x001e, B:14:0x0025, B:17:0x0032, B:19:0x003c, B:22:0x0045, B:24:0x004f, B:26:0x0065, B:29:0x006e, B:31:0x0079, B:35:0x008d, B:38:0x0096, B:51:0x0101, B:54:0x0115, B:56:0x011f, B:58:0x0135, B:61:0x013e, B:65:0x017c, B:67:0x0182, B:70:0x018b, B:73:0x0194, B:75:0x019e, B:78:0x01b5, B:90:0x0200, B:92:0x020f, B:97:0x0223, B:99:0x022b, B:101:0x023c, B:104:0x025e, B:115:0x028b, B:117:0x031f, B:119:0x0325, B:121:0x0331, B:127:0x0346, B:129:0x034f, B:131:0x0355, B:133:0x035b, B:135:0x036b, B:138:0x0381), top: B:145:0x0002 }] */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    @android.annotation.SuppressLint({"DrawAllocation"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 913
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.oo0.onMeasure(int, int):void");
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.wn0
    public final void onPause() {
        if (mo7905h0()) {
            return;
        }
        try {
            super.onPause();
        } catch (Exception e) {
            ei0.m15466d("Could not pause webview.", e);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.wn0
    public final void onResume() {
        if (mo7905h0()) {
            return;
        }
        try {
            super.onResume();
        } catch (Exception e) {
            ei0.m15466d("Could not resume webview.", e);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f27646q.m15740I() || this.f27646q.m15739J()) {
            C7016u c7016u = this.f27635f;
            if (c7016u != null) {
                c7016u.m10448d(motionEvent);
            }
            C6680kx c6680kx = this.f27636g;
            if (c6680kx != null) {
                c6680kx.m13762a(motionEvent);
            }
        } else {
            synchronized (this) {
                AbstractC7014ty abstractC7014ty = this.f27612F;
                if (abstractC7014ty != null) {
                    abstractC7014ty.mo9152a(motionEvent);
                }
            }
        }
        if (mo7905h0()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: p0 */
    public final void mo7892p0() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: q */
    public final int mo7891q() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.g50, com.google.android.gms.internal.ads.u40
    /* renamed from: r */
    public final void mo7890r(String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("(");
        sb.append(str2);
        sb.append(");");
        m12586i1(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: r0 */
    public final void mo7889r0(boolean z) {
        BinderC5650l binderC5650l;
        synchronized (this) {
            int i = this.f27615I;
            int i2 = 1;
            if (true != z) {
                i2 = -1;
            }
            int i3 = i + i2;
            this.f27615I = i3;
            if (i3 > 0 || (binderC5650l = this.f27647r) == null) {
                return;
            }
            binderC5650l.m18199I();
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: s */
    public final BinderC5650l mo7888s() {
        BinderC5650l binderC5650l;
        synchronized (this) {
            binderC5650l = this.f27624R;
        }
        return binderC5650l;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: s0 */
    public final void mo7887s0(Context context) {
        this.f27634e.setBaseContext(context);
        this.f27626T.m17999a(this.f27634e.m13461a());
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.wn0
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof do0) {
            this.f27646q = (do0) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (mo7905h0()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e) {
            ei0.m15466d("Could not stop loading webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: t0 */
    public final AbstractC6253a mo7886t0() {
        AbstractC6253a abstractC6253a;
        synchronized (this) {
            abstractC6253a = this.f27648s;
        }
        return abstractC6253a;
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: u */
    public final void mo7885u() {
        synchronized (this) {
            AbstractC6903qy abstractC6903qy = this.f27613G;
            if (abstractC6903qy != null) {
                abstractC6903qy.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.kk0
    /* renamed from: v */
    public final int mo7884v() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: v0 */
    public final Context mo7883v0() {
        return this.f27634e.m13460b();
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.kk0
    /* renamed from: w */
    public final void mo7882w(ro0 ro0Var) {
        synchronized (this) {
            if (this.f27609C != null) {
                ei0.m15467c("Attempt to create multiple AdWebViewVideoControllers.");
            } else {
                this.f27609C = ro0Var;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: w0 */
    public final boolean mo7881w0(boolean z, int i) {
        destroy();
        this.f27633d0.m12218b(new AbstractC6817om(z, i) { // from class: com.google.android.gms.internal.ads.lo0

            /* renamed from: a */
            private final boolean f26185a;

            /* renamed from: b */
            private final int f26186b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26185a = z;
                this.f26186b = i;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC6817om
            /* renamed from: a */
            public final void mo8772a(C6373co c6373co) {
                boolean z2 = this.f26185a;
                int i2 = this.f26186b;
                int i3 = oo0.f27606d;
                C6599iq m14072D = C6636jq.m14072D();
                if (m14072D.m14308q() != z2) {
                    m14072D.m14307r(z2);
                }
                m14072D.m14306s(i2);
                c6373co.m16011B(m14072D.m15512n());
            }
        });
        this.f27633d0.m12217c(10003);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: x */
    public final AbstractC6445el mo7880x() {
        AbstractC6445el abstractC6445el;
        synchronized (this) {
            abstractC6445el = this.f27614H;
        }
        return abstractC6445el;
    }

    @Override // com.google.android.gms.internal.ads.wn0
    /* renamed from: x0 */
    public final void mo7879x0(int i) {
        if (i == 0) {
            C6938rw.m11264a(this.f27620N.m9038c(), this.f27618L, "aebb2");
        }
        m12579p1();
        this.f27620N.m9038c();
        this.f27620N.m9038c().m16472d("close_type", String.valueOf(i));
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.f27637h.f33854d);
        mo7959D0("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.nn0
    /* renamed from: z */
    public final ej2 mo7878z() {
        return this.f27642m;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6673kq
    /* renamed from: z0 */
    public final void mo7877z0() {
        do0 do0Var = this.f27646q;
        if (do0Var != null) {
            do0Var.mo7877z0();
        }
    }

    @Override // com.google.android.gms.internal.ads.kk0
    public final C7123ww zzi() {
        return this.f27618L;
    }

    @Override // com.google.android.gms.internal.ads.wn0, com.google.android.gms.internal.ads.fp0, com.google.android.gms.internal.ads.kk0
    public final zzcgz zzt() {
        return this.f27637h;
    }
}
