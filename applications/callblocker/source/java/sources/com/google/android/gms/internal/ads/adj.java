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
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.AbstractC2307i;
import com.google.android.gms.ads.internal.C2299a;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.ads.internal.overlay.BinderC2316c;
import com.google.android.gms.ads.internal.overlay.C2317d;
import com.google.android.gms.common.util.AbstractC2717n;
import com.google.android.gms.common.util.C2716m;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.internal.ads.dwk;
import com.google.android.gms.internal.ads.dwv;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/adj.class */
final class adj extends WebView implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, act {
    @GuardedBy("this")

    /* renamed from: A */
    private boolean f7900A;
    @GuardedBy("this")

    /* renamed from: B */
    private boolean f7901B;
    @GuardedBy("this")

    /* renamed from: C */
    private AbstractC2833bj f7902C;
    @GuardedBy("this")

    /* renamed from: D */
    private AbstractC2832bi f7903D;
    @GuardedBy("this")

    /* renamed from: E */
    private dva f7904E;
    @GuardedBy("this")

    /* renamed from: F */
    private int f7905F;
    @GuardedBy("this")

    /* renamed from: G */
    private int f7906G;

    /* renamed from: H */
    private C3319m f7907H;

    /* renamed from: I */
    private C3319m f7908I;

    /* renamed from: J */
    private C3319m f7909J;

    /* renamed from: K */
    private C3400p f7910K;

    /* renamed from: L */
    private WeakReference<View.OnClickListener> f7911L;
    @GuardedBy("this")

    /* renamed from: M */
    private BinderC2316c f7912M;
    @GuardedBy("this")

    /* renamed from: N */
    private boolean f7913N;

    /* renamed from: O */
    private C3631xo f7914O;

    /* renamed from: T */
    private Map<String, abt> f7919T;

    /* renamed from: V */
    private final dwi f7921V;

    /* renamed from: a */
    private final aek f7922a;

    /* renamed from: b */
    private final ctl f7923b;

    /* renamed from: c */
    private final C3647yd f7924c;

    /* renamed from: d */
    private final AbstractC2307i f7925d;

    /* renamed from: e */
    private final C2299a f7926e;

    /* renamed from: h */
    private final dvk f7929h;

    /* renamed from: i */
    private final boolean f7930i;

    /* renamed from: l */
    private acs f7933l;
    @GuardedBy("this")

    /* renamed from: m */
    private BinderC2316c f7934m;
    @GuardedBy("this")

    /* renamed from: n */
    private AbstractC2731a f7935n;
    @GuardedBy("this")

    /* renamed from: o */
    private aei f7936o;
    @GuardedBy("this")

    /* renamed from: p */
    private String f7937p;
    @GuardedBy("this")

    /* renamed from: q */
    private boolean f7938q;
    @GuardedBy("this")

    /* renamed from: r */
    private boolean f7939r;
    @GuardedBy("this")

    /* renamed from: s */
    private boolean f7940s;
    @GuardedBy("this")

    /* renamed from: t */
    private boolean f7941t;
    @GuardedBy("this")

    /* renamed from: u */
    private Boolean f7942u;
    @GuardedBy("this")

    /* renamed from: z */
    private adn f7947z;

    /* renamed from: j */
    private boolean f7931j = false;

    /* renamed from: k */
    private boolean f7932k = false;
    @GuardedBy("this")

    /* renamed from: w */
    private boolean f7944w = true;
    @GuardedBy("this")

    /* renamed from: x */
    private boolean f7945x = false;
    @GuardedBy("this")

    /* renamed from: y */
    private String f7946y = "";

    /* renamed from: P */
    private int f7915P = -1;

    /* renamed from: Q */
    private int f7916Q = -1;

    /* renamed from: R */
    private int f7917R = -1;

    /* renamed from: S */
    private int f7918S = -1;
    @GuardedBy("this")

    /* renamed from: v */
    private int f7943v = -1;

    /* renamed from: U */
    private final WindowManager f7920U = (WindowManager) getContext().getSystemService("window");

    /* renamed from: f */
    private final DisplayMetrics f7927f = C3567ve.m6992a(this.f7920U);

    /* renamed from: g */
    private final float f7928g = this.f7927f.density;

    private adj(aek aekVar, aei aeiVar, String str, boolean z, boolean z2, ctl ctlVar, C3647yd c3647yd, C3373o c3373o, AbstractC2307i abstractC2307i, C2299a c2299a, dwi dwiVar, dvk dvkVar, boolean z3) {
        super(aekVar);
        this.f7922a = aekVar;
        this.f7936o = aeiVar;
        this.f7937p = str;
        this.f7940s = z;
        this.f7923b = ctlVar;
        this.f7924c = c3647yd;
        this.f7925d = abstractC2307i;
        this.f7926e = c2299a;
        C2341q.m14744c();
        this.f7921V = dwiVar;
        this.f7929h = dvkVar;
        this.f7930i = z3;
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            C3556uu.m6748c("Unable to enable Javascript.", e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(2);
        }
        C2341q.m14744c().m7004a(aekVar, c3647yd.f17636a, settings);
        C2341q.m14742e().mo6932a(getContext(), settings);
        setDownloadListener(this);
        m13588S();
        if (C2716m.m13839d()) {
            addJavascriptInterface(ado.m13562a(this), "googleAdsJsInterface");
        }
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        this.f7914O = new C3631xo(this.f7922a.m13538a(), this, this, null);
        m13583X();
        this.f7910K = new C3400p(new C3373o(true, "make_wv", this.f7937p));
        this.f7910K.m7348a().m7380a(c3373o);
        this.f7908I = C3238j.m7742a(this.f7910K.m7348a());
        this.f7910K.m7347a("native:view_create", this.f7908I);
        this.f7909J = null;
        this.f7907H = null;
        C2341q.m14742e().mo6930b(aekVar);
        C2341q.m14740g().m7087e();
    }

    /* renamed from: O */
    private final boolean m13592O() {
        int i;
        int i2;
        boolean z = false;
        if (this.f7933l.mo13518b() || this.f7933l.m13607c()) {
            dyx.m8162a();
            int m6787b = C3634xr.m6787b(this.f7927f, this.f7927f.widthPixels);
            dyx.m8162a();
            int m6787b2 = C3634xr.m6787b(this.f7927f, this.f7927f.heightPixels);
            Activity m13538a = this.f7922a.m13538a();
            if (m13538a == null || m13538a.getWindow() == null) {
                i2 = m6787b2;
                i = m6787b;
            } else {
                C2341q.m14744c();
                int[] m7009a = C3567ve.m7009a(m13538a);
                dyx.m8162a();
                i = C3634xr.m6787b(this.f7927f, m7009a[0]);
                dyx.m8162a();
                i2 = C3634xr.m6787b(this.f7927f, m7009a[1]);
            }
            if (this.f7916Q != m6787b || this.f7915P != m6787b2 || this.f7917R != i || this.f7918S != i2) {
                z = (this.f7916Q == m6787b && this.f7915P == m6787b2) ? false : true;
                this.f7916Q = m6787b;
                this.f7915P = m6787b2;
                this.f7917R = i;
                this.f7918S = i2;
                new C3366nt(this).m7399a(m6787b, m6787b2, i, i2, this.f7927f.density, this.f7920U.getDefaultDisplay().getRotation());
            }
        }
        return z;
    }

    /* renamed from: P */
    private final void m13591P() {
        synchronized (this) {
            this.f7942u = C2341q.m14740g().m7094b();
            if (this.f7942u == null) {
                try {
                    evaluateJavascript("(function(){})()", null);
                    m13579a((Boolean) true);
                } catch (IllegalStateException e) {
                    m13579a((Boolean) false);
                }
            }
        }
    }

    /* renamed from: Q */
    private final Boolean m13590Q() {
        Boolean bool;
        synchronized (this) {
            bool = this.f7942u;
        }
        return bool;
    }

    /* renamed from: R */
    private final void m13589R() {
        C3238j.m7741a(this.f7910K.m7348a(), this.f7908I, "aeh2");
    }

    /* renamed from: S */
    private final void m13588S() {
        synchronized (this) {
            if (this.f7940s || this.f7936o.m13549e()) {
                C3556uu.m6751b("Enabling hardware acceleration on an overlay.");
                m13586U();
            } else if (Build.VERSION.SDK_INT < 18) {
                C3556uu.m6751b("Disabling hardware acceleration on an AdView.");
                m13587T();
            } else {
                C3556uu.m6751b("Enabling hardware acceleration on an AdView.");
                m13586U();
            }
        }
    }

    /* renamed from: T */
    private final void m13587T() {
        synchronized (this) {
            if (!this.f7941t) {
                C2341q.m14742e();
                setLayerType(1, null);
            }
            this.f7941t = true;
        }
    }

    /* renamed from: U */
    private final void m13586U() {
        synchronized (this) {
            if (this.f7941t) {
                C2341q.m14742e();
                setLayerType(0, null);
            }
            this.f7941t = false;
        }
    }

    /* renamed from: V */
    private final void m13585V() {
        synchronized (this) {
            if (!this.f7913N) {
                this.f7913N = true;
                C2341q.m14740g().m7086f();
            }
        }
    }

    /* renamed from: W */
    private final void m13584W() {
        synchronized (this) {
            if (this.f7919T != null) {
                for (abt abtVar : this.f7919T.values()) {
                    abtVar.mo13641a();
                }
            }
            this.f7919T = null;
        }
    }

    /* renamed from: X */
    private final void m13583X() {
        C3373o m7348a;
        if (this.f7910K == null || (m7348a = this.f7910K.m7348a()) == null || C2341q.m14740g().m7100a() == null) {
            return;
        }
        C2341q.m14740g().m7100a().m8109a(m7348a);
    }

    /* renamed from: a */
    public static adj m13582a(Context context, aei aeiVar, String str, boolean z, boolean z2, ctl ctlVar, C3647yd c3647yd, C3373o c3373o, AbstractC2307i abstractC2307i, C2299a c2299a, dwi dwiVar, dvk dvkVar, boolean z3) {
        return new adj(new aek(context), aeiVar, str, z, z2, ctlVar, c3647yd, c3373o, abstractC2307i, c2299a, dwiVar, dvkVar, z3);
    }

    /* renamed from: a */
    private final void m13579a(Boolean bool) {
        synchronized (this) {
            this.f7942u = bool;
        }
        C2341q.m14740g().m7096a(bool);
    }

    @TargetApi(19)
    /* renamed from: a */
    private final void m13578a(String str, ValueCallback<String> valueCallback) {
        synchronized (this) {
            if (!mo13593B()) {
                evaluateJavascript(str, null);
            } else {
                C3556uu.m6745e("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m13577a(boolean z, int i, dwv.C3068n.C3069a c3069a) {
        dwv.C3043f.C3044a m8403b = dwv.C3043f.m8403b();
        if (m8403b.m8400a() != z) {
            m8403b.m8398a(z);
        }
        c3069a.m8316a((dwv.C3043f) ((dcw) m8403b.m8399a(i).mo9987g()));
    }

    /* renamed from: b */
    private final void m13575b(String str) {
        synchronized (this) {
            if (!mo13593B()) {
                loadUrl(str);
            } else {
                C3556uu.m6745e("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    /* renamed from: c */
    private final void m13574c(String str) {
        synchronized (this) {
            try {
                super.loadUrl(str);
            } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError | UnsatisfiedLinkError e) {
                C2341q.m14740g().m7095a(e, "AdWebViewImpl.loadUrlUnsafe");
                C3556uu.m6746d("Could not call loadUrl. ", e);
            }
        }
    }

    /* renamed from: e */
    private final void m13573e(String str) {
        if (!C2716m.m13837f()) {
            String valueOf = String.valueOf(str);
            m13575b(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
            return;
        }
        if (m13590Q() == null) {
            m13591P();
        }
        if (m13590Q().booleanValue()) {
            m13578a(str, (ValueCallback<String>) null);
            return;
        }
        String valueOf2 = String.valueOf(str);
        m13575b(valueOf2.length() != 0 ? "javascript:".concat(valueOf2) : new String("javascript:"));
    }

    /* renamed from: g */
    private final void m13572g(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", z ? "1" : "0");
        mo7737a("onAdVisibilityChanged", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.adv
    /* renamed from: A */
    public final boolean mo13497A() {
        boolean z;
        synchronized (this) {
            z = this.f7940s;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: B */
    public final boolean mo13593B() {
        boolean z;
        synchronized (this) {
            z = this.f7939r;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: C */
    public final void mo13418C() {
        synchronized (this) {
            C3556uu.m7052a("Destroying WebView!");
            m13585V();
            C3567ve.f17498a.post(new adk(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: D */
    public final boolean mo13496D() {
        boolean z;
        synchronized (this) {
            z = this.f7944w;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: E */
    public final boolean mo13495E() {
        boolean z;
        synchronized (this) {
            z = this.f7905F > 0;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: F */
    public final void mo13494F() {
        this.f7914O.m6813a();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: G */
    public final void mo13493G() {
        if (this.f7909J == null) {
            this.f7909J = C3238j.m7742a(this.f7910K.m7348a());
            this.f7910K.m7347a("native:view_load", this.f7909J);
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: H */
    public final AbstractC2833bj mo13492H() {
        AbstractC2833bj abstractC2833bj;
        synchronized (this) {
            abstractC2833bj = this.f7902C;
        }
        return abstractC2833bj;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: I */
    public final void mo13491I() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: J */
    public final void mo13490J() {
        C3556uu.m7052a("Cannot add text view to inner AdWebView");
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: K */
    public final dva mo13489K() {
        dva dvaVar;
        synchronized (this) {
            dvaVar = this.f7904E;
        }
        return dvaVar;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: L */
    public final boolean mo13488L() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: M */
    public final dvk mo13487M() {
        return this.f7929h;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: N */
    public final boolean mo13486N() {
        return ((Boolean) dyx.m8158e().m7876a(edi.f16532df)).booleanValue() && this.f7929h != null && this.f7930i;
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: a */
    public final abt mo13465a(String str) {
        abt abtVar;
        synchronized (this) {
            abtVar = this.f7919T == null ? null : this.f7919T.get(str);
        }
        return abtVar;
    }

    @Override // com.google.android.gms.ads.internal.AbstractC2307i
    /* renamed from: a */
    public final void mo12026a() {
        synchronized (this) {
            this.f7945x = true;
            if (this.f7925d != null) {
                this.f7925d.mo12026a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13478a(int i) {
        if (i == 0) {
            C3238j.m7741a(this.f7910K.m7348a(), this.f7908I, "aebb2");
        }
        m13589R();
        if (this.f7910K.m7348a() != null) {
            this.f7910K.m7348a().m7379a("close_type", String.valueOf(i));
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.f7924c.f17636a);
        mo7737a("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13477a(Context context) {
        this.f7922a.setBaseContext(context);
        this.f7914O.m6812a(this.f7922a.m13538a());
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13476a(ViewGroup viewGroup, Activity activity, String str, String str2) {
        if (!mo13486N()) {
            C3556uu.m7052a("AR ad is not enabled or the ad from the server is not an AR ad.");
            return;
        }
        if (getParent() instanceof ViewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) getParent();
            if (this == null) {
                throw null;
            }
            viewGroup2.removeView(this);
        }
        C3556uu.m7052a("Initializing ArWebView object.");
        dvk dvkVar = this.f7929h;
        if (this == null) {
            throw null;
        }
        dvkVar.mo8507a(activity, this);
        this.f7929h.mo8505a(str, str2);
        if (viewGroup != null) {
            viewGroup.addView(this.f7929h.mo8504b());
        } else {
            C3556uu.m6749c("The FrameLayout object cannot be null.");
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13475a(BinderC2316c binderC2316c) {
        synchronized (this) {
            this.f7934m = binderC2316c;
        }
    }

    @Override // com.google.android.gms.internal.ads.adz
    /* renamed from: a */
    public final void mo13474a(C2317d c2317d) {
        this.f7933l.m13621a(c2317d);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13473a(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            this.f7935n = abstractC2731a;
        }
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad
    /* renamed from: a */
    public final void mo13472a(adn adnVar) {
        synchronized (this) {
            if (this.f7947z != null) {
                C3556uu.m6749c("Attempt to create multiple AdWebViewVideoControllers.");
            } else {
                this.f7947z = adnVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13471a(aei aeiVar) {
        synchronized (this) {
            this.f7936o = aeiVar;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13468a(AbstractC2832bi abstractC2832bi) {
        synchronized (this) {
            this.f7903D = abstractC2832bi;
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13467a(AbstractC2833bj abstractC2833bj) {
        synchronized (this) {
            this.f7902C = abstractC2833bj;
        }
    }

    @Override // com.google.android.gms.internal.ads.dtr
    /* renamed from: a */
    public final void mo7170a(dtt dttVar) {
        synchronized (this) {
            this.f7900A = dttVar.f15739j;
        }
        m13572g(dttVar.f15739j);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13466a(dva dvaVar) {
        synchronized (this) {
            this.f7904E = dvaVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13464a(String str, AbstractC2717n<AbstractC3131fa<? super act>> abstractC2717n) {
        if (this.f7933l != null) {
            this.f7933l.m13618a(str, abstractC2717n);
        }
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad
    /* renamed from: a */
    public final void mo13463a(String str, abt abtVar) {
        synchronized (this) {
            if (this.f7919T == null) {
                this.f7919T = new HashMap();
            }
            this.f7919T.put(str, abtVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13462a(String str, AbstractC3131fa<? super act> abstractC3131fa) {
        if (this.f7933l != null) {
            this.f7933l.m13617a(str, abstractC3131fa);
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13461a(String str, String str2, String str3) {
        synchronized (this) {
            if (!mo13593B()) {
                super.loadDataWithBaseURL(str, ady.m13557a(str2, ady.m13558a()), "text/html", "UTF-8", str3);
            } else {
                C3556uu.m6745e("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3187hc
    /* renamed from: a */
    public final void mo7737a(String str, Map<String, ?> map) {
        try {
            mo7734b(str, C2341q.m14744c().m6982a(map));
        } catch (JSONException e) {
            C3556uu.m6745e("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3212ia
    /* renamed from: a */
    public final void mo7736a(String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        String jSONObject3 = jSONObject2.toString();
        m13573e(new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(jSONObject3).length()).append(str).append("(").append(jSONObject3).append(");").toString());
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: a */
    public final void mo13460a(boolean z) {
        this.f7933l.m13614a(z);
    }

    @Override // com.google.android.gms.internal.ads.adz
    /* renamed from: a */
    public final void mo13457a(boolean z, int i, String str) {
        this.f7933l.m13612a(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.adz
    /* renamed from: a */
    public final void mo13456a(boolean z, int i, String str, String str2) {
        this.f7933l.m13611a(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: a */
    public final void mo13455a(boolean z, long j) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("success", z ? "1" : "0");
        hashMap.put("duration", Long.toString(j));
        mo7737a("onCacheAccessComplete", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final boolean mo13459a(boolean z, int i) {
        destroy();
        this.f7921V.m8441a(new dwl(z, i) { // from class: com.google.android.gms.internal.ads.adh

            /* renamed from: a */
            private final boolean f7898a;

            /* renamed from: b */
            private final int f7899b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7898a = z;
                this.f7899b = i;
            }

            @Override // com.google.android.gms.internal.ads.dwl
            /* renamed from: a */
            public final void mo8434a(dwv.C3068n.C3069a c3069a) {
                adj.m13577a(this.f7898a, this.f7899b, c3069a);
            }
        });
        this.f7921V.m8442a(dwk.C3018a.EnumC3019a.ANDROID_WEBVIEW_CRASH);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.AbstractC2307i
    /* renamed from: b */
    public final void mo12025b() {
        synchronized (this) {
            this.f7945x = false;
            if (this.f7925d != null) {
                this.f7925d.mo12025b();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: b */
    public final void mo13454b(BinderC2316c binderC2316c) {
        synchronized (this) {
            this.f7912M = binderC2316c;
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: b */
    public final void mo13453b(String str, AbstractC3131fa<? super act> abstractC3131fa) {
        if (this.f7933l != null) {
            this.f7933l.m13610b(str, abstractC3131fa);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3187hc
    /* renamed from: b */
    public final void mo7734b(String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        String jSONObject3 = jSONObject2.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("'");
        sb.append(",");
        sb.append(jSONObject3);
        sb.append(");");
        String valueOf = String.valueOf(sb.toString());
        C3556uu.m6751b(valueOf.length() != 0 ? "Dispatching AFMA event: ".concat(valueOf) : new String("Dispatching AFMA event: "));
        m13573e(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: b */
    public final void mo13452b(boolean z) {
        synchronized (this) {
            boolean z2 = z != this.f7940s;
            this.f7940s = z;
            m13588S();
            if (z2) {
                if (!((Boolean) dyx.m8158e().m7876a(edi.f16321G)).booleanValue() || !this.f7936o.m13549e()) {
                    new C3366nt(this).m7395c(z ? "expanded" : "default");
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.adz
    /* renamed from: b */
    public final void mo13451b(boolean z, int i) {
        this.f7933l.m13613a(z, i);
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: c */
    public final C3693zw mo13450c() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: c */
    public final void mo13449c(boolean z) {
        synchronized (this) {
            if (this.f7934m != null) {
                this.f7934m.m14761a(this.f7933l.mo13518b(), z);
            } else {
                this.f7938q = z;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad
    /* renamed from: d */
    public final adn mo13448d() {
        adn adnVar;
        synchronized (this) {
            adnVar = this.f7947z;
        }
        return adnVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3212ia
    /* renamed from: d */
    public final void mo7733d(String str) {
        m13573e(str);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: d */
    public final void mo13447d(boolean z) {
        synchronized (this) {
            this.f7944w = z;
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.act
    public final void destroy() {
        synchronized (this) {
            m13583X();
            this.f7914O.m6811b();
            if (this.f7934m != null) {
                this.f7934m.m14767a();
                this.f7934m.mo7366k();
                this.f7934m = null;
            }
            this.f7935n = null;
            this.f7933l.m13603k();
            if (!this.f7939r) {
                C2341q.m14722y();
                abu.m13655a(this);
                m13584W();
                this.f7939r = true;
                C3556uu.m7052a("Initiating WebView self destruct sequence in 3...");
                C3556uu.m7052a("Loading blank page in WebView, 2...");
                m13574c("about:blank");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: e */
    public final C3319m mo13446e() {
        return this.f7908I;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: e */
    public final void mo13445e(boolean z) {
        synchronized (this) {
            this.f7905F = (z ? 1 : -1) + this.f7905F;
            if (this.f7905F <= 0 && this.f7934m != null) {
                this.f7934m.m14754q();
            }
        }
    }

    @Override // android.webkit.WebView
    @TargetApi(19)
    public final void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        synchronized (this) {
            if (mo13593B()) {
                C3556uu.m6743f("#004 The webview is destroyed. Ignoring action.");
                if (valueCallback != null) {
                    valueCallback.onReceiveValue(null);
                }
            } else {
                super.evaluateJavascript(str, valueCallback);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad, com.google.android.gms.internal.ads.AbstractC2764ads
    /* renamed from: f */
    public final Activity mo13444f() {
        return this.f7922a.m13538a();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: f */
    public final void mo13443f(boolean z) {
        this.f7933l.m13608b(z);
    }

    protected final void finalize() {
        try {
            synchronized (this) {
                if (!this.f7939r) {
                    this.f7933l.m13603k();
                    C2341q.m14722y();
                    abu.m13655a(this);
                    m13584W();
                    m13585V();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad
    /* renamed from: g */
    public final C2299a mo13442g() {
        return this.f7926e;
    }

    @Override // com.google.android.gms.internal.ads.aad
    public final String getRequestId() {
        String str;
        synchronized (this) {
            str = this.f7946y;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aec
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.act
    public final WebView getWebView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: h */
    public final void mo13441h() {
        BinderC2316c mo13430r = mo13430r();
        if (mo13430r != null) {
            mo13430r.m14755p();
        }
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad
    /* renamed from: i */
    public final C3400p mo13439i() {
        return this.f7910K;
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad, com.google.android.gms.internal.ads.aed
    /* renamed from: j */
    public final C3647yd mo13438j() {
        return this.f7924c;
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: k */
    public final int mo13437k() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: l */
    public final int mo13436l() {
        return getMeasuredWidth();
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.act
    public final void loadData(String str, String str2, String str3) {
        synchronized (this) {
            if (!mo13593B()) {
                super.loadData(str, str2, str3);
            } else {
                C3556uu.m6745e("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.act
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            if (!mo13593B()) {
                super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            } else {
                C3556uu.m6745e("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.act
    public final void loadUrl(String str) {
        synchronized (this) {
            if (!mo13593B()) {
                try {
                    super.loadUrl(str);
                } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError e) {
                    C2341q.m14740g().m7095a(e, "AdWebViewImpl.loadUrl");
                    C3556uu.m6746d("Could not call loadUrl. ", e);
                }
            } else {
                C3556uu.m6745e("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: m */
    public final void mo13435m() {
        synchronized (this) {
            if (this.f7903D != null) {
                this.f7903D.mo11900a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: n */
    public final void mo13434n() {
        m13589R();
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f7924c.f17636a);
        mo7737a("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: o */
    public final void mo13433o() {
        if (this.f7907H == null) {
            C3238j.m7741a(this.f7910K.m7348a(), this.f7908I, "aes2");
            this.f7907H = C3238j.m7742a(this.f7910K.m7348a());
            this.f7910K.m7347a("native:view_show", this.f7907H);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f7924c.f17636a);
        mo7737a("onshow", hashMap);
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        synchronized (this) {
            super.onAttachedToWindow();
            if (!mo13593B()) {
                this.f7914O.m6809c();
            }
            boolean z = this.f7900A;
            if (this.f7933l != null && this.f7933l.m13607c()) {
                if (!this.f7901B) {
                    this.f7933l.m13605e();
                    this.f7933l.m13604f();
                    this.f7901B = true;
                }
                m13592O();
                z = true;
            }
            m13572g(z);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        synchronized (this) {
            if (!mo13593B()) {
                this.f7914O.m6808d();
            }
            super.onDetachedFromWindow();
            if (this.f7901B && this.f7933l != null && this.f7933l.m13607c() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.f7933l.m13605e();
                this.f7933l.m13604f();
                this.f7901B = false;
            }
        }
        m13572g(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            C2341q.m14744c();
            C3567ve.m7007a(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            C3556uu.m6751b(new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(str4).length()).append("Couldn't find an Activity to view url/mimetype: ").append(str).append(" / ").append(str4).toString());
        }
    }

    @Override // android.webkit.WebView, android.view.View
    @TargetApi(21)
    protected final void onDraw(Canvas canvas) {
        if (mo13593B()) {
            return;
        }
        if (Build.VERSION.SDK_INT == 21 && canvas.isHardwareAccelerated() && !isAttachedToWindow()) {
            return;
        }
        super.onDraw(canvas);
        if (this.f7933l != null) {
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        return (motionEvent.getActionMasked() != 8 || ((axisValue <= 0.0f || canScrollVertically(-1)) && ((axisValue >= 0.0f || canScrollVertically(1)) && ((axisValue2 <= 0.0f || canScrollHorizontally(-1)) && (axisValue2 >= 0.0f || canScrollHorizontally(1)))))) ? super.onGenericMotionEvent(motionEvent) : false;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean m13592O = m13592O();
        BinderC2316c mo13430r = mo13430r();
        if (mo13430r == null || !m13592O) {
            return;
        }
        mo13430r.m14756o();
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    @SuppressLint({"DrawAllocation"})
    protected final void onMeasure(int i, int i2) {
        boolean z;
        int size;
        int i3;
        int i4;
        int i5;
        synchronized (this) {
            if (mo13593B()) {
                setMeasuredDimension(0, 0);
            } else if (isInEditMode() || this.f7940s || this.f7936o.m13548f()) {
                super.onMeasure(i, i2);
            } else if (this.f7936o.m13546h()) {
                super.onMeasure(i, i2);
            } else if (this.f7936o.m13547g()) {
                if (((Boolean) dyx.m8158e().m7876a(edi.f16395bA)).booleanValue()) {
                    super.onMeasure(i, i2);
                } else {
                    adn mo13448d = mo13448d();
                    float mo7648i = mo13448d != null ? mo13448d.mo7648i() : 0.0f;
                    if (mo7648i == 0.0f) {
                        super.onMeasure(i, i2);
                    } else {
                        int size2 = View.MeasureSpec.getSize(i);
                        int size3 = View.MeasureSpec.getSize(i2);
                        int i6 = (int) (size3 * mo7648i);
                        int i7 = (int) (size2 / mo7648i);
                        if (size3 == 0 && i7 != 0) {
                            i4 = i7;
                            i5 = i7;
                            i3 = (int) (mo7648i * i7);
                        } else if (size2 != 0 || i6 == 0) {
                            i3 = i6;
                            i4 = i7;
                            i5 = size3;
                        } else {
                            i3 = i6;
                            size2 = i6;
                            i4 = (int) (i6 / mo7648i);
                            i5 = size3;
                        }
                        setMeasuredDimension(Math.min(i3, size2), Math.min(i4, i5));
                    }
                }
            } else if (this.f7936o.m13550d()) {
                if (((Boolean) dyx.m8158e().m7876a(edi.f16397bC)).booleanValue() || !C2716m.m13839d()) {
                    super.onMeasure(i, i2);
                } else {
                    mo13462a("/contentHeight", new adl(this));
                    m13573e("(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = 'gmsg://mobileads.google.com/contentHeight?';  url += 'height=' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById('afma-notify-fluid');    if (!frame) {      frame = document.createElement('IFRAME');      frame.id = 'afma-notify-fluid';      frame.style.display = 'none';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();");
                    float f = this.f7927f.density;
                    int size4 = View.MeasureSpec.getSize(i);
                    switch (this.f7906G) {
                        case -1:
                            size = View.MeasureSpec.getSize(i2);
                            break;
                        default:
                            size = (int) (f * this.f7906G);
                            break;
                    }
                    setMeasuredDimension(size4, size);
                }
            } else if (this.f7936o.m13549e()) {
                setMeasuredDimension(this.f7927f.widthPixels, this.f7927f.heightPixels);
            } else {
                int mode = View.MeasureSpec.getMode(i);
                int size5 = View.MeasureSpec.getSize(i);
                int mode2 = View.MeasureSpec.getMode(i2);
                int size6 = View.MeasureSpec.getSize(i2);
                int i8 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size5 : Integer.MAX_VALUE;
                int i9 = (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) ? size6 : Integer.MAX_VALUE;
                boolean z2 = this.f7936o.f7984b > i8 || this.f7936o.f7983a > i9;
                if (((Boolean) dyx.m8158e().m7876a(edi.f16492cs)).booleanValue()) {
                    z = ((float) this.f7936o.f7984b) / this.f7928g <= ((float) i8) / this.f7928g && ((float) this.f7936o.f7983a) / this.f7928g <= ((float) i9) / this.f7928g;
                    if (!z2) {
                        z = z2;
                    }
                } else {
                    z = z2;
                }
                if (z) {
                    int i10 = (int) (this.f7936o.f7984b / this.f7928g);
                    int i11 = (int) (this.f7936o.f7983a / this.f7928g);
                    C3556uu.m6745e(new StringBuilder(103).append("Not enough space to show ad. Needs ").append(i10).append("x").append(i11).append(" dp, but only has ").append((int) (size5 / this.f7928g)).append("x").append((int) (size6 / this.f7928g)).append(" dp.").toString());
                    if (getVisibility() != 8) {
                        setVisibility(4);
                    }
                    setMeasuredDimension(0, 0);
                    if (!this.f7931j) {
                        this.f7921V.m8442a(dwk.C3018a.EnumC3019a.BANNER_SIZE_INVALID);
                        this.f7931j = true;
                    }
                } else {
                    if (getVisibility() != 8) {
                        setVisibility(0);
                    }
                    if (!this.f7932k) {
                        this.f7921V.m8442a(dwk.C3018a.EnumC3019a.BANNER_SIZE_VALID);
                        this.f7932k = true;
                    }
                    setMeasuredDimension(this.f7936o.f7984b, this.f7936o.f7983a);
                }
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.act
    public final void onPause() {
        if (mo13593B()) {
            return;
        }
        try {
            super.onPause();
        } catch (Exception e) {
            C3556uu.m6748c("Could not pause webview.", e);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.act
    public final void onResume() {
        if (mo13593B()) {
            return;
        }
        try {
            super.onResume();
        } catch (Exception e) {
            C3556uu.m6748c("Could not resume webview.", e);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f7933l.m13607c() && !this.f7933l.m13606d()) {
            synchronized (this) {
                if (this.f7902C != null) {
                    this.f7902C.mo11863a(motionEvent);
                }
            }
        } else if (this.f7923b != null) {
            this.f7923b.m10665a(motionEvent);
        }
        return mo13593B() ? false : super.onTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: p */
    public final void mo13432p() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(C2341q.m14739h().m6900b()));
        hashMap.put("app_volume", String.valueOf(C2341q.m14739h().m6904a()));
        hashMap.put("device_volume", String.valueOf(C3585vw.m6902a(getContext())));
        mo7737a("volume", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: q */
    public final Context mo13431q() {
        return this.f7922a.m13537b();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: r */
    public final BinderC2316c mo13430r() {
        BinderC2316c binderC2316c;
        synchronized (this) {
            binderC2316c = this.f7934m;
        }
        return binderC2316c;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: s */
    public final BinderC2316c mo13429s() {
        BinderC2316c binderC2316c;
        synchronized (this) {
            binderC2316c = this.f7912M;
        }
        return binderC2316c;
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.act
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f7911L = new WeakReference<>(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    @Override // com.google.android.gms.internal.ads.act
    public final void setRequestedOrientation(int i) {
        synchronized (this) {
            this.f7943v = i;
            if (this.f7934m != null) {
                this.f7934m.m14766a(this.f7943v);
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.act
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof acs) {
            this.f7933l = (acs) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (mo13593B()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e) {
            C3556uu.m6748c("Could not stop loading webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aeb
    /* renamed from: t */
    public final aei mo13428t() {
        aei aeiVar;
        synchronized (this) {
            aeiVar = this.f7936o;
        }
        return aeiVar;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: u */
    public final String mo13427u() {
        String str;
        synchronized (this) {
            str = this.f7937p;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: v */
    public final /* synthetic */ aef mo13426v() {
        return this.f7933l;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: w */
    public final WebViewClient mo13425w() {
        return this.f7933l;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: x */
    public final boolean mo13424x() {
        boolean z;
        synchronized (this) {
            z = this.f7938q;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aea
    /* renamed from: y */
    public final ctl mo13423y() {
        return this.f7923b;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: z */
    public final AbstractC2731a mo13422z() {
        AbstractC2731a abstractC2731a;
        synchronized (this) {
            abstractC2731a = this.f7935n;
        }
        return abstractC2731a;
    }
}
