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
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aer.class */
final class aer extends aex implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, act, AbstractC3195hk {
    @GuardedBy("this")

    /* renamed from: A */
    private int f8023A;
    @GuardedBy("this")

    /* renamed from: B */
    private int f8024B;

    /* renamed from: C */
    private C3319m f8025C;

    /* renamed from: D */
    private C3319m f8026D;

    /* renamed from: E */
    private C3319m f8027E;

    /* renamed from: F */
    private C3400p f8028F;

    /* renamed from: G */
    private WeakReference<View.OnClickListener> f8029G;
    @GuardedBy("this")

    /* renamed from: H */
    private BinderC2316c f8030H;

    /* renamed from: I */
    private C3631xo f8031I;

    /* renamed from: O */
    private Map<String, abt> f8037O;

    /* renamed from: a */
    private final aek f8039a;

    /* renamed from: b */
    private final aem f8040b;

    /* renamed from: c */
    private final ctl f8041c;

    /* renamed from: d */
    private final C3647yd f8042d;

    /* renamed from: e */
    private final AbstractC2307i f8043e;

    /* renamed from: f */
    private final C2299a f8044f;

    /* renamed from: h */
    private final dwi f8046h;

    /* renamed from: i */
    private final dvk f8047i;

    /* renamed from: j */
    private final boolean f8048j;
    @GuardedBy("this")

    /* renamed from: k */
    private BinderC2316c f8049k;
    @GuardedBy("this")

    /* renamed from: l */
    private aei f8050l;
    @GuardedBy("this")

    /* renamed from: m */
    private String f8051m;
    @GuardedBy("this")

    /* renamed from: n */
    private boolean f8052n;
    @GuardedBy("this")

    /* renamed from: o */
    private boolean f8053o;
    @GuardedBy("this")

    /* renamed from: p */
    private boolean f8054p;
    @GuardedBy("this")

    /* renamed from: u */
    private adn f8059u;
    @GuardedBy("this")

    /* renamed from: v */
    private boolean f8060v;
    @GuardedBy("this")

    /* renamed from: w */
    private boolean f8061w;
    @GuardedBy("this")

    /* renamed from: x */
    private AbstractC2833bj f8062x;
    @GuardedBy("this")

    /* renamed from: y */
    private AbstractC2832bi f8063y;
    @GuardedBy("this")

    /* renamed from: z */
    private dva f8064z;
    @GuardedBy("this")

    /* renamed from: r */
    private boolean f8056r = true;
    @GuardedBy("this")

    /* renamed from: s */
    private boolean f8057s = false;
    @GuardedBy("this")

    /* renamed from: t */
    private String f8058t = "";

    /* renamed from: J */
    private final AtomicReference<AbstractC2731a> f8032J = new AtomicReference<>();

    /* renamed from: K */
    private int f8033K = -1;

    /* renamed from: L */
    private int f8034L = -1;

    /* renamed from: M */
    private int f8035M = -1;

    /* renamed from: N */
    private int f8036N = -1;
    @GuardedBy("this")

    /* renamed from: q */
    private int f8055q = -1;

    /* renamed from: P */
    private final WindowManager f8038P = (WindowManager) getContext().getSystemService("window");

    /* renamed from: g */
    private final DisplayMetrics f8045g = C3567ve.m6992a(this.f8038P);

    public aer(aek aekVar, aem aemVar, aei aeiVar, String str, boolean z, boolean z2, ctl ctlVar, C3647yd c3647yd, C3373o c3373o, AbstractC2307i abstractC2307i, C2299a c2299a, dwi dwiVar, dvk dvkVar, boolean z3) {
        super(aekVar, aemVar);
        this.f8039a = aekVar;
        this.f8040b = aemVar;
        this.f8050l = aeiVar;
        this.f8051m = str;
        this.f8053o = z;
        this.f8041c = ctlVar;
        this.f8042d = c3647yd;
        this.f8043e = abstractC2307i;
        this.f8044f = c2299a;
        C2341q.m14744c();
        this.f8046h = dwiVar;
        this.f8047i = dvkVar;
        this.f8048j = z3;
        this.f8031I = new C3631xo(this.f8039a.m13538a(), this, this, null);
        C2341q.m14744c().m7004a(aekVar, c3647yd.f17636a, getSettings());
        setDownloadListener(this);
        m13483R();
        if (C2716m.m13839d()) {
            addJavascriptInterface(ado.m13562a(this), "googleAdsJsInterface");
        }
        m13479V();
        this.f8028F = new C3400p(new C3373o(true, "make_wv", this.f8051m));
        this.f8028F.m7348a().m7380a(c3373o);
        this.f8026D = C3238j.m7742a(this.f8028F.m7348a());
        this.f8028F.m7347a("native:view_create", this.f8026D);
        this.f8027E = null;
        this.f8025C = null;
        C2341q.m14742e().mo6930b(aekVar);
    }

    /* renamed from: P */
    private final boolean m13485P() {
        int i;
        int i2;
        boolean z = false;
        if (this.f8040b.mo13518b() || this.f8040b.m13515c()) {
            dyx.m8162a();
            int m6787b = C3634xr.m6787b(this.f8045g, this.f8045g.widthPixels);
            dyx.m8162a();
            int m6787b2 = C3634xr.m6787b(this.f8045g, this.f8045g.heightPixels);
            Activity m13538a = this.f8039a.m13538a();
            if (m13538a == null || m13538a.getWindow() == null) {
                i2 = m6787b2;
                i = m6787b;
            } else {
                C2341q.m14744c();
                int[] m7009a = C3567ve.m7009a(m13538a);
                dyx.m8162a();
                i = C3634xr.m6787b(this.f8045g, m7009a[0]);
                dyx.m8162a();
                i2 = C3634xr.m6787b(this.f8045g, m7009a[1]);
            }
            if (this.f8034L != m6787b || this.f8033K != m6787b2 || this.f8035M != i || this.f8036N != i2) {
                z = (this.f8034L == m6787b && this.f8033K == m6787b2) ? false : true;
                this.f8034L = m6787b;
                this.f8033K = m6787b2;
                this.f8035M = i;
                this.f8036N = i2;
                new C3366nt(this).m7399a(m6787b, m6787b2, i, i2, this.f8045g.density, this.f8038P.getDefaultDisplay().getRotation());
            }
        }
        return z;
    }

    /* renamed from: Q */
    private final void m13484Q() {
        C3238j.m7741a(this.f8028F.m7348a(), this.f8026D, "aeh2");
    }

    /* renamed from: R */
    private final void m13483R() {
        synchronized (this) {
            if (this.f8053o || this.f8050l.m13549e()) {
                C3556uu.m6751b("Enabling hardware acceleration on an overlay.");
                m13481T();
            } else if (Build.VERSION.SDK_INT < 18) {
                C3556uu.m6751b("Disabling hardware acceleration on an AdView.");
                m13482S();
            } else {
                C3556uu.m6751b("Enabling hardware acceleration on an AdView.");
                m13481T();
            }
        }
    }

    /* renamed from: S */
    private final void m13482S() {
        synchronized (this) {
            if (!this.f8054p) {
                C2341q.m14742e();
                setLayerType(1, null);
            }
            this.f8054p = true;
        }
    }

    /* renamed from: T */
    private final void m13481T() {
        synchronized (this) {
            if (this.f8054p) {
                C2341q.m14742e();
                setLayerType(0, null);
            }
            this.f8054p = false;
        }
    }

    /* renamed from: U */
    private final void m13480U() {
        synchronized (this) {
            if (this.f8037O != null) {
                for (abt abtVar : this.f8037O.values()) {
                    abtVar.mo13641a();
                }
            }
            this.f8037O = null;
        }
    }

    /* renamed from: V */
    private final void m13479V() {
        C3373o m7348a;
        if (this.f8028F == null || (m7348a = this.f8028F.m7348a()) == null || C2341q.m14740g().m7100a() == null) {
            return;
        }
        C2341q.m14740g().m7100a().m8109a(m7348a);
    }

    /* renamed from: a */
    public static final /* synthetic */ void m13458a(boolean z, int i, dwv.C3068n.C3069a c3069a) {
        dwv.C3043f.C3044a m8403b = dwv.C3043f.m8403b();
        if (m8403b.m8400a() != z) {
            m8403b.m8398a(z);
        }
        c3069a.m8316a((dwv.C3043f) ((dcw) m8403b.m8399a(i).mo9987g()));
    }

    /* renamed from: h */
    private final void m13440h(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", z ? "1" : "0");
        C3194hj.m7795a(this, "onAdVisibilityChanged", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.adv
    /* renamed from: A */
    public final boolean mo13497A() {
        boolean z;
        synchronized (this) {
            z = this.f8053o;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.aex, com.google.android.gms.internal.ads.act
    /* renamed from: C */
    public final void mo13418C() {
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: D */
    public final boolean mo13496D() {
        boolean z;
        synchronized (this) {
            z = this.f8056r;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: E */
    public final boolean mo13495E() {
        boolean z;
        synchronized (this) {
            z = this.f8023A > 0;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: F */
    public final void mo13494F() {
        this.f8031I.m6813a();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: G */
    public final void mo13493G() {
        if (this.f8027E == null) {
            this.f8027E = C3238j.m7742a(this.f8028F.m7348a());
            this.f8028F.m7347a("native:view_load", this.f8027E);
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: H */
    public final AbstractC2833bj mo13492H() {
        AbstractC2833bj abstractC2833bj;
        synchronized (this) {
            abstractC2833bj = this.f8062x;
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
            dvaVar = this.f8064z;
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
        return this.f8047i;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: N */
    public final boolean mo13486N() {
        return ((Boolean) dyx.m8158e().m7876a(edi.f16532df)).booleanValue() && this.f8047i != null && this.f8048j;
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: a */
    public final abt mo13465a(String str) {
        abt abtVar;
        synchronized (this) {
            abtVar = this.f8037O == null ? null : this.f8037O.get(str);
        }
        return abtVar;
    }

    @Override // com.google.android.gms.ads.internal.AbstractC2307i
    /* renamed from: a */
    public final void mo12026a() {
        synchronized (this) {
            this.f8057s = true;
            if (this.f8043e != null) {
                this.f8043e.mo12026a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13478a(int i) {
        if (i == 0) {
            C3238j.m7741a(this.f8028F.m7348a(), this.f8026D, "aebb2");
        }
        m13484Q();
        if (this.f8028F.m7348a() != null) {
            this.f8028F.m7348a().m7379a("close_type", String.valueOf(i));
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.f8042d.f17636a);
        C3194hj.m7795a(this, "onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13477a(Context context) {
        this.f8039a.setBaseContext(context);
        this.f8031I.m6812a(this.f8039a.m13538a());
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
        dvk dvkVar = this.f8047i;
        if (this == null) {
            throw null;
        }
        dvkVar.mo8507a(activity, this);
        this.f8047i.mo8505a(str, str2);
        if (viewGroup != null) {
            viewGroup.addView(this.f8047i.mo8504b());
        } else {
            C3556uu.m6749c("The FrameLayout object cannot be null.");
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13475a(BinderC2316c binderC2316c) {
        synchronized (this) {
            this.f8049k = binderC2316c;
        }
    }

    @Override // com.google.android.gms.internal.ads.adz
    /* renamed from: a */
    public final void mo13474a(C2317d c2317d) {
        this.f8040b.m13530a(c2317d);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13473a(AbstractC2731a abstractC2731a) {
        this.f8032J.set(abstractC2731a);
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad
    /* renamed from: a */
    public final void mo13472a(adn adnVar) {
        synchronized (this) {
            if (this.f8059u != null) {
                C3556uu.m6749c("Attempt to create multiple AdWebViewVideoControllers.");
            } else {
                this.f8059u = adnVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13471a(aei aeiVar) {
        synchronized (this) {
            this.f8050l = aeiVar;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13468a(AbstractC2832bi abstractC2832bi) {
        synchronized (this) {
            this.f8063y = abstractC2832bi;
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13467a(AbstractC2833bj abstractC2833bj) {
        synchronized (this) {
            this.f8062x = abstractC2833bj;
        }
    }

    @Override // com.google.android.gms.internal.ads.dtr
    /* renamed from: a */
    public final void mo7170a(dtt dttVar) {
        synchronized (this) {
            this.f8060v = dttVar.f15739j;
        }
        m13440h(dttVar.f15739j);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13466a(dva dvaVar) {
        synchronized (this) {
            this.f8064z = dvaVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13464a(String str, AbstractC2717n<AbstractC3131fa<? super act>> abstractC2717n) {
        if (this.f8040b != null) {
            this.f8040b.m13524a(str, abstractC2717n);
        }
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad
    /* renamed from: a */
    public final void mo13463a(String str, abt abtVar) {
        synchronized (this) {
            if (this.f8037O == null) {
                this.f8037O = new HashMap();
            }
            this.f8037O.put(str, abtVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13462a(String str, AbstractC3131fa<? super act> abstractC3131fa) {
        if (this.f8040b != null) {
            this.f8040b.m13523a(str, abstractC3131fa);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3195hk
    /* renamed from: a */
    public final void mo7738a(String str, String str2) {
        C3194hj.m7796a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13461a(String str, String str2, String str3) {
        synchronized (this) {
            super.loadDataWithBaseURL(str, ady.m13557a(str2, ady.m13558a()), "text/html", "UTF-8", str3);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3187hc
    /* renamed from: a */
    public final void mo7737a(String str, Map map) {
        C3194hj.m7795a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3212ia
    /* renamed from: a */
    public final void mo7736a(String str, JSONObject jSONObject) {
        C3194hj.m7794a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: a */
    public final void mo13460a(boolean z) {
        this.f8040b.m13522a(z);
    }

    @Override // com.google.android.gms.internal.ads.adz
    /* renamed from: a */
    public final void mo13457a(boolean z, int i, String str) {
        this.f8040b.m13520a(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.adz
    /* renamed from: a */
    public final void mo13456a(boolean z, int i, String str, String str2) {
        this.f8040b.m13519a(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: a */
    public final void mo13455a(boolean z, long j) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("success", z ? "1" : "0");
        hashMap.put("duration", Long.toString(j));
        C3194hj.m7795a(this, "onCacheAccessComplete", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final boolean mo13459a(boolean z, int i) {
        destroy();
        this.f8046h.m8441a(new dwl(z, i) { // from class: com.google.android.gms.internal.ads.aeu

            /* renamed from: a */
            private final boolean f8079a;

            /* renamed from: b */
            private final int f8080b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8079a = z;
                this.f8080b = i;
            }

            @Override // com.google.android.gms.internal.ads.dwl
            /* renamed from: a */
            public final void mo8434a(dwv.C3068n.C3069a c3069a) {
                aer.m13458a(this.f8079a, this.f8080b, c3069a);
            }
        });
        this.f8046h.m8442a(dwk.C3018a.EnumC3019a.ANDROID_WEBVIEW_CRASH);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.AbstractC2307i
    /* renamed from: b */
    public final void mo12025b() {
        synchronized (this) {
            this.f8057s = false;
            if (this.f8043e != null) {
                this.f8043e.mo12025b();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: b */
    public final void mo13454b(BinderC2316c binderC2316c) {
        synchronized (this) {
            this.f8030H = binderC2316c;
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: b */
    public final void mo13453b(String str, AbstractC3131fa<? super act> abstractC3131fa) {
        if (this.f8040b != null) {
            this.f8040b.m13517b(str, abstractC3131fa);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3187hc
    /* renamed from: b */
    public final void mo7734b(String str, JSONObject jSONObject) {
        C3194hj.m7793b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: b */
    public final void mo13452b(boolean z) {
        synchronized (this) {
            boolean z2 = z != this.f8053o;
            this.f8053o = z;
            m13483R();
            if (z2) {
                if (!((Boolean) dyx.m8158e().m7876a(edi.f16321G)).booleanValue() || !this.f8050l.m13549e()) {
                    new C3366nt(this).m7395c(z ? "expanded" : "default");
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.adz
    /* renamed from: b */
    public final void mo13451b(boolean z, int i) {
        this.f8040b.m13521a(z, i);
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
            if (this.f8049k != null) {
                this.f8049k.m14761a(this.f8040b.mo13518b(), z);
            } else {
                this.f8052n = z;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad
    /* renamed from: d */
    public final adn mo13448d() {
        adn adnVar;
        synchronized (this) {
            adnVar = this.f8059u;
        }
        return adnVar;
    }

    @Override // com.google.android.gms.internal.ads.aex, com.google.android.gms.internal.ads.aew, com.google.android.gms.internal.ads.AbstractC3212ia
    /* renamed from: d */
    public final void mo7733d(String str) {
        synchronized (this) {
            if (!m13419B()) {
                super.mo7733d(str);
            } else {
                C3556uu.m6745e("The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: d */
    public final void mo13447d(boolean z) {
        synchronized (this) {
            this.f8056r = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: e */
    public final C3319m mo13446e() {
        return this.f8026D;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: e */
    public final void mo13445e(boolean z) {
        synchronized (this) {
            this.f8023A = (z ? 1 : -1) + this.f8023A;
            if (this.f8023A <= 0 && this.f8049k != null) {
                this.f8049k.m14754q();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad, com.google.android.gms.internal.ads.AbstractC2764ads
    /* renamed from: f */
    public final Activity mo13444f() {
        return this.f8039a.m13538a();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: f */
    public final void mo13443f(boolean z) {
        this.f8040b.m13516b(z);
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad
    /* renamed from: g */
    public final C2299a mo13442g() {
        return this.f8044f;
    }

    @Override // com.google.android.gms.internal.ads.aex
    /* renamed from: g */
    protected final void mo13415g(boolean z) {
        synchronized (this) {
            if (!z) {
                m13479V();
                this.f8031I.m6811b();
                if (this.f8049k != null) {
                    this.f8049k.m14767a();
                    this.f8049k.mo7366k();
                    this.f8049k = null;
                }
            }
            this.f8032J.set(null);
            this.f8040b.m13504k();
            C2341q.m14722y();
            abu.m13655a(this);
            m13480U();
        }
    }

    @Override // com.google.android.gms.internal.ads.aad
    public final String getRequestId() {
        String str;
        synchronized (this) {
            str = this.f8058t;
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
        return this.f8028F;
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad, com.google.android.gms.internal.ads.aed
    /* renamed from: j */
    public final C3647yd mo13438j() {
        return this.f8042d;
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

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: m */
    public final void mo13435m() {
        synchronized (this) {
            if (this.f8063y != null) {
                this.f8063y.mo11900a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: n */
    public final void mo13434n() {
        m13484Q();
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f8042d.f17636a);
        C3194hj.m7795a(this, "onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: o */
    public final void mo13433o() {
        if (this.f8025C == null) {
            C3238j.m7741a(this.f8028F.m7348a(), this.f8026D, "aes2");
            this.f8025C = C3238j.m7742a(this.f8028F.m7348a());
            this.f8028F.m7347a("native:view_show", this.f8025C);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f8042d.f17636a);
        C3194hj.m7795a(this, "onshow", hashMap);
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        synchronized (this) {
            super.onAttachedToWindow();
            if (!m13419B()) {
                this.f8031I.m6809c();
            }
            boolean z = this.f8060v;
            if (this.f8040b != null && this.f8040b.m13515c()) {
                if (!this.f8061w) {
                    this.f8040b.m13511e();
                    this.f8040b.m13509f();
                    this.f8061w = true;
                }
                m13485P();
                z = true;
            }
            m13440h(z);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        synchronized (this) {
            if (!m13419B()) {
                this.f8031I.m6808d();
            }
            super.onDetachedFromWindow();
            if (this.f8061w && this.f8040b != null && this.f8040b.m13515c() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.f8040b.m13511e();
                this.f8040b.m13509f();
                this.f8061w = false;
            }
        }
        m13440h(false);
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

    @Override // com.google.android.gms.internal.ads.aex, android.webkit.WebView, android.view.View
    @TargetApi(21)
    public final void onDraw(Canvas canvas) {
        if (Build.VERSION.SDK_INT != 21 || !canvas.isHardwareAccelerated() || isAttachedToWindow()) {
            super.onDraw(canvas);
            if (this.f8040b != null) {
            }
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
        boolean m13485P = m13485P();
        BinderC2316c mo13430r = mo13430r();
        if (mo13430r == null || !m13485P) {
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
            if (m13419B()) {
                setMeasuredDimension(0, 0);
            } else if (isInEditMode() || this.f8053o || this.f8050l.m13548f()) {
                super.onMeasure(i, i2);
            } else if (this.f8050l.m13546h()) {
                super.onMeasure(i, i2);
            } else if (this.f8050l.m13547g()) {
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
                            i3 = i7;
                            i5 = i7;
                            i4 = (int) (mo7648i * i7);
                        } else if (size2 != 0 || i6 == 0) {
                            i3 = i7;
                            i4 = i6;
                            i5 = size3;
                        } else {
                            i4 = i6;
                            size2 = i6;
                            i3 = (int) (i6 / mo7648i);
                            i5 = size3;
                        }
                        setMeasuredDimension(Math.min(i4, size2), Math.min(i3, i5));
                    }
                }
            } else if (this.f8050l.m13550d()) {
                if (((Boolean) dyx.m8158e().m7876a(edi.f16397bC)).booleanValue() || !C2716m.m13839d()) {
                    super.onMeasure(i, i2);
                } else {
                    mo13462a("/contentHeight", new aet(this));
                    mo7733d("(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = 'gmsg://mobileads.google.com/contentHeight?';  url += 'height=' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById('afma-notify-fluid');    if (!frame) {      frame = document.createElement('IFRAME');      frame.id = 'afma-notify-fluid';      frame.style.display = 'none';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();");
                    int size4 = View.MeasureSpec.getSize(i);
                    switch (this.f8024B) {
                        case -1:
                            size = View.MeasureSpec.getSize(i2);
                            break;
                        default:
                            size = (int) (this.f8024B * this.f8045g.density);
                            break;
                    }
                    setMeasuredDimension(size4, size);
                }
            } else if (this.f8050l.m13549e()) {
                setMeasuredDimension(this.f8045g.widthPixels, this.f8045g.heightPixels);
            } else {
                int mode = View.MeasureSpec.getMode(i);
                int size5 = View.MeasureSpec.getSize(i);
                int mode2 = View.MeasureSpec.getMode(i2);
                int size6 = View.MeasureSpec.getSize(i2);
                int i8 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size5 : Integer.MAX_VALUE;
                int i9 = (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) ? size6 : Integer.MAX_VALUE;
                boolean z2 = this.f8050l.f7984b > i8 || this.f8050l.f7983a > i9;
                if (((Boolean) dyx.m8158e().m7876a(edi.f16492cs)).booleanValue()) {
                    z = ((float) this.f8050l.f7984b) / this.f8045g.density <= ((float) i8) / this.f8045g.density && ((float) this.f8050l.f7983a) / this.f8045g.density <= ((float) i9) / this.f8045g.density;
                    if (!z2) {
                        z = z2;
                    }
                } else {
                    z = z2;
                }
                if (z) {
                    int i10 = (int) (this.f8050l.f7984b / this.f8045g.density);
                    int i11 = (int) (this.f8050l.f7983a / this.f8045g.density);
                    C3556uu.m6745e(new StringBuilder(103).append("Not enough space to show ad. Needs ").append(i10).append("x").append(i11).append(" dp, but only has ").append((int) (size5 / this.f8045g.density)).append("x").append((int) (size6 / this.f8045g.density)).append(" dp.").toString());
                    if (getVisibility() != 8) {
                        setVisibility(4);
                    }
                    setMeasuredDimension(0, 0);
                } else {
                    if (getVisibility() != 8) {
                        setVisibility(0);
                    }
                    setMeasuredDimension(this.f8050l.f7984b, this.f8050l.f7983a);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aex, android.webkit.WebView, com.google.android.gms.internal.ads.act
    public final void onPause() {
        try {
            super.onPause();
        } catch (Exception e) {
            C3556uu.m6748c("Could not pause webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.aex, android.webkit.WebView, com.google.android.gms.internal.ads.act
    public final void onResume() {
        try {
            super.onResume();
        } catch (Exception e) {
            C3556uu.m6748c("Could not resume webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.aex, android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f8040b.m13515c() && !this.f8040b.m13513d()) {
            synchronized (this) {
                if (this.f8062x != null) {
                    this.f8062x.mo11863a(motionEvent);
                }
            }
        } else if (this.f8041c != null) {
            this.f8041c.m10665a(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: p */
    public final void mo13432p() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(C2341q.m14739h().m6900b()));
        hashMap.put("app_volume", String.valueOf(C2341q.m14739h().m6904a()));
        hashMap.put("device_volume", String.valueOf(C3585vw.m6902a(getContext())));
        C3194hj.m7795a(this, "volume", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: q */
    public final Context mo13431q() {
        return this.f8039a.m13537b();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: r */
    public final BinderC2316c mo13430r() {
        BinderC2316c binderC2316c;
        synchronized (this) {
            binderC2316c = this.f8049k;
        }
        return binderC2316c;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: s */
    public final BinderC2316c mo13429s() {
        BinderC2316c binderC2316c;
        synchronized (this) {
            binderC2316c = this.f8030H;
        }
        return binderC2316c;
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.act
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f8029G = new WeakReference<>(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    @Override // com.google.android.gms.internal.ads.act
    public final void setRequestedOrientation(int i) {
        synchronized (this) {
            this.f8055q = i;
            if (this.f8049k != null) {
                this.f8049k.m14766a(this.f8055q);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aex, android.webkit.WebView
    public final void stopLoading() {
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
            aeiVar = this.f8050l;
        }
        return aeiVar;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: u */
    public final String mo13427u() {
        String str;
        synchronized (this) {
            str = this.f8051m;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: v */
    public final /* synthetic */ aef mo13426v() {
        return this.f8040b;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: w */
    public final WebViewClient mo13425w() {
        return this.f8040b;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: x */
    public final boolean mo13424x() {
        boolean z;
        synchronized (this) {
            z = this.f8052n;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aea
    /* renamed from: y */
    public final ctl mo13423y() {
        return this.f8041c;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: z */
    public final AbstractC2731a mo13422z() {
        return this.f8032J.get();
    }
}
