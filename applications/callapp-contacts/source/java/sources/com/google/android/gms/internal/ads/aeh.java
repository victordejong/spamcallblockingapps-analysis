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
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.util.zzae;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzbz;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzm;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.AbstractC12111o;
import com.google.android.gms.common.util.C12110n;
import com.google.android.gms.dynamic.AbstractC12126b;
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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aeh.class */
public final class aeh extends WebView implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, adt {

    /* renamed from: A */
    private aem f40060A;

    /* renamed from: B */
    private boolean f40061B;

    /* renamed from: C */
    private boolean f40062C;

    /* renamed from: D */
    private AbstractC12330dg f40063D;

    /* renamed from: E */
    private AbstractC12326df f40064E;

    /* renamed from: F */
    private efu f40065F;

    /* renamed from: G */
    private int f40066G;

    /* renamed from: H */
    private int f40067H;

    /* renamed from: I */
    private C12239bg f40068I;

    /* renamed from: J */
    private C12239bg f40069J;

    /* renamed from: K */
    private C12239bg f40070K;

    /* renamed from: L */
    private C12238bf f40071L;

    /* renamed from: M */
    private WeakReference<View.OnClickListener> f40072M;

    /* renamed from: N */
    private int f40073N;

    /* renamed from: O */
    private int f40074O;

    /* renamed from: P */
    private int f40075P;

    /* renamed from: Q */
    private zze f40076Q;

    /* renamed from: R */
    private boolean f40077R;

    /* renamed from: S */
    private zzbz f40078S;

    /* renamed from: a */
    private final afi f40083a;

    /* renamed from: aa */
    private Map<String, acu> f40084aa;

    /* renamed from: ab */
    private final WindowManager f40085ab;

    /* renamed from: ac */
    private final ehk f40086ac;

    /* renamed from: b */
    private final die f40087b;

    /* renamed from: c */
    private final C12256bw f40088c;

    /* renamed from: d */
    private final zzbar f40089d;

    /* renamed from: e */
    private final zzm f40090e;

    /* renamed from: f */
    private final zzb f40091f;

    /* renamed from: g */
    private final DisplayMetrics f40092g;

    /* renamed from: h */
    private final float f40093h;

    /* renamed from: i */
    private cov f40094i;

    /* renamed from: j */
    private coz f40095j;

    /* renamed from: m */
    private C12170ads f40098m;

    /* renamed from: n */
    private zze f40099n;

    /* renamed from: o */
    private AbstractC12126b f40100o;

    /* renamed from: p */
    private afh f40101p;

    /* renamed from: q */
    private String f40102q;

    /* renamed from: r */
    private boolean f40103r;

    /* renamed from: s */
    private boolean f40104s;

    /* renamed from: t */
    private boolean f40105t;

    /* renamed from: u */
    private boolean f40106u;

    /* renamed from: v */
    private Boolean f40107v;

    /* renamed from: k */
    private boolean f40096k = false;

    /* renamed from: l */
    private boolean f40097l = false;

    /* renamed from: x */
    private boolean f40109x = true;

    /* renamed from: y */
    private boolean f40110y = false;

    /* renamed from: z */
    private String f40111z = "";

    /* renamed from: T */
    private int f40079T = -1;

    /* renamed from: U */
    private int f40080U = -1;

    /* renamed from: V */
    private int f40081V = -1;

    /* renamed from: W */
    private int f40082W = -1;

    /* renamed from: w */
    private int f40108w = -1;

    private aeh(afi afiVar, afh afhVar, String str, boolean z, boolean z2, die dieVar, C12256bw c12256bw, zzbar zzbarVar, C12241bi c12241bi, zzm zzmVar, zzb zzbVar, ehk ehkVar, cov covVar, coz cozVar) {
        super(afiVar);
        coz cozVar2;
        this.f40083a = afiVar;
        this.f40101p = afhVar;
        this.f40102q = str;
        this.f40105t = z;
        this.f40087b = dieVar;
        this.f40088c = c12256bw;
        this.f40089d = zzbarVar;
        this.f40090e = zzmVar;
        this.f40091f = zzbVar;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.f40085ab = windowManager;
        zzr.zzkv();
        DisplayMetrics zza = zzj.zza(windowManager);
        this.f40092g = zza;
        this.f40093h = zza.density;
        this.f40086ac = ehkVar;
        this.f40094i = covVar;
        this.f40095j = cozVar;
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
        m18824X();
        if (C12110n.m19019c()) {
            addJavascriptInterface(new aeq(this, new aer(this) { // from class: com.google.android.gms.internal.ads.aep

                /* renamed from: a */
                private final adt f40136a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f40136a = this;
                }

                @Override // com.google.android.gms.internal.ads.aer
                /* renamed from: a */
                public final void mo18802a(Uri uri) {
                    afe mo13808B = this.f40136a.mo13808B();
                    if (mo13808B == null) {
                        zzd.zzex("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
                    } else {
                        mo13808B.mo18790a(uri);
                    }
                }
            }), "googleAdsJsInterface");
        }
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        this.f40078S = new zzbz(this.f40083a.f40149a, this, this, null);
        m18814ac();
        C12238bf c12238bf = new C12238bf(new C12241bi(true, "make_wv", this.f40102q));
        this.f40071L = c12238bf;
        C12241bi c12241bi2 = c12238bf.f43768b;
        synchronized (c12241bi2.f44002b) {
            c12241bi2.f44003c = c12241bi;
        }
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42728bl)).booleanValue() && (cozVar2 = this.f40095j) != null && cozVar2.f46290b != null) {
            this.f40071L.f43768b.m17831a("gqi", this.f40095j.f46290b);
        }
        C12239bg m18329a = C12203ay.m18329a(this.f40071L.f43768b);
        this.f40069J = m18329a;
        this.f40071L.m17890a("native:view_create", m18329a);
        this.f40070K = null;
        this.f40068I = null;
        zzr.zzkx().zzbh(afiVar);
        zzr.zzkz().f50048f.incrementAndGet();
    }

    /* renamed from: T */
    private final boolean m18828T() {
        int i;
        int i2;
        boolean z = false;
        if (this.f40098m.mo18785b() || this.f40098m.m18838c()) {
            ekb.m14835a();
            DisplayMetrics displayMetrics = this.f40092g;
            int m13935b = C13077yq.m13935b(displayMetrics, displayMetrics.widthPixels);
            ekb.m14835a();
            DisplayMetrics displayMetrics2 = this.f40092g;
            int m13935b2 = C13077yq.m13935b(displayMetrics2, displayMetrics2.heightPixels);
            Activity activity = this.f40083a.f40149a;
            if (activity == null || activity.getWindow() == null) {
                i2 = m13935b;
                i = m13935b2;
            } else {
                zzr.zzkv();
                int[] zzf = zzj.zzf(activity);
                ekb.m14835a();
                i2 = C13077yq.m13935b(this.f40092g, zzf[0]);
                ekb.m14835a();
                i = C13077yq.m13935b(this.f40092g, zzf[1]);
            }
            int i3 = this.f40080U;
            if (i3 == m13935b && this.f40079T == m13935b2 && this.f40081V == i2 && this.f40082W == i) {
                return false;
            }
            if (i3 != m13935b || this.f40079T != m13935b2) {
                z = true;
            }
            this.f40080U = m13935b;
            this.f40079T = m13935b2;
            this.f40081V = i2;
            this.f40082W = i;
            new C12843qa(this).m14245a(m13935b, m13935b2, i2, i, this.f40092g.density, this.f40085ab.getDefaultDisplay().getRotation());
            return z;
        }
        return false;
    }

    /* renamed from: U */
    private final void m18827U() {
        synchronized (this) {
            Boolean m13978b = zzr.zzkz().m13978b();
            this.f40107v = m13978b;
            if (m13978b == null) {
                try {
                    evaluateJavascript("(function(){})()", null);
                    m18818a(Boolean.TRUE);
                } catch (IllegalStateException e) {
                    m18818a(Boolean.FALSE);
                }
            }
        }
    }

    /* renamed from: V */
    private final Boolean m18826V() {
        Boolean bool;
        synchronized (this) {
            bool = this.f40107v;
        }
        return bool;
    }

    /* renamed from: W */
    private final void m18825W() {
        C12203ay.m18328a(this.f40071L.f43768b, this.f40069J, "aeh2");
    }

    /* renamed from: X */
    private final void m18824X() {
        synchronized (this) {
            if (!this.f40105t && !this.f40101p.m18772d()) {
                if (Build.VERSION.SDK_INT < 18) {
                    zzd.zzdz("Disabling hardware acceleration on an AdView.");
                    m18823Y();
                    return;
                }
                zzd.zzdz("Enabling hardware acceleration on an AdView.");
                m18822Z();
                return;
            }
            zzd.zzdz("Enabling hardware acceleration on an overlay.");
            m18822Z();
        }
    }

    /* renamed from: Y */
    private final void m18823Y() {
        synchronized (this) {
            if (!this.f40106u) {
                setLayerType(1, null);
            }
            this.f40106u = true;
        }
    }

    /* renamed from: Z */
    private final void m18822Z() {
        synchronized (this) {
            if (this.f40106u) {
                setLayerType(0, null);
            }
            this.f40106u = false;
        }
    }

    /* renamed from: a */
    public static aeh m18821a(Context context, afh afhVar, String str, boolean z, boolean z2, die dieVar, C12256bw c12256bw, zzbar zzbarVar, C12241bi c12241bi, zzm zzmVar, zzb zzbVar, ehk ehkVar, cov covVar, coz cozVar) {
        return new aeh(new afi(context), afhVar, str, z, z2, dieVar, c12256bw, zzbarVar, null, zzmVar, zzbVar, ehkVar, covVar, cozVar);
    }

    /* renamed from: a */
    private final void m18818a(Boolean bool) {
        synchronized (this) {
            this.f40107v = bool;
        }
        zzr.zzkz().m13980a(bool);
    }

    /* renamed from: a */
    public static final /* synthetic */ void m18817a(boolean z, int i, eht.C12494n.C12495a c12495a) {
        eht.C12469f.C12470a m15026a = eht.C12469f.m15026a();
        if (m15026a.m15022a() != z) {
            m15026a.m15020a(z);
        }
        c12495a.m14967a(m15026a.m15021a(i).mo16259f());
    }

    /* renamed from: aa */
    private final void m18816aa() {
        synchronized (this) {
            if (!this.f40077R) {
                this.f40077R = true;
                zzr.zzkz().f50048f.decrementAndGet();
            }
        }
    }

    /* renamed from: ab */
    private final void m18815ab() {
        synchronized (this) {
            Map<String, acu> map = this.f40084aa;
            if (map != null) {
                for (acu acuVar : map.values()) {
                    acuVar.mo11351a();
                }
            }
            this.f40084aa = null;
        }
    }

    /* renamed from: ac */
    private final void m18814ac() {
        C12241bi c12241bi;
        C12238bf c12238bf = this.f40071L;
        if (c12238bf == null || (c12241bi = c12238bf.f43768b) == null || zzr.zzkz().m13983a() == null) {
            return;
        }
        zzr.zzkz().m13983a().m18348a(c12241bi);
    }

    /* renamed from: c */
    private final void m18812c(String str) {
        synchronized (this) {
            if (!mo13802H()) {
                loadUrl(str);
            } else {
                zzd.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    /* renamed from: d */
    private final void m18811d(String str) {
        synchronized (this) {
            try {
                super.loadUrl(str);
            } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError | UnsatisfiedLinkError e) {
                zzr.zzkz().m13979a(e, "AdWebViewImpl.loadUrlUnsafe");
                zzd.zzd("Could not call loadUrl. ", e);
            }
        }
    }

    /* renamed from: e */
    private final void m18810e(String str) {
        synchronized (this) {
            if (!mo13802H()) {
                evaluateJavascript(str, null);
            } else {
                zzd.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    /* renamed from: f */
    private final void m18809f(String str) {
        if (!C12110n.m19017e()) {
            String valueOf = String.valueOf(str);
            m18812c(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
            return;
        }
        if (m18826V() == null) {
            m18827U();
        }
        if (m18826V().booleanValue()) {
            m18810e(str);
            return;
        }
        String valueOf2 = String.valueOf(str);
        m18812c(valueOf2.length() != 0 ? "javascript:".concat(valueOf2) : new String("javascript:"));
    }

    /* renamed from: h */
    private final void m18808h(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", z ? "1" : "0");
        mo13770a("onAdVisibilityChanged", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: A */
    public final String mo13809A() {
        String str;
        synchronized (this) {
            str = this.f40102q;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: B */
    public final /* synthetic */ afe mo13808B() {
        return this.f40098m;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: C */
    public final WebViewClient mo13807C() {
        return this.f40098m;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: D */
    public final boolean mo13806D() {
        boolean z;
        synchronized (this) {
            z = this.f40103r;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.aez
    /* renamed from: E */
    public final die mo13805E() {
        return this.f40087b;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: F */
    public final AbstractC12126b mo13804F() {
        AbstractC12126b abstractC12126b;
        synchronized (this) {
            abstractC12126b = this.f40100o;
        }
        return abstractC12126b;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: G */
    public final boolean mo13803G() {
        boolean z;
        synchronized (this) {
            z = this.f40105t;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: H */
    public final boolean mo13802H() {
        boolean z;
        synchronized (this) {
            z = this.f40104s;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: I */
    public final void mo13801I() {
        synchronized (this) {
            zzd.zzed("Destroying WebView!");
            m18816aa();
            zzj.zzegq.post(new aei(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: J */
    public final boolean mo13800J() {
        boolean z;
        synchronized (this) {
            z = this.f40109x;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: K */
    public final boolean mo13799K() {
        boolean z;
        synchronized (this) {
            z = this.f40066G > 0;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: L */
    public final void mo13798L() {
        this.f40078S.zzaal();
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: M */
    public final void mo13797M() {
        if (this.f40070K == null) {
            C12239bg m18329a = C12203ay.m18329a(this.f40071L.f43768b);
            this.f40070K = m18329a;
            this.f40071L.m17890a("native:view_load", m18329a);
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: N */
    public final AbstractC12330dg mo13796N() {
        AbstractC12330dg abstractC12330dg;
        synchronized (this) {
            abstractC12330dg = this.f40063D;
        }
        return abstractC12330dg;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: O */
    public final void mo13795O() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: P */
    public final void mo13794P() {
        zzd.zzed("Cannot add text view to inner AdWebView");
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: Q */
    public final efu mo13793Q() {
        efu efuVar;
        synchronized (this) {
            efuVar = this.f40065F;
        }
        return efuVar;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: R */
    public final boolean mo13792R() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.aen
    /* renamed from: S */
    public final coz mo13791S() {
        return this.f40095j;
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: a */
    public final aaq mo13790a() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: a */
    public final void mo13789a(int i) {
        synchronized (this) {
            this.f40073N = i;
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13788a(Context context) {
        this.f40083a.setBaseContext(context);
        this.f40078S.zzj(this.f40083a.f40149a);
    }

    @Override // com.google.android.gms.internal.ads.aey
    /* renamed from: a */
    public final void mo13787a(com.google.android.gms.ads.internal.overlay.zzb zzbVar) {
        this.f40098m.m18849a(zzbVar);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13786a(zze zzeVar) {
        synchronized (this) {
            this.f40099n = zzeVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.aey
    /* renamed from: a */
    public final void mo13785a(zzbg zzbgVar, brs brsVar, bli bliVar, cty ctyVar, String str, String str2, int i) {
        this.f40098m.m18848a(zzbgVar, brsVar, bliVar, ctyVar, str, str2, i);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13784a(AbstractC12126b abstractC12126b) {
        synchronized (this) {
            this.f40100o = abstractC12126b;
        }
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    /* renamed from: a */
    public final void mo13783a(aem aemVar) {
        synchronized (this) {
            if (this.f40060A != null) {
                zzd.zzex("Attempt to create multiple AdWebViewVideoControllers.");
            } else {
                this.f40060A = aemVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13782a(afh afhVar) {
        synchronized (this) {
            this.f40101p = afhVar;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13781a(cov covVar, coz cozVar) {
        this.f40094i = covVar;
        this.f40095j = cozVar;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13780a(AbstractC12326df abstractC12326df) {
        synchronized (this) {
            this.f40064E = abstractC12326df;
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13779a(AbstractC12330dg abstractC12330dg) {
        synchronized (this) {
            this.f40063D = abstractC12330dg;
        }
    }

    @Override // com.google.android.gms.internal.ads.eeg
    /* renamed from: a */
    public final void mo13778a(eeh eehVar) {
        synchronized (this) {
            this.f40061B = eehVar.f48872j;
        }
        m18808h(eehVar.f48872j);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13777a(efu efuVar) {
        synchronized (this) {
            this.f40065F = efuVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12685kf
    /* renamed from: a */
    public final void mo13775a(String str) {
        m18809f(str);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13774a(String str, AbstractC12111o<AbstractC12607hi<? super adt>> abstractC12111o) {
        C12170ads c12170ads = this.f40098m;
        if (c12170ads != null) {
            synchronized (c12170ads.f39998c) {
                List<AbstractC12607hi<? super adt>> list = c12170ads.f39997b.get(str);
                if (list == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (AbstractC12607hi<? super adt> abstractC12607hi : list) {
                    if (abstractC12111o.mo14558a(abstractC12607hi)) {
                        arrayList.add(abstractC12607hi);
                    }
                }
                list.removeAll(arrayList);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    /* renamed from: a */
    public final void mo13773a(String str, acu acuVar) {
        synchronized (this) {
            if (this.f40084aa == null) {
                this.f40084aa = new HashMap();
            }
            this.f40084aa.put(str, acuVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13772a(String str, AbstractC12607hi<? super adt> abstractC12607hi) {
        C12170ads c12170ads = this.f40098m;
        if (c12170ads != null) {
            c12170ads.m18845a(str, abstractC12607hi);
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final void mo13771a(String str, String str2, String str3) {
        synchronized (this) {
            if (!mo13802H()) {
                super.loadDataWithBaseURL(str, aex.m18799a(str2, aex.m18800a()), Mimetypes.MIMETYPE_HTML, "UTF-8", str3);
            } else {
                zzd.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12669jq
    /* renamed from: a */
    public final void mo13770a(String str, Map<String, ?> map) {
        try {
            mo13769a(str, zzr.zzkv().zzj(map));
        } catch (JSONException e) {
            zzd.zzez("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12669jq
    /* renamed from: a */
    public final void mo13769a(String str, JSONObject jSONObject) {
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
        m18809f(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: a */
    public final void mo13768a(boolean z) {
        this.f40098m.f39999d = z;
    }

    @Override // com.google.android.gms.internal.ads.aey
    /* renamed from: a */
    public final void mo13766a(boolean z, int i, String str) {
        this.f40098m.m18841a(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.aey
    /* renamed from: a */
    public final void mo13765a(boolean z, int i, String str, String str2) {
        this.f40098m.m18840a(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: a */
    public final void mo13764a(boolean z, long j) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("success", z ? "1" : "0");
        hashMap.put(VastIconXmlManager.DURATION, Long.toString(j));
        mo13770a("onCacheAccessComplete", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: a */
    public final boolean mo13767a(boolean z, int i) {
        destroy();
        this.f40086ac.m15048a(new ehj(z, i) { // from class: com.google.android.gms.internal.ads.aeg

            /* renamed from: a */
            private final boolean f40058a;

            /* renamed from: b */
            private final int f40059b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f40058a = z;
                this.f40059b = i;
            }

            @Override // com.google.android.gms.internal.ads.ehj
            /* renamed from: a */
            public final void mo15050a(eht.C12494n.C12495a c12495a) {
                aeh.m18817a(this.f40058a, this.f40059b, c12495a);
            }
        });
        this.f40086ac.m15047a(ehn.C12444a.EnumC12446b.ANDROID_WEBVIEW_CRASH);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: b */
    public final acu mo13759b(String str) {
        synchronized (this) {
            Map<String, acu> map = this.f40084aa;
            if (map == null) {
                return null;
            }
            return map.get(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    /* renamed from: b */
    public final aem mo13763b() {
        aem aemVar;
        synchronized (this) {
            aemVar = this.f40060A;
        }
        return aemVar;
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: b */
    public final void mo13762b(int i) {
        this.f40074O = i;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: b */
    public final void mo13761b(zze zzeVar) {
        synchronized (this) {
            this.f40076Q = zzeVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: b */
    public final void mo13758b(String str, AbstractC12607hi<? super adt> abstractC12607hi) {
        C12170ads c12170ads = this.f40098m;
        if (c12170ads != null) {
            synchronized (c12170ads.f39998c) {
                List<AbstractC12607hi<? super adt>> list = c12170ads.f39997b.get(str);
                if (list == null) {
                    return;
                }
                list.remove(abstractC12607hi);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12685kf
    /* renamed from: b */
    public final void mo13757b(String str, JSONObject jSONObject) {
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
        m18809f(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: b */
    public final void mo13756b(boolean z) {
        synchronized (this) {
            boolean z2 = z != this.f40105t;
            this.f40105t = z;
            m18824X();
            if (z2) {
                if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42620J)).booleanValue() || !this.f40101p.m18772d()) {
                    new C12843qa(this).m14242c(z ? "expanded" : "default");
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aey
    /* renamed from: b */
    public final void mo13755b(boolean z, int i) {
        this.f40098m.m18842a(z, i);
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: c */
    public final C12239bg mo13754c() {
        return this.f40069J;
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: c */
    public final void mo13753c(int i) {
        this.f40075P = i;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: c */
    public final void mo13752c(boolean z) {
        synchronized (this) {
            zze zzeVar = this.f40099n;
            if (zzeVar != null) {
                zzeVar.zza(this.f40098m.mo18785b(), z);
            } else {
                this.f40103r = z;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb, com.google.android.gms.internal.ads.aeu
    /* renamed from: d */
    public final Activity mo13751d() {
        return this.f40083a.f40149a;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: d */
    public final void mo13750d(int i) {
        if (i == 0) {
            C12203ay.m18328a(this.f40071L.f43768b, this.f40069J, "aebb2");
        }
        m18825W();
        if (this.f40071L.f43768b != null) {
            this.f40071L.f43768b.m17831a("close_type", String.valueOf(i));
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.f40089d.zzbrz);
        mo13770a("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: d */
    public final void mo13749d(boolean z) {
        synchronized (this) {
            this.f40109x = z;
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.adt
    public final void destroy() {
        synchronized (this) {
            m18814ac();
            this.f40078S.zzaam();
            zze zzeVar = this.f40099n;
            if (zzeVar != null) {
                zzeVar.close();
                this.f40099n.onDestroy();
                this.f40099n = null;
            }
            this.f40100o = null;
            this.f40098m.m18834k();
            if (this.f40104s) {
                return;
            }
            zzr.zzlr();
            acr.m18878a(this);
            m18815ab();
            this.f40104s = true;
            zzd.zzed("Initiating WebView self destruct sequence in 3...");
            zzd.zzed("Loading blank page in WebView, 2...");
            m18811d("about:blank");
        }
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    /* renamed from: e */
    public final zzb mo13748e() {
        return this.f40091f;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: e */
    public final void mo13747e(boolean z) {
        zze zzeVar;
        synchronized (this) {
            int i = this.f40066G + (z ? 1 : -1);
            this.f40066G = i;
            if (i <= 0 && (zzeVar = this.f40099n) != null) {
                zzeVar.zzwo();
            }
        }
    }

    @Override // android.webkit.WebView
    public final void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        synchronized (this) {
            if (!mo13802H()) {
                super.evaluateJavascript(str, valueCallback);
                return;
            }
            zzd.zzfb("#004 The webview is destroyed. Ignoring action.");
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: f */
    public final void mo13746f() {
        zze mo13726x = mo13726x();
        if (mo13726x != null) {
            mo13726x.zzwn();
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: f */
    public final void mo13745f(boolean z) {
        this.f40098m.f40001f = z;
    }

    protected final void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!this.f40104s) {
                    this.f40098m.m18834k();
                    zzr.zzlr();
                    acr.m18878a(this);
                    m18815ab();
                    m18816aa();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: g */
    public final String mo13744g() {
        String str;
        synchronized (this) {
            str = this.f40111z;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: g */
    public final void mo13743g(boolean z) {
        synchronized (this) {
            if (z) {
                setBackgroundColor(0);
            }
            zze zzeVar = this.f40099n;
            if (zzeVar != null) {
                zzeVar.zzac(z);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: h */
    public final String mo13742h() {
        synchronized (this) {
            coz cozVar = this.f40095j;
            if (cozVar != null) {
                return cozVar.f46290b;
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: i */
    public final int mo13741i() {
        int i;
        synchronized (this) {
            i = this.f40073N;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb
    /* renamed from: j */
    public final C12238bf mo13740j() {
        return this.f40071L;
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.abb, com.google.android.gms.internal.ads.afc
    /* renamed from: k */
    public final zzbar mo13739k() {
        return this.f40089d;
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: l */
    public final int mo13738l() {
        return getMeasuredHeight();
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.adt
    public final void loadData(String str, String str2, String str3) {
        synchronized (this) {
            if (!mo13802H()) {
                super.loadData(str, str2, str3);
            } else {
                zzd.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.adt
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            if (!mo13802H()) {
                super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            } else {
                zzd.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.adt
    public final void loadUrl(String str) {
        synchronized (this) {
            if (mo13802H()) {
                zzd.zzez("#004 The webview is destroyed. Ignoring action.");
                return;
            }
            try {
                super.loadUrl(str);
            } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError e) {
                zzr.zzkz().m13979a(e, "AdWebViewImpl.loadUrl");
                zzd.zzd("Could not call loadUrl. ", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: m */
    public final int mo13737m() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: n */
    public final void mo13736n() {
        synchronized (this) {
            AbstractC12326df abstractC12326df = this.f40064E;
            if (abstractC12326df != null) {
                abstractC12326df.mo16817a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: o */
    public final int mo13735o() {
        return this.f40074O;
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        C12170ads c12170ads = this.f40098m;
        if (c12170ads != null) {
            c12170ads.onAdClicked();
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        synchronized (this) {
            super.onAttachedToWindow();
            if (!mo13802H()) {
                this.f40078S.onAttachedToWindow();
            }
            boolean z = this.f40061B;
            C12170ads c12170ads = this.f40098m;
            boolean z2 = z;
            if (c12170ads != null) {
                z2 = z;
                if (c12170ads.m18838c()) {
                    if (!this.f40062C) {
                        this.f40098m.m18836e();
                        this.f40098m.m18835f();
                        this.f40062C = true;
                    }
                    m18828T();
                    z2 = true;
                }
            }
            m18808h(z2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        C12170ads c12170ads;
        synchronized (this) {
            if (!mo13802H()) {
                this.f40078S.onDetachedFromWindow();
            }
            super.onDetachedFromWindow();
            if (this.f40062C && (c12170ads = this.f40098m) != null && c12170ads.m18838c() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.f40098m.m18836e();
                this.f40098m.m18835f();
                this.f40062C = false;
            }
        }
        m18808h(false);
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
        if (mo13802H()) {
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
        boolean m18828T = m18828T();
        zze mo13726x = mo13726x();
        if (mo13726x == null || !m18828T) {
            return;
        }
        mo13726x.zzwl();
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
        if (mo13802H()) {
            return;
        }
        try {
            super.onPause();
        } catch (Exception e) {
            zzd.zzc("Could not pause webview.", e);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.adt
    public final void onResume() {
        if (mo13802H()) {
            return;
        }
        try {
            super.onResume();
        } catch (Exception e) {
            zzd.zzc("Could not resume webview.", e);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f40098m.m18838c() || this.f40098m.m18837d()) {
            die dieVar = this.f40087b;
            if (dieVar != null) {
                dieVar.m16640a(motionEvent);
            }
            C12256bw c12256bw = this.f40088c;
            if (c12256bw != null) {
                if (motionEvent.getAction() == 1 && motionEvent.getEventTime() > c12256bw.f44909a.getEventTime()) {
                    c12256bw.f44909a = MotionEvent.obtain(motionEvent);
                } else if (motionEvent.getAction() == 0 && motionEvent.getEventTime() > c12256bw.f44910b.getEventTime()) {
                    c12256bw.f44910b = MotionEvent.obtain(motionEvent);
                }
            }
        } else {
            synchronized (this) {
                AbstractC12330dg abstractC12330dg = this.f40063D;
                if (abstractC12330dg != null) {
                    abstractC12330dg.mo16780a(motionEvent);
                }
            }
        }
        if (mo13802H()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.abb
    /* renamed from: p */
    public final int mo13734p() {
        return this.f40075P;
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.adh
    /* renamed from: q */
    public final cov mo13733q() {
        return this.f40094i;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: r */
    public final WebView mo13732r() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.afb
    /* renamed from: s */
    public final View mo13731s() {
        return this;
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.adt
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f40072M = new WeakReference<>(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    @Override // com.google.android.gms.internal.ads.adt
    public final void setRequestedOrientation(int i) {
        synchronized (this) {
            this.f40108w = i;
            zze zzeVar = this.f40099n;
            if (zzeVar != null) {
                zzeVar.setRequestedOrientation(i);
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.adt
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof C12170ads) {
            this.f40098m = (C12170ads) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (mo13802H()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e) {
            zzd.zzc("Could not stop loading webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: t */
    public final void mo13730t() {
        m18825W();
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f40089d.zzbrz);
        mo13770a("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: u */
    public final void mo13729u() {
        if (this.f40068I == null) {
            C12203ay.m18328a(this.f40071L.f43768b, this.f40069J, "aes2");
            C12239bg m18329a = C12203ay.m18329a(this.f40071L.f43768b);
            this.f40068I = m18329a;
            this.f40071L.m17890a("native:view_show", m18329a);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f40089d.zzbrz);
        mo13770a("onshow", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: v */
    public final void mo13728v() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(zzr.zzla().zzrh()));
        hashMap.put("app_volume", String.valueOf(zzr.zzla().zzrg()));
        hashMap.put("device_volume", String.valueOf(zzae.zzbj(getContext())));
        mo13770a("volume", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: w */
    public final Context mo13727w() {
        return this.f40083a.f40150b;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: x */
    public final zze mo13726x() {
        zze zzeVar;
        synchronized (this) {
            zzeVar = this.f40099n;
        }
        return zzeVar;
    }

    @Override // com.google.android.gms.internal.ads.adt
    /* renamed from: y */
    public final zze mo13725y() {
        zze zzeVar;
        synchronized (this) {
            zzeVar = this.f40076Q;
        }
        return zzeVar;
    }

    @Override // com.google.android.gms.internal.ads.adt, com.google.android.gms.internal.ads.afa
    /* renamed from: z */
    public final afh mo13724z() {
        afh afhVar;
        synchronized (this) {
            afhVar = this.f40101p;
        }
        return afhVar;
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final void zzkr() {
        synchronized (this) {
            this.f40110y = true;
            zzm zzmVar = this.f40090e;
            if (zzmVar != null) {
                zzmVar.zzkr();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final void zzks() {
        synchronized (this) {
            this.f40110y = false;
            zzm zzmVar = this.f40090e;
            if (zzmVar != null) {
                zzmVar.zzks();
            }
        }
    }
}
