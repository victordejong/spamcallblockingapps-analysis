package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.android.volley.Request;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.zzi;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzagt;
import com.google.android.gms.internal.ads.zzagv;
import com.google.android.gms.internal.ads.zzaqn;
import com.google.android.gms.internal.ads.zzarb;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzazd;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzbgr;
import com.google.android.gms.internal.ads.zzbhu;
import com.google.android.gms.internal.ads.zzbhv;
import com.google.android.gms.internal.ads.zzts;
import com.google.android.gms.internal.ads.zzwm;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.Collections;
import p131c.p161d.p170b.p224d.p225a.p228c.p229a.C3227d;
import p131c.p161d.p170b.p224d.p225a.p228c.p229a.C3228e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zze.class */
public class zze extends zzarb implements zzw {
    @VisibleForTesting

    /* renamed from: u */
    public static final int f22753u = Color.argb(0, 0, 0, 0);

    /* renamed from: a */
    public final Activity f22754a;
    @VisibleForTesting

    /* renamed from: b */
    public AdOverlayInfoParcel f22755b;
    @VisibleForTesting

    /* renamed from: c */
    public zzbgj f22756c;
    @VisibleForTesting

    /* renamed from: d */
    public zzk f22757d;
    @VisibleForTesting

    /* renamed from: e */
    public zzo f22758e;
    @VisibleForTesting

    /* renamed from: g */
    public FrameLayout f22760g;
    @VisibleForTesting

    /* renamed from: h */
    public WebChromeClient.CustomViewCallback f22761h;
    @VisibleForTesting

    /* renamed from: k */
    public C3227d f22764k;

    /* renamed from: o */
    public Runnable f22768o;

    /* renamed from: p */
    public boolean f22769p;

    /* renamed from: q */
    public boolean f22770q;
    @VisibleForTesting

    /* renamed from: f */
    public boolean f22759f = false;
    @VisibleForTesting

    /* renamed from: i */
    public boolean f22762i = false;
    @VisibleForTesting

    /* renamed from: j */
    public boolean f22763j = false;
    @VisibleForTesting

    /* renamed from: l */
    public boolean f22765l = false;
    @VisibleForTesting

    /* renamed from: m */
    public int f22766m = 0;

    /* renamed from: n */
    public final Object f22767n = new Object();

    /* renamed from: r */
    public boolean f22771r = false;

    /* renamed from: s */
    public boolean f22772s = false;

    /* renamed from: t */
    public boolean f22773t = true;

    public zze(Activity activity) {
        this.f22754a = activity;
    }

    /* renamed from: a */
    public static void m18014a(IObjectWrapper iObjectWrapper, View view) {
        if (iObjectWrapper != null && view != null) {
            zzp.m17954r().m16416a(iObjectWrapper, view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    /* renamed from: G */
    public final void mo16407G(IObjectWrapper iObjectWrapper) {
        m18016a((Configuration) ObjectWrapper.m17021Q(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    /* renamed from: N1 */
    public final void mo16406N1() {
    }

    /* renamed from: Q1 */
    public final void m18018Q1() {
        this.f22766m = 2;
        this.f22754a.finish();
    }

    /* renamed from: T1 */
    public final void m18017T1() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.f22755b;
        if (adOverlayInfoParcel != null && this.f22759f) {
            m18009f(adOverlayInfoParcel.f22738j);
        }
        if (this.f22760g != null) {
            this.f22754a.setContentView(this.f22764k);
            this.f22770q = true;
            this.f22760g.removeAllViews();
            this.f22760g = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.f22761h;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.f22761h = null;
        }
        this.f22759f = false;
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    /* renamed from: W1 */
    public final boolean mo16405W1() {
        this.f22766m = 0;
        zzbgj zzbgjVar = this.f22756c;
        if (zzbgjVar == null) {
            return true;
        }
        boolean L = zzbgjVar.mo15598L();
        if (!L) {
            this.f22756c.mo15577a("onbackblocked", Collections.emptyMap());
        }
        return L;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzw
    /* renamed from: Y */
    public final void mo13573Y() {
        this.f22766m = 1;
        this.f22754a.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    /* renamed from: a */
    public final void mo16404a(int i, int i2, Intent intent) {
    }

    /* renamed from: a */
    public final void m18016a(Configuration configuration) {
        boolean z;
        boolean z2;
        zzi zziVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f22755b;
        boolean z3 = (adOverlayInfoParcel == null || (zziVar = adOverlayInfoParcel.f22743o) == null || !zziVar.f22804b) ? false : true;
        boolean a = zzp.m17967e().mo16032a(this.f22754a, configuration);
        if ((!this.f22763j || z3) && !a) {
            z2 = true;
            z = false;
            if (Build.VERSION.SDK_INT >= 19) {
                AdOverlayInfoParcel adOverlayInfoParcel2 = this.f22755b;
                z2 = true;
                z = false;
                if (adOverlayInfoParcel2 != null) {
                    zzi zziVar2 = adOverlayInfoParcel2.f22743o;
                    z2 = true;
                    z = false;
                    if (zziVar2 != null) {
                        z2 = true;
                        z = false;
                        if (zziVar2.f22809g) {
                            z = true;
                            z2 = true;
                        }
                    }
                }
            }
        } else {
            z2 = false;
            z = false;
        }
        Window window = this.f22754a.getWindow();
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23915y0)).booleanValue() && Build.VERSION.SDK_INT >= 19) {
            View decorView = window.getDecorView();
            int i = 256;
            if (z2) {
                i = 5380;
                if (z) {
                    i = 5894;
                }
            }
            decorView.setSystemUiVisibility(i);
        } else if (z2) {
            window.addFlags(1024);
            window.clearFlags(RecyclerView.AbstractC0495b0.FLAG_MOVED);
            if (Build.VERSION.SDK_INT >= 19 && z) {
                window.getDecorView().setSystemUiVisibility(4098);
            }
        } else {
            window.addFlags(RecyclerView.AbstractC0495b0.FLAG_MOVED);
            window.clearFlags(1024);
        }
    }

    /* renamed from: a */
    public final void m18015a(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        FrameLayout frameLayout = new FrameLayout(this.f22754a);
        this.f22760g = frameLayout;
        frameLayout.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.f22760g.addView(view, -1, -1);
        this.f22754a.setContentView(this.f22760g);
        this.f22770q = true;
        this.f22761h = customViewCallback;
        this.f22759f = true;
    }

    /* renamed from: a */
    public final void m18013a(boolean z, boolean z2) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        zzi zziVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        zzi zziVar2;
        boolean z3 = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23905w0)).booleanValue() && (adOverlayInfoParcel2 = this.f22755b) != null && (zziVar2 = adOverlayInfoParcel2.f22743o) != null && zziVar2.f22810h;
        boolean z4 = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23910x0)).booleanValue() && (adOverlayInfoParcel = this.f22755b) != null && (zziVar = adOverlayInfoParcel.f22743o) != null && zziVar.f22811i;
        if (z && z2 && z3 && !z4) {
            new zzaqn(this.f22756c, "useCustomClose").m16428a("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        zzo zzoVar = this.f22758e;
        if (zzoVar != null) {
            boolean z5 = true;
            if (!z4) {
                z5 = z2 && !z3;
            }
            zzoVar.m18001a(z5);
        }
    }

    /* renamed from: a2 */
    public final void m18012a2() {
        this.f22764k.removeView(this.f22758e);
        m18004l(true);
    }

    /* renamed from: d2 */
    public final void m18011d2() {
        if (this.f22754a.isFinishing() && !this.f22771r) {
            this.f22771r = true;
            zzbgj zzbgjVar = this.f22756c;
            if (zzbgjVar != null) {
                zzbgjVar.mo15593a(this.f22766m);
                synchronized (this.f22767n) {
                    if (!this.f22769p && this.f22756c.mo15594P()) {
                        Runnable cVar = new Runnable(this) { // from class: c.d.b.d.a.c.a.c

                            /* renamed from: a */
                            public final zze f11913a;

                            {
                                this.f11913a = this;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f11913a.m18010e2();
                            }
                        };
                        this.f22768o = cVar;
                        zzayu.f24665h.postDelayed(cVar, ((Long) zzwm.m11166e().m16921a(zzabb.f23900v0)).longValue());
                        return;
                    }
                }
            }
            m18010e2();
        }
    }

    @VisibleForTesting
    /* renamed from: e2 */
    public final void m18010e2() {
        zzbgj zzbgjVar;
        zzp zzpVar;
        if (!this.f22772s) {
            this.f22772s = true;
            zzbgj zzbgjVar2 = this.f22756c;
            if (zzbgjVar2 != null) {
                this.f22764k.removeView(zzbgjVar2.getView());
                zzk zzkVar = this.f22757d;
                if (zzkVar != null) {
                    this.f22756c.mo15573b(zzkVar.f22777d);
                    this.f22756c.mo15559g(false);
                    ViewGroup viewGroup = this.f22757d.f22776c;
                    View view = this.f22756c.getView();
                    zzk zzkVar2 = this.f22757d;
                    viewGroup.addView(view, zzkVar2.f22774a, zzkVar2.f22775b);
                    this.f22757d = null;
                } else if (this.f22754a.getApplicationContext() != null) {
                    this.f22756c.mo15573b(this.f22754a.getApplicationContext());
                }
                this.f22756c = null;
            }
            AdOverlayInfoParcel adOverlayInfoParcel = this.f22755b;
            if (!(adOverlayInfoParcel == null || (zzpVar = adOverlayInfoParcel.f22731c) == null)) {
                zzpVar.mo13537B1();
            }
            AdOverlayInfoParcel adOverlayInfoParcel2 = this.f22755b;
            if (adOverlayInfoParcel2 != null && (zzbgjVar = adOverlayInfoParcel2.f22732d) != null) {
                m18014a(zzbgjVar.mo15546w(), this.f22755b.f22732d.getView());
            }
        }
    }

    /* renamed from: f */
    public final void m18009f(int i) {
        if (this.f22754a.getApplicationInfo().targetSdkVersion >= ((Integer) zzwm.m11166e().m16921a(zzabb.f23766X2)).intValue()) {
            if (this.f22754a.getApplicationInfo().targetSdkVersion <= ((Integer) zzwm.m11166e().m16921a(zzabb.f23771Y2)).intValue()) {
                if (Build.VERSION.SDK_INT >= ((Integer) zzwm.m11166e().m16921a(zzabb.f23776Z2)).intValue()) {
                    if (Build.VERSION.SDK_INT <= ((Integer) zzwm.m11166e().m16921a(zzabb.f23782a3)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            this.f22754a.setRequestedOrientation(i);
        } catch (Throwable th) {
            zzp.m17965g().m16185b(th, "AdOverlay.setRequestedOrientation");
        }
    }

    /* renamed from: g2 */
    public final void m18008g2() {
        if (this.f22765l) {
            this.f22765l = false;
            m18007h2();
        }
    }

    /* renamed from: h2 */
    public final void m18007h2() {
        this.f22756c.mo15544y();
    }

    /* renamed from: i2 */
    public final void m18006i2() {
        this.f22764k.f11915b = true;
    }

    /* renamed from: j2 */
    public final void m18005j2() {
        synchronized (this.f22767n) {
            this.f22769p = true;
            if (this.f22768o != null) {
                zzayu.f24665h.removeCallbacks(this.f22768o);
                zzayu.f24665h.post(this.f22768o);
            }
        }
    }

    /* renamed from: l */
    public final void m18004l(boolean z) {
        int intValue = ((Integer) zzwm.m11166e().m16921a(zzabb.f23859n2)).intValue();
        zzr zzrVar = new zzr();
        zzrVar.f22783d = 50;
        int i = 0;
        zzrVar.f22780a = z ? intValue : 0;
        if (!z) {
            i = intValue;
        }
        zzrVar.f22781b = i;
        zzrVar.f22782c = intValue;
        this.f22758e = new zzo(this.f22754a, zzrVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(z ? 11 : 9);
        m18013a(z, this.f22755b.f22735g);
        this.f22764k.addView(this.f22758e, layoutParams);
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    /* renamed from: l0 */
    public final void mo16403l0() {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23847l2)).booleanValue() && this.f22756c != null && (!this.f22754a.isFinishing() || this.f22757d == null)) {
            zzp.m17967e();
            zzazd.m16046a(this.f22756c);
        }
        m18011d2();
    }

    /* renamed from: m */
    public final void m18003m(boolean z) throws zzi {
        if (!this.f22770q) {
            this.f22754a.requestWindowFeature(1);
        }
        Window window = this.f22754a.getWindow();
        if (window != null) {
            zzbgj zzbgjVar = this.f22755b.f22732d;
            zzbhv z2 = zzbgjVar != null ? zzbgjVar.mo15543z() : null;
            boolean z3 = false;
            boolean z4 = false;
            boolean z5 = z2 != null && z2.mo15482b();
            this.f22765l = false;
            if (z5) {
                int i = this.f22755b.f22738j;
                zzp.m17967e();
                if (i == 6) {
                    if (this.f22754a.getResources().getConfiguration().orientation == 1) {
                        z4 = true;
                    }
                    this.f22765l = z4;
                } else {
                    int i2 = this.f22755b.f22738j;
                    zzp.m17967e();
                    if (i2 == 7) {
                        if (this.f22754a.getResources().getConfiguration().orientation == 2) {
                            z3 = true;
                        }
                        this.f22765l = z3;
                    }
                }
            }
            boolean z6 = this.f22765l;
            StringBuilder sb = new StringBuilder(46);
            sb.append("Delay onShow to next orientation change: ");
            sb.append(z6);
            zzbbq.m15858a(sb.toString());
            m18009f(this.f22755b.f22738j);
            zzp.m17967e();
            window.setFlags(16777216, 16777216);
            zzbbq.m15858a("Hardware acceleration on the AdActivity window enabled.");
            if (!this.f22763j) {
                this.f22764k.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
            } else {
                this.f22764k.setBackgroundColor(f22753u);
            }
            this.f22754a.setContentView(this.f22764k);
            this.f22770q = true;
            if (z) {
                try {
                    zzp.m17968d();
                    zzbgj a = zzbgr.m15609a(this.f22754a, this.f22755b.f22732d != null ? this.f22755b.f22732d.mo15517c() : null, this.f22755b.f22732d != null ? this.f22755b.f22732d.mo15549t() : null, true, z5, null, null, this.f22755b.f22741m, null, null, this.f22755b.f22732d != null ? this.f22755b.f22732d.mo15562f() : null, zzts.m11426a(), null, false, null, null);
                    this.f22756c = a;
                    zzbhv z7 = a.mo15543z();
                    AdOverlayInfoParcel adOverlayInfoParcel = this.f22755b;
                    zzagt zzagtVar = adOverlayInfoParcel.f22744p;
                    zzagv zzagvVar = adOverlayInfoParcel.f22733e;
                    zzv zzvVar = adOverlayInfoParcel.f22737i;
                    zzbgj zzbgjVar2 = adOverlayInfoParcel.f22732d;
                    z7.mo15489a(null, zzagtVar, null, zzagvVar, zzvVar, true, null, zzbgjVar2 != null ? zzbgjVar2.mo15543z().mo15472g() : null, null, null);
                    this.f22756c.mo15543z().mo15492a(new zzbhu(this) { // from class: c.d.b.d.a.c.a.a

                        /* renamed from: a */
                        public final zze f11912a;

                        {
                            this.f11912a = this;
                        }

                        @Override // com.google.android.gms.internal.ads.zzbhu
                        /* renamed from: a */
                        public final void mo15515a(boolean z8) {
                            zzbgj zzbgjVar3 = this.f11912a.f22756c;
                            if (zzbgjVar3 != null) {
                                zzbgjVar3.mo15544y();
                            }
                        }
                    });
                    AdOverlayInfoParcel adOverlayInfoParcel2 = this.f22755b;
                    String str = adOverlayInfoParcel2.f22740l;
                    if (str != null) {
                        this.f22756c.loadUrl(str);
                    } else {
                        String str2 = adOverlayInfoParcel2.f22736h;
                        if (str2 != null) {
                            this.f22756c.loadDataWithBaseURL(adOverlayInfoParcel2.f22734f, str2, "text/html", Request.DEFAULT_PARAMS_ENCODING, null);
                        } else {
                            throw new zzi("No URL or HTML to display in ad overlay.");
                        }
                    }
                    zzbgj zzbgjVar3 = this.f22755b.f22732d;
                    if (zzbgjVar3 != null) {
                        zzbgjVar3.mo15572b(this);
                    }
                } catch (Exception e) {
                    zzbbq.m15855b("Error obtaining webview.", e);
                    throw new zzi("Could not obtain webview for the overlay.");
                }
            } else {
                zzbgj zzbgjVar4 = this.f22755b.f22732d;
                this.f22756c = zzbgjVar4;
                zzbgjVar4.mo15573b(this.f22754a);
            }
            this.f22756c.mo15591a(this);
            zzbgj zzbgjVar5 = this.f22755b.f22732d;
            if (zzbgjVar5 != null) {
                m18014a(zzbgjVar5.mo15546w(), this.f22764k);
            }
            ViewParent parent = this.f22756c.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(this.f22756c.getView());
            }
            if (this.f22763j) {
                this.f22756c.mo15608A();
            }
            zzbgj zzbgjVar6 = this.f22756c;
            Activity activity = this.f22754a;
            AdOverlayInfoParcel adOverlayInfoParcel3 = this.f22755b;
            zzbgjVar6.mo15592a((ViewGroup) null, activity, adOverlayInfoParcel3.f22734f, adOverlayInfoParcel3.f22736h);
            this.f22764k.addView(this.f22756c.getView(), -1, -1);
            if (!z && !this.f22765l) {
                m18007h2();
            }
            m18004l(z5);
            if (this.f22756c.mo15602H()) {
                m18013a(z5, true);
                return;
            }
            return;
        }
        throw new zzi("Invalid activity, no window available.");
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onBackPressed() {
        this.f22766m = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public void onCreate(Bundle bundle) {
        this.f22754a.requestWindowFeature(1);
        this.f22762i = bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
        try {
            AdOverlayInfoParcel a = AdOverlayInfoParcel.m18022a(this.f22754a.getIntent());
            this.f22755b = a;
            if (a != null) {
                if (a.f22741m.f24761c > 7500000) {
                    this.f22766m = 3;
                }
                if (this.f22754a.getIntent() != null) {
                    this.f22773t = this.f22754a.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
                }
                if (this.f22755b.f22743o != null) {
                    this.f22763j = this.f22755b.f22743o.f22803a;
                } else {
                    this.f22763j = false;
                }
                if (this.f22763j && this.f22755b.f22743o.f22808f != -1) {
                    new C3228e(this).m16157b();
                }
                if (bundle == null) {
                    if (this.f22755b.f22731c != null && this.f22773t) {
                        this.f22755b.f22731c.mo13529u1();
                    }
                    if (!(this.f22755b.f22739k == 1 || this.f22755b.f22730b == null)) {
                        this.f22755b.f22730b.onAdClicked();
                    }
                }
                C3227d dVar = new C3227d(this.f22754a, this.f22755b.f22742n, this.f22755b.f22741m.f24759a);
                this.f22764k = dVar;
                dVar.setId(1000);
                zzp.m17967e().mo16027a(this.f22754a);
                int i = this.f22755b.f22739k;
                if (i == 1) {
                    m18003m(false);
                } else if (i == 2) {
                    this.f22757d = new zzk(this.f22755b.f22732d);
                    m18003m(false);
                } else if (i == 3) {
                    m18003m(true);
                } else {
                    throw new zzi("Could not determine ad overlay type.");
                }
            } else {
                throw new zzi("Could not get info for ad overlay.");
            }
        } catch (zzi e) {
            zzbbq.m15852d(e.getMessage());
            this.f22766m = 3;
            this.f22754a.finish();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onDestroy() {
        zzbgj zzbgjVar = this.f22756c;
        if (zzbgjVar != null) {
            try {
                this.f22764k.removeView(zzbgjVar.getView());
            } catch (NullPointerException e) {
            }
        }
        m18011d2();
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onPause() {
        m18017T1();
        zzp zzpVar = this.f22755b.f22731c;
        if (zzpVar != null) {
            zzpVar.onPause();
        }
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23847l2)).booleanValue() && this.f22756c != null && (!this.f22754a.isFinishing() || this.f22757d == null)) {
            zzp.m17967e();
            zzazd.m16046a(this.f22756c);
        }
        m18011d2();
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onResume() {
        zzp zzpVar = this.f22755b.f22731c;
        if (zzpVar != null) {
            zzpVar.onResume();
        }
        m18016a(this.f22754a.getResources().getConfiguration());
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23847l2)).booleanValue()) {
            zzbgj zzbgjVar = this.f22756c;
            if (zzbgjVar == null || zzbgjVar.mo15560g()) {
                zzbbq.m15852d("The webview does not exist. Ignoring action.");
                return;
            }
            zzp.m17967e();
            zzazd.m16045b(this.f22756c);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f22762i);
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onStart() {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23847l2)).booleanValue()) {
            zzbgj zzbgjVar = this.f22756c;
            if (zzbgjVar == null || zzbgjVar.mo15560g()) {
                zzbbq.m15852d("The webview does not exist. Ignoring action.");
                return;
            }
            zzp.m17967e();
            zzazd.m16045b(this.f22756c);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    /* renamed from: w0 */
    public final void mo16402w0() {
        this.f22770q = true;
    }
}
