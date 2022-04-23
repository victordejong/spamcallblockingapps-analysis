package com.google.android.gms.internal.ads;

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
import com.amazonaws.services.s3.util.Mimetypes;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.util.zzae;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzbz;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzm;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.n;
import com.google.android.gms.common.util.o;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.internal.ads.ehn;
import com.google.android.gms.internal.ads.eht;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.VastIconXmlManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aeh.class */
public final class aeh extends WebView implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, adt {
    private aem A;
    private boolean B;
    private boolean C;
    private dg D;
    private df E;
    private efu F;
    private int G;
    private int H;
    private bg I;
    private bg J;
    private bg K;
    private bf L;
    private WeakReference<View.OnClickListener> M;
    private int N;
    private int O;
    private int P;
    private zze Q;
    private boolean R;
    private zzbz S;

    /* renamed from: a  reason: collision with root package name */
    private final afi f23189a;
    private Map<String, acu> aa;
    private final WindowManager ab;
    private final ehk ac;

    /* renamed from: b  reason: collision with root package name */
    private final die f23190b;

    /* renamed from: c  reason: collision with root package name */
    private final bw f23191c;

    /* renamed from: d  reason: collision with root package name */
    private final zzbar f23192d;
    private final zzm e;
    private final zzb f;
    private final DisplayMetrics g;
    private final float h;
    private cov i;
    private coz j;
    private ads m;
    private zze n;
    private b o;
    private afh p;
    private String q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private Boolean v;
    private boolean k = false;
    private boolean l = false;
    private boolean x = true;
    private boolean y = false;
    private String z = "";
    private int T = -1;
    private int U = -1;
    private int V = -1;
    private int W = -1;
    private int w = -1;

    private aeh(afi afiVar, afh afhVar, String str, boolean z, boolean z2, die dieVar, bw bwVar, zzbar zzbarVar, bi biVar, zzm zzmVar, zzb zzbVar, ehk ehkVar, cov covVar, coz cozVar) {
        super(afiVar);
        coz cozVar2;
        this.f23189a = afiVar;
        this.p = afhVar;
        this.q = str;
        this.t = z;
        this.f23190b = dieVar;
        this.f23191c = bwVar;
        this.f23192d = zzbarVar;
        this.e = zzmVar;
        this.f = zzbVar;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.ab = windowManager;
        zzr.zzkv();
        DisplayMetrics zza = zzj.zza(windowManager);
        this.g = zza;
        this.h = zza.density;
        this.ac = ehkVar;
        this.i = covVar;
        this.j = cozVar;
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            zzd.zzc("Unable to enable Javascript.", e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(2);
        }
        settings.setUserAgentString(zzr.zzkv().zzq(afiVar, zzbarVar.zzbrz));
        zzr.zzkx().zza(getContext(), settings);
        setDownloadListener(this);
        X();
        if (n.c()) {
            addJavascriptInterface(new aeq(this, new aer(this) { // from class: com.google.android.gms.internal.ads.aep

                /* renamed from: a  reason: collision with root package name */
                private final adt f23206a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23206a = this;
                }

                @Override // com.google.android.gms.internal.ads.aer
                public final void a(Uri uri) {
                    afe B = this.f23206a.B();
                    if (B == null) {
                        zzd.zzex("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
                    } else {
                        B.a(uri);
                    }
                }
            }), "googleAdsJsInterface");
        }
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        this.S = new zzbz(this.f23189a.f23219a, this, this, null);
        ac();
        bf bfVar = new bf(new bi(true, "make_wv", this.q));
        this.L = bfVar;
        bi biVar2 = bfVar.f24306b;
        synchronized (biVar2.f24487b) {
            biVar2.f24488c = biVar;
        }
        if (!(!((Boolean) ekb.e().a(aq.bl)).booleanValue() || (cozVar2 = this.j) == null || cozVar2.f26197b == null)) {
            this.L.f24306b.a("gqi", this.j.f26197b);
        }
        bg a2 = ay.a(this.L.f24306b);
        this.J = a2;
        this.L.a("native:view_create", a2);
        this.K = null;
        this.I = null;
        zzr.zzkx().zzbh(afiVar);
        zzr.zzkz().f.incrementAndGet();
    }

    private final boolean T() {
        int i;
        int i2;
        boolean z = false;
        if (!this.m.b() && !this.m.c()) {
            return false;
        }
        ekb.a();
        DisplayMetrics displayMetrics = this.g;
        int b2 = yq.b(displayMetrics, displayMetrics.widthPixels);
        ekb.a();
        DisplayMetrics displayMetrics2 = this.g;
        int b3 = yq.b(displayMetrics2, displayMetrics2.heightPixels);
        Activity activity = this.f23189a.f23219a;
        if (activity == null || activity.getWindow() == null) {
            i2 = b2;
            i = b3;
        } else {
            zzr.zzkv();
            int[] zzf = zzj.zzf(activity);
            ekb.a();
            i2 = yq.b(this.g, zzf[0]);
            ekb.a();
            i = yq.b(this.g, zzf[1]);
        }
        int i3 = this.U;
        if (i3 == b2 && this.T == b3 && this.V == i2 && this.W == i) {
            return false;
        }
        if (!(i3 == b2 && this.T == b3)) {
            z = true;
        }
        this.U = b2;
        this.T = b3;
        this.V = i2;
        this.W = i;
        new qa(this).a(b2, b3, i2, i, this.g.density, this.ab.getDefaultDisplay().getRotation());
        return z;
    }

    private final void U() {
        synchronized (this) {
            Boolean b2 = zzr.zzkz().b();
            this.v = b2;
            if (b2 == null) {
                try {
                    evaluateJavascript("(function(){})()", null);
                    a(Boolean.TRUE);
                } catch (IllegalStateException e) {
                    a(Boolean.FALSE);
                }
            }
        }
    }

    private final Boolean V() {
        Boolean bool;
        synchronized (this) {
            bool = this.v;
        }
        return bool;
    }

    private final void W() {
        ay.a(this.L.f24306b, this.J, "aeh2");
    }

    private final void X() {
        synchronized (this) {
            if (!this.t && !this.p.d()) {
                if (Build.VERSION.SDK_INT < 18) {
                    zzd.zzdz("Disabling hardware acceleration on an AdView.");
                    Y();
                    return;
                }
                zzd.zzdz("Enabling hardware acceleration on an AdView.");
                Z();
                return;
            }
            zzd.zzdz("Enabling hardware acceleration on an overlay.");
            Z();
        }
    }

    private final void Y() {
        synchronized (this) {
            if (!this.u) {
                setLayerType(1, null);
            }
            this.u = true;
        }
    }

    private final void Z() {
        synchronized (this) {
            if (this.u) {
                setLayerType(0, null);
            }
            this.u = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static aeh a(Context context, afh afhVar, String str, boolean z, boolean z2, die dieVar, bw bwVar, zzbar zzbarVar, bi biVar, zzm zzmVar, zzb zzbVar, ehk ehkVar, cov covVar, coz cozVar) {
        return new aeh(new afi(context), afhVar, str, z, z2, dieVar, bwVar, zzbarVar, null, zzmVar, zzbVar, ehkVar, covVar, cozVar);
    }

    private final void a(Boolean bool) {
        synchronized (this) {
            this.v = bool;
        }
        zzr.zzkz().a(bool);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(boolean z, int i, eht.n.a aVar) {
        eht.f.a a2 = eht.f.a();
        if (a2.a() != z) {
            a2.a(z);
        }
        aVar.a(a2.a(i).f());
    }

    private final void aa() {
        synchronized (this) {
            if (!this.R) {
                this.R = true;
                zzr.zzkz().f.decrementAndGet();
            }
        }
    }

    private final void ab() {
        synchronized (this) {
            Map<String, acu> map = this.aa;
            if (map != null) {
                for (acu acuVar : map.values()) {
                    acuVar.a();
                }
            }
            this.aa = null;
        }
    }

    private final void ac() {
        bi biVar;
        bf bfVar = this.L;
        if (bfVar != null && (biVar = bfVar.f24306b) != null && zzr.zzkz().a() != null) {
            zzr.zzkz().a().a(biVar);
        }
    }

    private final void c(String str) {
        synchronized (this) {
            if (!H()) {
                loadUrl(str);
            } else {
                zzd.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    private final void d(String str) {
        synchronized (this) {
            try {
                super.loadUrl(str);
            } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError | UnsatisfiedLinkError e) {
                zzr.zzkz().a(e, "AdWebViewImpl.loadUrlUnsafe");
                zzd.zzd("Could not call loadUrl. ", e);
            }
        }
    }

    private final void e(String str) {
        synchronized (this) {
            if (!H()) {
                evaluateJavascript(str, null);
            } else {
                zzd.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    private final void f(String str) {
        if (n.e()) {
            if (V() == null) {
                U();
            }
            if (V().booleanValue()) {
                e(str);
                return;
            }
            String valueOf = String.valueOf(str);
            c(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
            return;
        }
        String valueOf2 = String.valueOf(str);
        c(valueOf2.length() != 0 ? "javascript:".concat(valueOf2) : new String("javascript:"));
    }

    private final void h(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", z ? "1" : "0");
        a("onAdVisibilityChanged", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final String A() {
        String str;
        synchronized (this) {
            str = this.q;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final /* synthetic */ afe B() {
        return this.m;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final WebViewClient C() {
        return this.m;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final boolean D() {
        boolean z;
        synchronized (this) {
            z = this.r;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.aez
    public final die E() {
        return this.f23190b;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final b F() {
        b bVar;
        synchronized (this) {
            bVar = this.o;
        }
        return bVar;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final boolean G() {
        boolean z;
        synchronized (this) {
            z = this.t;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final boolean H() {
        boolean z;
        synchronized (this) {
            z = this.s;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void I() {
        synchronized (this) {
            zzd.zzed("Destroying WebView!");
            aa();
            zzj.zzegq.post(new aei(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final boolean J() {
        boolean z;
        synchronized (this) {
            z = this.x;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final boolean K() {
        boolean z;
        synchronized (this) {
            z = this.G > 0;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void L() {
        this.S.zzaal();
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void M() {
        if (this.K == null) {
            bg a2 = ay.a(this.L.f24306b);
            this.K = a2;
            this.L.a("native:view_load", a2);
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final dg N() {
        dg dgVar;
        synchronized (this) {
            dgVar = this.D;
        }
        return dgVar;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void O() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void P() {
        zzd.zzed("Cannot add text view to inner AdWebView");
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final efu Q() {
        efu efuVar;
        synchronized (this) {
            efuVar = this.F;
        }
        return efuVar;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final boolean R() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.aen
    public final coz S() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final aaq a() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final void a(int i) {
        synchronized (this) {
            this.N = i;
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(Context context) {
        this.f23189a.setBaseContext(context);
        this.S.zzj(this.f23189a.f23219a);
    }

    @Override // com.google.android.gms.internal.ads.aey
    public final void a(com.google.android.gms.ads.internal.overlay.zzb zzbVar) {
        this.m.a(zzbVar);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(zze zzeVar) {
        synchronized (this) {
            this.n = zzeVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.aey
    public final void a(zzbg zzbgVar, brs brsVar, bli bliVar, cty ctyVar, String str, String str2, int i) {
        this.m.a(zzbgVar, brsVar, bliVar, ctyVar, str, str2, i);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(b bVar) {
        synchronized (this) {
            this.o = bVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    public final void a(aem aemVar) {
        synchronized (this) {
            if (this.A != null) {
                zzd.zzex("Attempt to create multiple AdWebViewVideoControllers.");
            } else {
                this.A = aemVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(afh afhVar) {
        synchronized (this) {
            this.p = afhVar;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(cov covVar, coz cozVar) {
        this.i = covVar;
        this.j = cozVar;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(df dfVar) {
        synchronized (this) {
            this.E = dfVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(dg dgVar) {
        synchronized (this) {
            this.D = dgVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.eeg
    public final void a(eeh eehVar) {
        synchronized (this) {
            this.B = eehVar.j;
        }
        h(eehVar.j);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(efu efuVar) {
        synchronized (this) {
            this.F = efuVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.kf
    public final void a(String str) {
        f(str);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(String str, o<hi<? super adt>> oVar) {
        ads adsVar = this.m;
        if (adsVar != null) {
            synchronized (adsVar.f23160c) {
                List<hi<? super adt>> list = adsVar.f23159b.get(str);
                if (list != null) {
                    ArrayList arrayList = new ArrayList();
                    for (hi<? super adt> hiVar : list) {
                        if (oVar.a(hiVar)) {
                            arrayList.add(hiVar);
                        }
                    }
                    list.removeAll(arrayList);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    public final void a(String str, acu acuVar) {
        synchronized (this) {
            if (this.aa == null) {
                this.aa = new HashMap();
            }
            this.aa.put(str, acuVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(String str, hi<? super adt> hiVar) {
        ads adsVar = this.m;
        if (adsVar != null) {
            adsVar.a(str, hiVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void a(String str, String str2, String str3) {
        synchronized (this) {
            if (!H()) {
                super.loadDataWithBaseURL(str, aex.a(str2, aex.a()), Mimetypes.MIMETYPE_HTML, "UTF-8", str3);
            } else {
                zzd.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.jq
    public final void a(String str, Map<String, ?> map) {
        try {
            a(str, zzr.zzkv().zzj(map));
        } catch (JSONException e) {
            zzd.zzez("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.jq
    public final void a(String str, JSONObject jSONObject) {
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
        zzd.zzdz(valueOf.length() != 0 ? "Dispatching AFMA event: ".concat(valueOf) : new String("Dispatching AFMA event: "));
        f(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final void a(boolean z) {
        this.m.f23161d = z;
    }

    @Override // com.google.android.gms.internal.ads.aey
    public final void a(boolean z, int i, String str) {
        this.m.a(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.aey
    public final void a(boolean z, int i, String str, String str2) {
        this.m.a(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final void a(boolean z, long j) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("success", z ? "1" : "0");
        hashMap.put(VastIconXmlManager.DURATION, Long.toString(j));
        a("onCacheAccessComplete", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final boolean a(final boolean z, final int i) {
        destroy();
        this.ac.a(new ehj(z, i) { // from class: com.google.android.gms.internal.ads.aeg

            /* renamed from: a  reason: collision with root package name */
            private final boolean f23187a;

            /* renamed from: b  reason: collision with root package name */
            private final int f23188b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23187a = z;
                this.f23188b = i;
            }

            @Override // com.google.android.gms.internal.ads.ehj
            public final void a(eht.n.a aVar) {
                aeh.a(this.f23187a, this.f23188b, aVar);
            }
        });
        this.ac.a(ehn.a.b.ANDROID_WEBVIEW_CRASH);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final acu b(String str) {
        synchronized (this) {
            Map<String, acu> map = this.aa;
            if (map == null) {
                return null;
            }
            return map.get(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    public final aem b() {
        aem aemVar;
        synchronized (this) {
            aemVar = this.A;
        }
        return aemVar;
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final void b(int i) {
        this.O = i;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void b(zze zzeVar) {
        synchronized (this) {
            this.Q = zzeVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void b(String str, hi<? super adt> hiVar) {
        ads adsVar = this.m;
        if (adsVar != null) {
            synchronized (adsVar.f23160c) {
                List<hi<? super adt>> list = adsVar.f23159b.get(str);
                if (list != null) {
                    list.remove(hiVar);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.kf
    public final void b(String str, JSONObject jSONObject) {
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
        f(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void b(boolean z) {
        synchronized (this) {
            boolean z2 = z != this.t;
            this.t = z;
            X();
            if (z2) {
                if (!((Boolean) ekb.e().a(aq.J)).booleanValue() || !this.p.d()) {
                    new qa(this).c(z ? "expanded" : "default");
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aey
    public final void b(boolean z, int i) {
        this.m.a(z, i);
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final bg c() {
        return this.J;
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final void c(int i) {
        this.P = i;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void c(boolean z) {
        synchronized (this) {
            zze zzeVar = this.n;
            if (zzeVar != null) {
                zzeVar.zza(this.m.b(), z);
            } else {
                this.r = z;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb, com.google.android.gms.internal.ads.aeu
    public final Activity d() {
        return this.f23189a.f23219a;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void d(int i) {
        if (i == 0) {
            ay.a(this.L.f24306b, this.J, "aebb2");
        }
        W();
        if (this.L.f24306b != null) {
            this.L.f24306b.a("close_type", String.valueOf(i));
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.f23192d.zzbrz);
        a("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void d(boolean z) {
        synchronized (this) {
            this.x = z;
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.adt
    public final void destroy() {
        synchronized (this) {
            ac();
            this.S.zzaam();
            zze zzeVar = this.n;
            if (zzeVar != null) {
                zzeVar.close();
                this.n.onDestroy();
                this.n = null;
            }
            this.o = null;
            this.m.k();
            if (!this.s) {
                zzr.zzlr();
                acr.a(this);
                ab();
                this.s = true;
                zzd.zzed("Initiating WebView self destruct sequence in 3...");
                zzd.zzed("Loading blank page in WebView, 2...");
                d("about:blank");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    public final zzb e() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void e(boolean z) {
        zze zzeVar;
        synchronized (this) {
            int i = this.G + (z ? 1 : -1);
            this.G = i;
            if (i <= 0 && (zzeVar = this.n) != null) {
                zzeVar.zzwo();
            }
        }
    }

    @Override // android.webkit.WebView
    public final void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        synchronized (this) {
            if (H()) {
                zzd.zzfb("#004 The webview is destroyed. Ignoring action.");
                if (valueCallback != null) {
                    valueCallback.onReceiveValue(null);
                }
                return;
            }
            super.evaluateJavascript(str, valueCallback);
        }
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final void f() {
        zze x = x();
        if (x != null) {
            x.zzwn();
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void f(boolean z) {
        this.m.f = z;
    }

    protected final void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!this.s) {
                    this.m.k();
                    zzr.zzlr();
                    acr.a(this);
                    ab();
                    aa();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final String g() {
        String str;
        synchronized (this) {
            str = this.z;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void g(boolean z) {
        synchronized (this) {
            if (z) {
                setBackgroundColor(0);
            }
            zze zzeVar = this.n;
            if (zzeVar != null) {
                zzeVar.zzac(z);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final String h() {
        synchronized (this) {
            coz cozVar = this.j;
            if (cozVar == null) {
                return null;
            }
            return cozVar.f26197b;
        }
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final int i() {
        int i;
        synchronized (this) {
            i = this.N;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    public final bf j() {
        return this.L;
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb, com.google.android.gms.internal.ads.afc
    public final zzbar k() {
        return this.f23192d;
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final int l() {
        return getMeasuredHeight();
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.adt
    public final void loadData(String str, String str2, String str3) {
        synchronized (this) {
            if (!H()) {
                super.loadData(str, str2, str3);
            } else {
                zzd.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.adt
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            if (!H()) {
                super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            } else {
                zzd.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.adt
    public final void loadUrl(String str) {
        synchronized (this) {
            if (!H()) {
                try {
                    super.loadUrl(str);
                } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError e) {
                    zzr.zzkz().a(e, "AdWebViewImpl.loadUrl");
                    zzd.zzd("Could not call loadUrl. ", e);
                }
            } else {
                zzd.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final int m() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final void n() {
        synchronized (this) {
            df dfVar = this.E;
            if (dfVar != null) {
                dfVar.a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final int o() {
        return this.O;
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        ads adsVar = this.m;
        if (adsVar != null) {
            adsVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        synchronized (this) {
            super.onAttachedToWindow();
            if (!H()) {
                this.S.onAttachedToWindow();
            }
            boolean z = this.B;
            ads adsVar = this.m;
            boolean z2 = z;
            if (adsVar != null) {
                z2 = z;
                if (adsVar.c()) {
                    if (!this.C) {
                        this.m.e();
                        this.m.f();
                        this.C = true;
                    }
                    T();
                    z2 = true;
                }
            }
            h(z2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        ads adsVar;
        synchronized (this) {
            if (!H()) {
                this.S.onDetachedFromWindow();
            }
            super.onDetachedFromWindow();
            if (this.C && (adsVar = this.m) != null && adsVar.c() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.m.e();
                this.m.f();
                this.C = false;
            }
        }
        h(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            zzr.zzkv();
            zzj.zza(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(str4).length());
            sb.append("Couldn't find an Activity to view url/mimetype: ");
            sb.append(str);
            sb.append(" / ");
            sb.append(str4);
            zzd.zzdz(sb.toString());
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected final void onDraw(Canvas canvas) {
        if (!H()) {
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
            if (axisValue > BitmapDescriptorFactory.HUE_RED && !canScrollVertically(-1)) {
                return false;
            }
            if (axisValue < BitmapDescriptorFactory.HUE_RED && !canScrollVertically(1)) {
                return false;
            }
            if (axisValue2 > BitmapDescriptorFactory.HUE_RED && !canScrollHorizontally(-1)) {
                return false;
            }
            if (axisValue2 < BitmapDescriptorFactory.HUE_RED && !canScrollHorizontally(1)) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean T = T();
        zze x = x();
        if (x != null && T) {
            x.zzwl();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0261 A[Catch: all -> 0x03b7, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0012, B:11:0x0019, B:13:0x0020, B:20:0x0038, B:27:0x004e, B:30:0x0057, B:37:0x006d, B:39:0x0083, B:42:0x008c, B:44:0x0097, B:48:0x00ab, B:51:0x00b4, B:62:0x0124, B:65:0x0137, B:72:0x014d, B:74:0x0163, B:77:0x016c, B:81:0x01a9, B:83:0x01af, B:86:0x01b7, B:89:0x01c0, B:91:0x01ca, B:94:0x01df, B:106:0x0228, B:108:0x0233, B:113:0x0248, B:115:0x0250, B:117:0x0261, B:120:0x027f, B:130:0x02b3, B:132:0x02ea, B:134:0x0351, B:136:0x0357, B:138:0x0363, B:141:0x0375, B:143:0x037e, B:145:0x0384, B:147:0x038a, B:149:0x039a, B:153:0x03ae), top: B:160:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02b3 A[Catch: all -> 0x03b7, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0012, B:11:0x0019, B:13:0x0020, B:20:0x0038, B:27:0x004e, B:30:0x0057, B:37:0x006d, B:39:0x0083, B:42:0x008c, B:44:0x0097, B:48:0x00ab, B:51:0x00b4, B:62:0x0124, B:65:0x0137, B:72:0x014d, B:74:0x0163, B:77:0x016c, B:81:0x01a9, B:83:0x01af, B:86:0x01b7, B:89:0x01c0, B:91:0x01ca, B:94:0x01df, B:106:0x0228, B:108:0x0233, B:113:0x0248, B:115:0x0250, B:117:0x0261, B:120:0x027f, B:130:0x02b3, B:132:0x02ea, B:134:0x0351, B:136:0x0357, B:138:0x0363, B:141:0x0375, B:143:0x037e, B:145:0x0384, B:147:0x038a, B:149:0x039a, B:153:0x03ae), top: B:160:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0375 A[Catch: all -> 0x03b7, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:9:0x0012, B:11:0x0019, B:13:0x0020, B:20:0x0038, B:27:0x004e, B:30:0x0057, B:37:0x006d, B:39:0x0083, B:42:0x008c, B:44:0x0097, B:48:0x00ab, B:51:0x00b4, B:62:0x0124, B:65:0x0137, B:72:0x014d, B:74:0x0163, B:77:0x016c, B:81:0x01a9, B:83:0x01af, B:86:0x01b7, B:89:0x01c0, B:91:0x01ca, B:94:0x01df, B:106:0x0228, B:108:0x0233, B:113:0x0248, B:115:0x0250, B:117:0x0261, B:120:0x027f, B:130:0x02b3, B:132:0x02ea, B:134:0x0351, B:136:0x0357, B:138:0x0363, B:141:0x0375, B:143:0x037e, B:145:0x0384, B:147:0x038a, B:149:0x039a, B:153:0x03ae), top: B:160:0x0002 }] */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 958
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aeh.onMeasure(int, int):void");
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.adt
    public final void onPause() {
        if (!H()) {
            try {
                super.onPause();
            } catch (Exception e) {
                zzd.zzc("Could not pause webview.", e);
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.adt
    public final void onResume() {
        if (!H()) {
            try {
                super.onResume();
            } catch (Exception e) {
                zzd.zzc("Could not resume webview.", e);
            }
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.m.c() || this.m.d()) {
            die dieVar = this.f23190b;
            if (dieVar != null) {
                dieVar.a(motionEvent);
            }
            bw bwVar = this.f23191c;
            if (bwVar != null) {
                if (motionEvent.getAction() == 1 && motionEvent.getEventTime() > bwVar.f25246a.getEventTime()) {
                    bwVar.f25246a = MotionEvent.obtain(motionEvent);
                } else if (motionEvent.getAction() == 0 && motionEvent.getEventTime() > bwVar.f25247b.getEventTime()) {
                    bwVar.f25247b = MotionEvent.obtain(motionEvent);
                }
            }
        } else {
            synchronized (this) {
                dg dgVar = this.D;
                if (dgVar != null) {
                    dgVar.a(motionEvent);
                }
            }
        }
        if (H()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.abb
    public final int p() {
        return this.P;
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.adh
    public final cov q() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final WebView r() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.afb
    public final View s() {
        return this;
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.adt
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.M = new WeakReference<>(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void setRequestedOrientation(int i) {
        synchronized (this) {
            this.w = i;
            zze zzeVar = this.n;
            if (zzeVar != null) {
                zzeVar.setRequestedOrientation(i);
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.adt
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof ads) {
            this.m = (ads) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (!H()) {
            try {
                super.stopLoading();
            } catch (Exception e) {
                zzd.zzc("Could not stop loading webview.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void t() {
        W();
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f23192d.zzbrz);
        a("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void u() {
        if (this.I == null) {
            ay.a(this.L.f24306b, this.J, "aes2");
            bg a2 = ay.a(this.L.f24306b);
            this.I = a2;
            this.L.a("native:view_show", a2);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f23192d.zzbrz);
        a("onshow", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void v() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(zzr.zzla().zzrh()));
        hashMap.put("app_volume", String.valueOf(zzr.zzla().zzrg()));
        hashMap.put("device_volume", String.valueOf(zzae.zzbj(getContext())));
        a("volume", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final Context w() {
        return this.f23189a.f23220b;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final zze x() {
        zze zzeVar;
        synchronized (this) {
            zzeVar = this.n;
        }
        return zzeVar;
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final zze y() {
        zze zzeVar;
        synchronized (this) {
            zzeVar = this.Q;
        }
        return zzeVar;
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.afa
    public final afh z() {
        afh afhVar;
        synchronized (this) {
            afhVar = this.p;
        }
        return afhVar;
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final void zzkr() {
        synchronized (this) {
            this.y = true;
            zzm zzmVar = this.e;
            if (zzmVar != null) {
                zzmVar.zzkr();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final void zzks() {
        synchronized (this) {
            this.y = false;
            zzm zzmVar = this.e;
            if (zzmVar != null) {
                zzmVar.zzks();
            }
        }
    }
}
