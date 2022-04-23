package p131c.p161d.p170b.p224d.p252g.p253a;

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
import com.android.volley.Request;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzabj;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzabq;
import com.google.android.gms.internal.ads.zzabs;
import com.google.android.gms.internal.ads.zzacb;
import com.google.android.gms.internal.ads.zzadn;
import com.google.android.gms.internal.ads.zzads;
import com.google.android.gms.internal.ads.zzahq;
import com.google.android.gms.internal.ads.zzaqn;
import com.google.android.gms.internal.ads.zzayp;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzazm;
import com.google.android.gms.internal.ads.zzbbg;
import com.google.android.gms.internal.ads.zzbbh;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbbx;
import com.google.android.gms.internal.ads.zzbdn;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zzbfl;
import com.google.android.gms.internal.ads.zzbgi;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzbhd;
import com.google.android.gms.internal.ads.zzbhe;
import com.google.android.gms.internal.ads.zzbho;
import com.google.android.gms.internal.ads.zzbhv;
import com.google.android.gms.internal.ads.zzbhy;
import com.google.android.gms.internal.ads.zzbhz;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdnw;
import com.google.android.gms.internal.ads.zzeg;
import com.google.android.gms.internal.ads.zzejz;
import com.google.android.gms.internal.ads.zzqr;
import com.google.android.gms.internal.ads.zzsc;
import com.google.android.gms.internal.ads.zzsu;
import com.google.android.gms.internal.ads.zztr;
import com.google.android.gms.internal.ads.zzts;
import com.google.android.gms.internal.ads.zztu;
import com.google.android.gms.internal.ads.zzua;
import com.google.android.gms.internal.ads.zzwm;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import com.mopub.mobileads.VastIconXmlManager;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
@VisibleForTesting
/* renamed from: c.d.b.d.g.a.u9 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/u9.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC4096u9 extends WebView implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, zzbgj {

    /* renamed from: A */
    public boolean f15467A;

    /* renamed from: B */
    public boolean f15468B;

    /* renamed from: C */
    public zzads f15469C;

    /* renamed from: D */
    public zzadn f15470D;

    /* renamed from: E */
    public zzsc f15471E;

    /* renamed from: F */
    public int f15472F;

    /* renamed from: G */
    public int f15473G;

    /* renamed from: H */
    public zzabq f15474H;

    /* renamed from: I */
    public zzabq f15475I;

    /* renamed from: J */
    public zzabq f15476J;

    /* renamed from: K */
    public zzabp f15477K;

    /* renamed from: L */
    public zze f15478L;

    /* renamed from: M */
    public boolean f15479M;

    /* renamed from: N */
    public zzbbh f15480N;

    /* renamed from: S */
    public Map<String, zzbfl> f15485S;

    /* renamed from: U */
    public final zzts f15487U;

    /* renamed from: a */
    public final zzbhz f15488a;

    /* renamed from: b */
    public final zzeg f15489b;

    /* renamed from: c */
    public final zzacb f15490c;

    /* renamed from: d */
    public final zzbbx f15491d;

    /* renamed from: e */
    public final zzk f15492e;

    /* renamed from: f */
    public final zzb f15493f;

    /* renamed from: g */
    public final DisplayMetrics f15494g;

    /* renamed from: h */
    public final float f15495h;

    /* renamed from: i */
    public final zzsu f15496i;

    /* renamed from: j */
    public final boolean f15497j;

    /* renamed from: m */
    public zzbgi f15500m;

    /* renamed from: n */
    public zze f15501n;

    /* renamed from: o */
    public IObjectWrapper f15502o;

    /* renamed from: p */
    public zzbhy f15503p;

    /* renamed from: q */
    public String f15504q;

    /* renamed from: r */
    public boolean f15505r;

    /* renamed from: s */
    public boolean f15506s;

    /* renamed from: t */
    public boolean f15507t;

    /* renamed from: u */
    public boolean f15508u;

    /* renamed from: v */
    public Boolean f15509v;

    /* renamed from: z */
    public zzbhd f15513z;

    /* renamed from: k */
    public boolean f15498k = false;

    /* renamed from: l */
    public boolean f15499l = false;

    /* renamed from: x */
    public boolean f15511x = true;

    /* renamed from: y */
    public String f15512y = "";

    /* renamed from: O */
    public int f15481O = -1;

    /* renamed from: P */
    public int f15482P = -1;

    /* renamed from: Q */
    public int f15483Q = -1;

    /* renamed from: R */
    public int f15484R = -1;

    /* renamed from: w */
    public int f15510w = -1;

    /* renamed from: T */
    public final WindowManager f15486T = (WindowManager) getContext().getSystemService("window");

    @VisibleForTesting
    public ViewTreeObserver$OnGlobalLayoutListenerC4096u9(zzbhz zzbhzVar, zzbhy zzbhyVar, String str, boolean z, boolean z2, zzeg zzegVar, zzacb zzacbVar, zzbbx zzbbxVar, zzabs zzabsVar, zzk zzkVar, zzb zzbVar, zzts zztsVar, zzsu zzsuVar, boolean z3, zzdnv zzdnvVar, zzdnw zzdnwVar) {
        super(zzbhzVar);
        this.f15488a = zzbhzVar;
        this.f15503p = zzbhyVar;
        this.f15504q = str;
        this.f15507t = z;
        this.f15489b = zzegVar;
        this.f15490c = zzacbVar;
        this.f15491d = zzbbxVar;
        this.f15492e = zzkVar;
        this.f15493f = zzbVar;
        zzp.m17969c();
        DisplayMetrics a = zzayu.m16128a(this.f15486T);
        this.f15494g = a;
        this.f15495h = a.density;
        this.f15487U = zztsVar;
        this.f15496i = zzsuVar;
        this.f15497j = z3;
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            zzbbq.m15855b("Unable to enable Javascript.", e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(2);
        }
        zzp.m17969c().m16140a(zzbhzVar, zzbbxVar.f24759a, settings);
        zzp.m17967e().mo16040a(getContext(), settings);
        setDownloadListener(this);
        m26298T();
        if (PlatformVersion.m17064d()) {
            addJavascriptInterface(zzbhe.m15530a(this), "googleAdsJsInterface");
        }
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        this.f15480N = new zzbbh(this.f15488a.m15502b(), this, this, null);
        m26294X();
        zzabp zzabpVar = new zzabp(new zzabs(true, "make_wv", this.f15504q));
        this.f15477K = zzabpVar;
        zzabpVar.m16892a().m16883a(zzabsVar);
        zzabq a2 = zzabj.m16896a(this.f15477K.m16892a());
        this.f15475I = a2;
        this.f15477K.m16891a("native:view_create", a2);
        this.f15476J = null;
        this.f15474H = null;
        zzp.m17967e().mo16038b(zzbhzVar);
        zzp.m17965g().m16179f();
    }

    /* renamed from: a */
    public static ViewTreeObserver$OnGlobalLayoutListenerC4096u9 m26291a(Context context, zzbhy zzbhyVar, String str, boolean z, boolean z2, zzeg zzegVar, zzacb zzacbVar, zzbbx zzbbxVar, zzabs zzabsVar, zzk zzkVar, zzb zzbVar, zzts zztsVar, zzsu zzsuVar, boolean z3, zzdnv zzdnvVar, zzdnw zzdnwVar) {
        return new ViewTreeObserver$OnGlobalLayoutListenerC4096u9(new zzbhz(context), zzbhyVar, str, z, z2, zzegVar, zzacbVar, zzbbxVar, zzabsVar, zzkVar, zzbVar, zztsVar, zzsuVar, z3, zzdnvVar, zzdnwVar);
    }

    /* renamed from: a */
    public static final /* synthetic */ void m26286a(boolean z, int i, zzua.zzi.zza zzaVar) {
        zzua.zzae.zza n = zzua.zzae.m11397n();
        if (n.m11393p() != z) {
            n.m11394a(z);
        }
        n.m11395a(i);
        zzaVar.m11318a((zzua.zzae) ((zzejz) n.mo12342K()));
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: A */
    public final void mo15608A() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: B */
    public final void mo15607B() {
        m26299S();
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f15491d.f24759a);
        mo15577a("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: C */
    public final void mo15606C() {
        zzayp.m16153g("Cannot add text view to inner AdWebView");
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: D */
    public final WebViewClient mo15605D() {
        return this.f15500m;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: E */
    public final boolean mo15604E() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: F */
    public final void mo15603F() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(zzp.m17964h().m16019b()));
        hashMap.put("app_volume", String.valueOf(zzp.m17964h().m16023a()));
        hashMap.put("device_volume", String.valueOf(zzazm.m16021a(getContext())));
        mo15577a(AvidVideoPlaybackListenerImpl.VOLUME, hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: G */
    public final void mo15456G() {
        synchronized (this) {
            zzayp.m16153g("Destroying WebView!");
            m26292Z();
            zzayu.f24665h.post(new RunnableC4133v9(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: H */
    public final boolean mo15602H() {
        boolean z;
        synchronized (this) {
            z = this.f15505r;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: I */
    public final zzsc mo15601I() {
        zzsc zzscVar;
        synchronized (this) {
            zzscVar = this.f15471E;
        }
        return zzscVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: J */
    public final zzsu mo15600J() {
        return this.f15496i;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: K */
    public final Context mo15599K() {
        return this.f15488a.m15503a();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: L */
    public final boolean mo15598L() {
        boolean z;
        synchronized (this) {
            z = this.f15511x;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: M */
    public final zzabq mo15597M() {
        return this.f15475I;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: N */
    public final boolean mo15596N() {
        return ((Boolean) zzwm.m11166e().m16921a(zzabb.f23860n3)).booleanValue() && this.f15496i != null && this.f15497j;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: O */
    public final zze mo15595O() {
        zze zzeVar;
        synchronized (this) {
            zzeVar = this.f15501n;
        }
        return zzeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: P */
    public final boolean mo15594P() {
        boolean z;
        synchronized (this) {
            z = this.f15472F > 0;
        }
        return z;
    }

    /* renamed from: Q */
    public final boolean m26301Q() {
        int i;
        int i2;
        boolean z = false;
        if (!this.f15500m.mo15482b() && !this.f15500m.m15617j()) {
            return false;
        }
        zzwm.m11170a();
        DisplayMetrics displayMetrics = this.f15494g;
        int b = zzbbg.m15896b(displayMetrics, displayMetrics.widthPixels);
        zzwm.m11170a();
        DisplayMetrics displayMetrics2 = this.f15494g;
        int b2 = zzbbg.m15896b(displayMetrics2, displayMetrics2.heightPixels);
        Activity b3 = this.f15488a.m15502b();
        if (b3 == null || b3.getWindow() == null) {
            i2 = b;
            i = b2;
        } else {
            zzp.m17969c();
            int[] c = zzayu.m16104c(b3);
            zzwm.m11170a();
            i2 = zzbbg.m15896b(this.f15494g, c[0]);
            zzwm.m11170a();
            i = zzbbg.m15896b(this.f15494g, c[1]);
        }
        if (this.f15482P == b && this.f15481O == b2 && this.f15483Q == i2 && this.f15484R == i) {
            return false;
        }
        if (!(this.f15482P == b && this.f15481O == b2)) {
            z = true;
        }
        this.f15482P = b;
        this.f15481O = b2;
        this.f15483Q = i2;
        this.f15484R = i;
        new zzaqn(this).m16429a(b, b2, i2, i, this.f15494g.density, this.f15486T.getDefaultDisplay().getRotation());
        return z;
    }

    /* renamed from: R */
    public final void m26300R() {
        synchronized (this) {
            Boolean d = zzp.m17965g().m16182d();
            this.f15509v = d;
            if (d == null) {
                try {
                    evaluateJavascript("(function(){})()", null);
                    m26288a((Boolean) true);
                } catch (IllegalStateException e) {
                    m26288a((Boolean) false);
                }
            }
        }
    }

    /* renamed from: S */
    public final void m26299S() {
        zzabj.m16895a(this.f15477K.m16892a(), this.f15475I, "aeh2");
    }

    /* renamed from: T */
    public final void m26298T() {
        synchronized (this) {
            if (!this.f15507t && !this.f15503p.m15510b()) {
                if (Build.VERSION.SDK_INT < 18) {
                    zzbbq.m15858a("Disabling hardware acceleration on an AdView.");
                    m26297U();
                    return;
                }
                zzbbq.m15858a("Enabling hardware acceleration on an AdView.");
                m26296V();
                return;
            }
            zzbbq.m15858a("Enabling hardware acceleration on an overlay.");
            m26296V();
        }
    }

    /* renamed from: U */
    public final void m26297U() {
        synchronized (this) {
            if (!this.f15508u) {
                zzp.m17967e();
                setLayerType(1, null);
            }
            this.f15508u = true;
        }
    }

    /* renamed from: V */
    public final void m26296V() {
        synchronized (this) {
            if (this.f15508u) {
                zzp.m17967e();
                setLayerType(0, null);
            }
            this.f15508u = false;
        }
    }

    /* renamed from: W */
    public final void m26295W() {
        synchronized (this) {
            if (this.f15485S != null) {
                for (zzbfl zzbflVar : this.f15485S.values()) {
                    zzbflVar.mo15656a();
                }
            }
            this.f15485S = null;
        }
    }

    /* renamed from: X */
    public final void m26294X() {
        zzabs a;
        zzabp zzabpVar = this.f15477K;
        if (zzabpVar != null && (a = zzabpVar.m16892a()) != null && zzp.m17965g().m16184c() != null) {
            zzp.m17965g().m16184c().m16901a(a);
        }
    }

    @VisibleForTesting
    /* renamed from: Y */
    public final Boolean m26293Y() {
        Boolean bool;
        synchronized (this) {
            bool = this.f15509v;
        }
        return bool;
    }

    /* renamed from: Z */
    public final void m26292Z() {
        synchronized (this) {
            if (!this.f15479M) {
                this.f15479M = true;
                zzp.m17965g().m16178g();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu, com.google.android.gms.internal.ads.zzbht
    /* renamed from: a */
    public final zzbbx mo15516a() {
        return this.f15491d;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15593a(int i) {
        if (i == 0) {
            zzabj.m16895a(this.f15477K.m16892a(), this.f15475I, "aebb2");
        }
        m26299S();
        if (this.f15477K.m16892a() != null) {
            this.f15477K.m16892a().m16882a("close_type", String.valueOf(i));
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.f15491d.f24759a);
        mo15577a("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15592a(ViewGroup viewGroup, Activity activity, String str, String str2) {
        if (!mo15596N()) {
            zzayp.m16153g("AR ad is not enabled or the ad from the server is not an AR ad.");
            return;
        }
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).removeView(this);
        }
        zzayp.m16153g("Initializing ArWebView object.");
        this.f15496i.mo11461a(activity, this);
        this.f15496i.mo11459a(str, str2);
        if (viewGroup != null) {
            viewGroup.addView(this.f15496i.getView());
        } else {
            zzbbq.m15856b("The FrameLayout object cannot be null.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    /* renamed from: a */
    public final void mo15522a(com.google.android.gms.ads.internal.overlay.zzb zzbVar) {
        this.f15500m.m15632a(zzbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15591a(zze zzeVar) {
        synchronized (this) {
            this.f15501n = zzeVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15590a(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            this.f15502o = iObjectWrapper;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15589a(zzadn zzadnVar) {
        synchronized (this) {
            this.f15470D = zzadnVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15588a(zzads zzadsVar) {
        synchronized (this) {
            this.f15469C = zzadsVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu
    /* renamed from: a */
    public final void mo15586a(zzbhd zzbhdVar) {
        synchronized (this) {
            if (this.f15513z != null) {
                zzbbq.m15856b("Attempt to create multiple AdWebViewVideoControllers.");
            } else {
                this.f15513z = zzbhdVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15585a(zzbhy zzbhyVar) {
        synchronized (this) {
            this.f15503p = zzbhyVar;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15584a(zzdnv zzdnvVar, zzdnw zzdnwVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    /* renamed from: a */
    public final void mo11534a(zzqr zzqrVar) {
        synchronized (this) {
            this.f15467A = zzqrVar.f28889j;
        }
        m26284c(zzqrVar.f28889j);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15583a(zzsc zzscVar) {
        synchronized (this) {
            this.f15471E = zzscVar;
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m26288a(Boolean bool) {
        synchronized (this) {
            this.f15509v = bool;
        }
        zzp.m17965g().m16189a(bool);
    }

    @Override // com.google.android.gms.internal.ads.zzaks
    /* renamed from: a */
    public final void mo15582a(String str) {
        m26281h(str);
    }

    /* renamed from: a */
    public final void m26287a(String str, ValueCallback<String> valueCallback) {
        synchronized (this) {
            if (!mo15560g()) {
                evaluateJavascript(str, null);
            } else {
                zzbbq.m15852d("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15581a(String str, Predicate<zzahq<? super zzbgj>> predicate) {
        zzbgi zzbgiVar = this.f15500m;
        if (zzbgiVar != null) {
            zzbgiVar.m15629a(str, predicate);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15580a(String str, zzahq<? super zzbgj> zzahqVar) {
        zzbgi zzbgiVar = this.f15500m;
        if (zzbgiVar != null) {
            zzbgiVar.m15622b(str, zzahqVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu
    /* renamed from: a */
    public final void mo15579a(String str, zzbfl zzbflVar) {
        synchronized (this) {
            if (this.f15485S == null) {
                this.f15485S = new HashMap();
            }
            this.f15485S.put(str, zzbflVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: a */
    public final void mo15578a(String str, String str2, String str3) {
        synchronized (this) {
            if (!mo15560g()) {
                super.loadDataWithBaseURL(str, zzbho.m15523a(str2, zzbho.m15524a()), "text/html", Request.DEFAULT_PARAMS_ENCODING, str3);
            } else {
                zzbbq.m15852d("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    /* renamed from: a */
    public final void mo15577a(String str, Map<String, ?> map) {
        try {
            mo15576a(str, zzp.m17969c().m16118a(map));
        } catch (JSONException e) {
            zzbbq.m15852d("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    /* renamed from: a */
    public final void mo15576a(String str, JSONObject jSONObject) {
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
        zzbbq.m15858a(valueOf.length() != 0 ? "Dispatching AFMA event: ".concat(valueOf) : new String("Dispatching AFMA event: "));
        m26281h(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: a */
    public final void mo15575a(boolean z) {
        this.f15500m.m15620c(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    /* renamed from: a */
    public final void mo15521a(boolean z, int i) {
        this.f15500m.m15625a(z, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    /* renamed from: a */
    public final void mo15520a(boolean z, int i, String str) {
        this.f15500m.m15624a(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    /* renamed from: a */
    public final void mo15519a(boolean z, int i, String str, String str2) {
        this.f15500m.m15623a(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: a */
    public final void mo15574a(boolean z, long j) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("success", z ? "1" : "0");
        hashMap.put(VastIconXmlManager.DURATION, Long.toString(j));
        mo15577a("onCacheAccessComplete", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu, com.google.android.gms.internal.ads.zzbhi
    /* renamed from: b */
    public final Activity mo15528b() {
        return this.f15488a.m15502b();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: b */
    public final void mo15573b(Context context) {
        this.f15488a.setBaseContext(context);
        this.f15480N.m15887a(this.f15488a.m15502b());
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: b */
    public final void mo15572b(zze zzeVar) {
        synchronized (this) {
            this.f15478L = zzeVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: b */
    public final void mo15570b(String str, zzahq<? super zzbgj> zzahqVar) {
        zzbgi zzbgiVar = this.f15500m;
        if (zzbgiVar != null) {
            zzbgiVar.m15628a(str, zzahqVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaks
    /* renamed from: b */
    public final void mo15569b(String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        String jSONObject3 = jSONObject2.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(jSONObject3).length());
        sb.append(str);
        sb.append("(");
        sb.append(jSONObject3);
        sb.append(");");
        m26281h(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: b */
    public final void mo15568b(boolean z) {
        synchronized (this) {
            if (this.f15501n != null) {
                this.f15501n.m18013a(this.f15500m.mo15482b(), z);
            } else {
                this.f15505r = z;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: b */
    public final boolean mo15567b(final boolean z, final int i) {
        destroy();
        this.f15487U.m11425a(new zztr(z, i) { // from class: c.d.b.d.g.a.t9

            /* renamed from: a */
            public final boolean f15362a;

            /* renamed from: b */
            public final int f15363b;

            {
                this.f15362a = z;
                this.f15363b = i;
            }

            @Override // com.google.android.gms.internal.ads.zztr
            /* renamed from: a */
            public final void mo11427a(zzua.zzi.zza zzaVar) {
                ViewTreeObserver$OnGlobalLayoutListenerC4096u9.m26286a(this.f15362a, this.f15363b, zzaVar);
            }
        });
        this.f15487U.m11424a(zztu.zza.zzb.ANDROID_WEBVIEW_CRASH);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbhr
    /* renamed from: c */
    public final zzbhy mo15517c() {
        zzbhy zzbhyVar;
        synchronized (this) {
            zzbhyVar = this.f15503p;
        }
        return zzbhyVar;
    }

    /* renamed from: c */
    public final void m26284c(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", z ? "1" : "0");
        mo15577a("onAdVisibilityChanged", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu
    /* renamed from: d */
    public final zzabp mo15566d() {
        return this.f15477K;
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: d */
    public final zzbfl mo15565d(String str) {
        synchronized (this) {
            if (this.f15485S == null) {
                return null;
            }
            return this.f15485S.get(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: d */
    public final void mo15564d(boolean z) {
        synchronized (this) {
            this.f15511x = z;
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbgj
    public final void destroy() {
        synchronized (this) {
            m26294X();
            this.f15480N.m15883d();
            if (this.f15501n != null) {
                this.f15501n.m18018Q1();
                this.f15501n.onDestroy();
                this.f15501n = null;
            }
            this.f15502o = null;
            this.f15500m.m15618i();
            if (!this.f15506s) {
                zzp.m17947y();
                zzbfi.m15672a(this);
                m26295W();
                this.f15506s = true;
                zzayp.m16153g("Initiating WebView self destruct sequence in 3...");
                zzayp.m16153g("Loading blank page in WebView, 2...");
                m26282g("about:blank");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: e */
    public final void mo15563e(boolean z) {
        synchronized (this) {
            int i = this.f15472F + (z ? 1 : -1);
            this.f15472F = i;
            if (i <= 0 && this.f15501n != null) {
                this.f15501n.m18005j2();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbhl
    /* renamed from: e */
    public final boolean mo15526e() {
        boolean z;
        synchronized (this) {
            z = this.f15507t;
        }
        return z;
    }

    @Override // android.webkit.WebView
    public final void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        synchronized (this) {
            if (mo15560g()) {
                zzbbq.m15849f("#004 The webview is destroyed. Ignoring action.");
                if (valueCallback != null) {
                    valueCallback.onReceiveValue(null);
                }
                return;
            }
            super.evaluateJavascript(str, valueCallback);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu
    /* renamed from: f */
    public final zzb mo15562f() {
        return this.f15493f;
    }

    /* renamed from: f */
    public final void m26283f(String str) {
        synchronized (this) {
            if (!mo15560g()) {
                loadUrl(str);
            } else {
                zzbbq.m15852d("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: f */
    public final void mo15561f(boolean z) {
        this.f15500m.m15619d(z);
    }

    public final void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!this.f15506s) {
                    this.f15500m.m15618i();
                    zzp.m17947y();
                    zzbfi.m15672a(this);
                    m26295W();
                    m26292Z();
                }
            }
        } finally {
            super.finalize();
        }
    }

    /* renamed from: g */
    public final void m26282g(String str) {
        synchronized (this) {
            try {
                super.loadUrl(str);
            } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError | UnsatisfiedLinkError e) {
                zzp.m17965g().m16188a(e, "AdWebViewImpl.loadUrlUnsafe");
                zzbbq.m15853c("Could not call loadUrl. ", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: g */
    public final void mo15559g(boolean z) {
        synchronized (this) {
            boolean z2 = z != this.f15507t;
            this.f15507t = z;
            m26298T();
            if (z2) {
                if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23683H)).booleanValue() || !this.f15503p.m15510b()) {
                    new zzaqn(this).m16425c(z ? "expanded" : "default");
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: g */
    public final boolean mo15560g() {
        boolean z;
        synchronized (this) {
            z = this.f15506s;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    public final String getRequestId() {
        String str;
        synchronized (this) {
            str = this.f15512y;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbhs
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    public final WebView getWebView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbhq
    /* renamed from: h */
    public final zzeg mo15518h() {
        return this.f15489b;
    }

    /* renamed from: h */
    public final void m26281h(String str) {
        if (PlatformVersion.m17062f()) {
            if (m26293Y() == null) {
                m26300R();
            }
            if (m26293Y().booleanValue()) {
                m26287a(str, (ValueCallback<String>) null);
                return;
            }
            String valueOf = String.valueOf(str);
            m26283f(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
            return;
        }
        String valueOf2 = String.valueOf(str);
        m26283f(valueOf2.length() != 0 ? "javascript:".concat(valueOf2) : new String("javascript:"));
    }

    @Override // com.google.android.gms.internal.ads.zzbgj, com.google.android.gms.internal.ads.zzbdu
    /* renamed from: i */
    public final zzbhd mo15558i() {
        zzbhd zzbhdVar;
        synchronized (this) {
            zzbhdVar = this.f15513z;
        }
        return zzbhdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: j */
    public final int mo15557j() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: k */
    public final void mo15556k() {
        this.f15480N.m15884c();
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: l */
    public final zze mo15555l() {
        zze zzeVar;
        synchronized (this) {
            zzeVar = this.f15478L;
        }
        return zzeVar;
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbgj
    public final void loadData(String str, String str2, String str3) {
        synchronized (this) {
            if (!mo15560g()) {
                super.loadData(str, str2, str3);
            } else {
                zzbbq.m15852d("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbgj
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            if (!mo15560g()) {
                super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            } else {
                zzbbq.m15852d("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbgj
    public final void loadUrl(String str) {
        synchronized (this) {
            if (!mo15560g()) {
                try {
                    super.loadUrl(str);
                } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError e) {
                    zzp.m17965g().m16188a(e, "AdWebViewImpl.loadUrl");
                    zzbbq.m15853c("Could not call loadUrl. ", e);
                }
            } else {
                zzbbq.m15852d("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: m */
    public final zzbdn mo15554m() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: o */
    public final int mo15553o() {
        return getMeasuredHeight();
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        synchronized (this) {
            super.onAttachedToWindow();
            if (!mo15560g()) {
                this.f15480N.m15888a();
            }
            boolean z = this.f15467A;
            boolean z2 = z;
            if (this.f15500m != null) {
                z2 = z;
                if (this.f15500m.m15617j()) {
                    if (!this.f15468B) {
                        this.f15500m.m15615l();
                        this.f15500m.m15614m();
                        this.f15468B = true;
                    }
                    m26301Q();
                    z2 = true;
                }
            }
            m26284c(z2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        synchronized (this) {
            if (!mo15560g()) {
                this.f15480N.m15886b();
            }
            super.onDetachedFromWindow();
            if (this.f15468B && this.f15500m != null && this.f15500m.m15617j() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.f15500m.m15615l();
                this.f15500m.m15614m();
                this.f15468B = false;
            }
        }
        m26284c(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            zzp.m17969c();
            zzayu.m16143a(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(str4).length());
            sb.append("Couldn't find an Activity to view url/mimetype: ");
            sb.append(str);
            sb.append(" / ");
            sb.append(str4);
            zzbbq.m15858a(sb.toString());
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (!mo15560g()) {
            if (Build.VERSION.SDK_INT != 21 || !canvas.isHardwareAccelerated() || isAttachedToWindow()) {
                super.onDraw(canvas);
            }
        }
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
        boolean Q = m26301Q();
        zze O = mo15595O();
        if (O != null && Q) {
            O.m18008g2();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0278 A[Catch: all -> 0x036e, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0012, B:11:0x0019, B:13:0x0020, B:16:0x002d, B:18:0x0037, B:21:0x0040, B:23:0x004a, B:25:0x005e, B:28:0x0067, B:30:0x0070, B:34:0x0083, B:37:0x008c, B:48:0x0100, B:51:0x0114, B:53:0x011e, B:55:0x0132, B:58:0x013b, B:60:0x016a, B:61:0x0177, B:63:0x017d, B:66:0x0186, B:69:0x018f, B:71:0x0199, B:74:0x01ae, B:86:0x01f9, B:88:0x0204, B:93:0x021a, B:95:0x0221, B:97:0x0231, B:99:0x0249, B:109:0x0278, B:111:0x0308, B:113:0x030e, B:115:0x031a, B:118:0x032c, B:120:0x0335, B:122:0x033b, B:124:0x0341, B:126:0x0351, B:130:0x0365), top: B:137:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x032c A[Catch: all -> 0x036e, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0012, B:11:0x0019, B:13:0x0020, B:16:0x002d, B:18:0x0037, B:21:0x0040, B:23:0x004a, B:25:0x005e, B:28:0x0067, B:30:0x0070, B:34:0x0083, B:37:0x008c, B:48:0x0100, B:51:0x0114, B:53:0x011e, B:55:0x0132, B:58:0x013b, B:60:0x016a, B:61:0x0177, B:63:0x017d, B:66:0x0186, B:69:0x018f, B:71:0x0199, B:74:0x01ae, B:86:0x01f9, B:88:0x0204, B:93:0x021a, B:95:0x0221, B:97:0x0231, B:99:0x0249, B:109:0x0278, B:111:0x0308, B:113:0x030e, B:115:0x031a, B:118:0x032c, B:120:0x0335, B:122:0x033b, B:124:0x0341, B:126:0x0351, B:130:0x0365), top: B:137:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0231 A[Catch: all -> 0x036e, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0012, B:11:0x0019, B:13:0x0020, B:16:0x002d, B:18:0x0037, B:21:0x0040, B:23:0x004a, B:25:0x005e, B:28:0x0067, B:30:0x0070, B:34:0x0083, B:37:0x008c, B:48:0x0100, B:51:0x0114, B:53:0x011e, B:55:0x0132, B:58:0x013b, B:60:0x016a, B:61:0x0177, B:63:0x017d, B:66:0x0186, B:69:0x018f, B:71:0x0199, B:74:0x01ae, B:86:0x01f9, B:88:0x0204, B:93:0x021a, B:95:0x0221, B:97:0x0231, B:99:0x0249, B:109:0x0278, B:111:0x0308, B:113:0x030e, B:115:0x031a, B:118:0x032c, B:120:0x0335, B:122:0x033b, B:124:0x0341, B:126:0x0351, B:130:0x0365), top: B:137:0x0002 }] */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 883
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.ViewTreeObserver$OnGlobalLayoutListenerC4096u9.onMeasure(int, int):void");
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbgj
    public final void onPause() {
        if (!mo15560g()) {
            try {
                super.onPause();
            } catch (Exception e) {
                zzbbq.m15855b("Could not pause webview.", e);
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbgj
    public final void onResume() {
        if (!mo15560g()) {
            try {
                super.onResume();
            } catch (Exception e) {
                zzbbq.m15855b("Could not resume webview.", e);
            }
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f15500m.m15617j() || this.f15500m.m15616k()) {
            zzeg zzegVar = this.f15489b;
            if (zzegVar != null) {
                zzegVar.m12599a(motionEvent);
            }
            zzacb zzacbVar = this.f15490c;
            if (zzacbVar != null) {
                zzacbVar.m16872a(motionEvent);
            }
        } else {
            synchronized (this) {
                if (this.f15469C != null) {
                    this.f15469C.mo16843a(motionEvent);
                }
            }
        }
        if (mo15560g()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.ads.internal.zzk
    /* renamed from: p */
    public final void mo15552p() {
        synchronized (this) {
            if (this.f15492e != null) {
                this.f15492e.mo15552p();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: r */
    public final void mo15551r() {
        if (this.f15476J == null) {
            zzabq a = zzabj.m16896a(this.f15477K.m16892a());
            this.f15476J = a;
            this.f15477K.m16891a("native:view_load", a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: s */
    public final void mo15550s() {
        synchronized (this) {
            if (this.f15470D != null) {
                this.f15470D.mo14260L1();
            }
        }
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzbgj
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        new WeakReference(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    public final void setRequestedOrientation(int i) {
        synchronized (this) {
            this.f15510w = i;
            if (this.f15501n != null) {
                this.f15501n.m18009f(i);
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbgj
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzbgi) {
            this.f15500m = (zzbgi) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (!mo15560g()) {
            try {
                super.stopLoading();
            } catch (Exception e) {
                zzbbq.m15855b("Could not stop loading webview.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: t */
    public final String mo15549t() {
        String str;
        synchronized (this) {
            str = this.f15504q;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    /* renamed from: u */
    public final void mo15548u() {
        zze O = mo15595O();
        if (O != null) {
            O.m18006i2();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: v */
    public final zzads mo15547v() {
        zzads zzadsVar;
        synchronized (this) {
            zzadsVar = this.f15469C;
        }
        return zzadsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: w */
    public final IObjectWrapper mo15546w() {
        IObjectWrapper iObjectWrapper;
        synchronized (this) {
            iObjectWrapper = this.f15502o;
        }
        return iObjectWrapper;
    }

    @Override // com.google.android.gms.ads.internal.zzk
    /* renamed from: x */
    public final void mo15545x() {
        synchronized (this) {
            if (this.f15492e != null) {
                this.f15492e.mo15545x();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: y */
    public final void mo15544y() {
        if (this.f15474H == null) {
            zzabj.m16895a(this.f15477K.m16892a(), this.f15475I, "aes2");
            zzabq a = zzabj.m16896a(this.f15477K.m16892a());
            this.f15474H = a;
            this.f15477K.m16891a("native:view_show", a);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f15491d.f24759a);
        mo15577a("onshow", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbgj
    /* renamed from: z */
    public final /* synthetic */ zzbhv mo15543z() {
        return this.f15500m;
    }
}
