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
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.internal.ads.AbstractBinderC3370nx;
import com.google.android.gms.internal.ads.C3556uu;
import com.google.android.gms.internal.ads.C3567ve;
import com.google.android.gms.internal.ads.C3572vj;
import com.google.android.gms.internal.ads.act;
import com.google.android.gms.internal.ads.adb;
import com.google.android.gms.internal.ads.aee;
import com.google.android.gms.internal.ads.aef;
import com.google.android.gms.internal.ads.dwi;
import com.google.android.gms.internal.ads.dyx;
import com.google.android.gms.internal.ads.edi;
import java.util.Collections;
/* renamed from: com.google.android.gms.ads.internal.overlay.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/c.class */
public class BinderC2316c extends AbstractBinderC3370nx implements AbstractC2338y {

    /* renamed from: e */
    private static final int f6689e = Color.argb(0, 0, 0, 0);

    /* renamed from: a */
    protected final Activity f6690a;

    /* renamed from: b */
    AdOverlayInfoParcel f6691b;

    /* renamed from: c */
    act f6692c;

    /* renamed from: f */
    private C2322i f6694f;

    /* renamed from: g */
    private View$OnClickListenerC2330q f6695g;

    /* renamed from: i */
    private FrameLayout f6697i;

    /* renamed from: j */
    private WebChromeClient.CustomViewCallback f6698j;

    /* renamed from: m */
    private C2323j f6701m;

    /* renamed from: p */
    private Runnable f6704p;

    /* renamed from: q */
    private boolean f6705q;

    /* renamed from: r */
    private boolean f6706r;

    /* renamed from: h */
    private boolean f6696h = false;

    /* renamed from: k */
    private boolean f6699k = false;

    /* renamed from: l */
    private boolean f6700l = false;

    /* renamed from: n */
    private boolean f6702n = false;

    /* renamed from: d */
    int f6693d = 0;

    /* renamed from: o */
    private final Object f6703o = new Object();

    /* renamed from: s */
    private boolean f6707s = false;

    /* renamed from: t */
    private boolean f6708t = false;

    /* renamed from: u */
    private boolean f6709u = true;

    public BinderC2316c(Activity activity) {
        this.f6690a = activity;
    }

    /* renamed from: a */
    private final void m14765a(Configuration configuration) {
        boolean z;
        boolean z2;
        boolean z3 = (this.f6691b == null || this.f6691b.f6687o == null || !this.f6691b.f6687o.f6641b) ? false : true;
        boolean mo6921a = C2341q.m14742e().mo6921a(this.f6690a, configuration);
        if ((this.f6700l && !z3) || mo6921a) {
            z = false;
            z2 = false;
        } else if (Build.VERSION.SDK_INT < 19 || this.f6691b == null || this.f6691b.f6687o == null || !this.f6691b.f6687o.f6645f) {
            z = false;
            z2 = true;
        } else {
            z = true;
            z2 = true;
        }
        Window window = this.f6690a.getWindow();
        if (((Boolean) dyx.m8158e().m7876a(edi.f16390aw)).booleanValue() && Build.VERSION.SDK_INT >= 19) {
            View decorView = window.getDecorView();
            int i = 256;
            if (z2) {
                i = 5380;
                if (z) {
                    i = 5894;
                }
            }
            decorView.setSystemUiVisibility(i);
        } else if (!z2) {
            window.addFlags(2048);
            window.clearFlags(1024);
        } else {
            window.addFlags(1024);
            window.clearFlags(2048);
            if (Build.VERSION.SDK_INT < 19 || !z) {
                return;
            }
            window.getDecorView().setSystemUiVisibility(4098);
        }
    }

    /* renamed from: a */
    private static void m14763a(AbstractC2731a abstractC2731a, View view) {
        if (abstractC2731a == null || view == null) {
            return;
        }
        C2341q.m14729r().m7392a(abstractC2731a, view);
    }

    /* renamed from: a */
    private final void m14762a(boolean z) {
        int intValue = ((Integer) dyx.m8158e().m7876a(edi.f16480cg)).intValue();
        C2329p c2329p = new C2329p();
        c2329p.f6733e = 50;
        c2329p.f6729a = z ? intValue : 0;
        c2329p.f6730b = z ? 0 : intValue;
        c2329p.f6731c = 0;
        c2329p.f6732d = intValue;
        this.f6695g = new View$OnClickListenerC2330q(this.f6690a, c2329p, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(z ? 11 : 9);
        m14761a(z, this.f6691b.f6679g);
        this.f6701m.addView(this.f6695g, layoutParams);
    }

    /* renamed from: b */
    private final void m14759b(boolean z) {
        if (!this.f6706r) {
            this.f6690a.requestWindowFeature(1);
        }
        Window window = this.f6690a.getWindow();
        if (window == null) {
            throw new C2320g("Invalid activity, no window available.");
        }
        aef mo13426v = this.f6691b.f6676d != null ? this.f6691b.f6676d.mo13426v() : null;
        boolean z2 = mo13426v != null && mo13426v.mo13518b();
        this.f6702n = false;
        if (z2) {
            int i = this.f6691b.f6682j;
            C2341q.m14742e();
            if (i == 6) {
                this.f6702n = this.f6690a.getResources().getConfiguration().orientation == 1;
            } else {
                int i2 = this.f6691b.f6682j;
                C2341q.m14742e();
                if (i2 == 7) {
                    this.f6702n = this.f6690a.getResources().getConfiguration().orientation == 2;
                }
            }
        }
        C3556uu.m6751b(new StringBuilder(46).append("Delay onShow to next orientation change: ").append(this.f6702n).toString());
        m14766a(this.f6691b.f6682j);
        C2341q.m14742e();
        window.setFlags(16777216, 16777216);
        C3556uu.m6751b("Hardware acceleration on the AdActivity window enabled.");
        if (!this.f6700l) {
            this.f6701m.setBackgroundColor(-16777216);
        } else {
            this.f6701m.setBackgroundColor(f6689e);
        }
        this.f6690a.setContentView(this.f6701m);
        this.f6706r = true;
        if (z) {
            try {
                C2341q.m14743d();
                this.f6692c = adb.m13597a(this.f6690a, this.f6691b.f6676d != null ? this.f6691b.f6676d.mo13428t() : null, this.f6691b.f6676d != null ? this.f6691b.f6676d.mo13427u() : null, true, z2, null, this.f6691b.f6685m, null, null, this.f6691b.f6676d != null ? this.f6691b.f6676d.mo13442g() : null, dwi.m8443a(), null, false);
                this.f6692c.mo13426v().mo13525a(null, this.f6691b.f6688p, null, this.f6691b.f6677e, this.f6691b.f6681i, true, null, this.f6691b.f6676d != null ? this.f6691b.f6676d.mo13426v().mo13536a() : null, null, null);
                this.f6692c.mo13426v().mo13528a(new aee(this) { // from class: com.google.android.gms.ads.internal.overlay.f

                    /* renamed from: a */
                    private final BinderC2316c f6719a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f6719a = this;
                    }

                    @Override // com.google.android.gms.internal.ads.aee
                    /* renamed from: a */
                    public final void mo11712a(boolean z3) {
                        BinderC2316c binderC2316c = this.f6719a;
                        if (binderC2316c.f6692c != null) {
                            binderC2316c.f6692c.mo13433o();
                        }
                    }
                });
                if (this.f6691b.f6684l != null) {
                    this.f6692c.loadUrl(this.f6691b.f6684l);
                } else if (this.f6691b.f6680h == null) {
                    throw new C2320g("No URL or HTML to display in ad overlay.");
                } else {
                    this.f6692c.loadDataWithBaseURL(this.f6691b.f6678f, this.f6691b.f6680h, "text/html", "UTF-8", null);
                }
                if (this.f6691b.f6676d != null) {
                    this.f6691b.f6676d.mo13454b(this);
                }
            } catch (Exception e) {
                C3556uu.m6748c("Error obtaining webview.", e);
                throw new C2320g("Could not obtain webview for the overlay.");
            }
        } else {
            this.f6692c = this.f6691b.f6676d;
            this.f6692c.mo13477a(this.f6690a);
        }
        this.f6692c.mo13475a(this);
        if (this.f6691b.f6676d != null) {
            m14763a(this.f6691b.f6676d.mo13422z(), this.f6701m);
        }
        ViewParent parent = this.f6692c.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).removeView(this.f6692c.getView());
        }
        if (this.f6700l) {
            this.f6692c.mo13491I();
        }
        this.f6692c.mo13476a((ViewGroup) null, this.f6690a, this.f6691b.f6678f, this.f6691b.f6680h);
        this.f6701m.addView(this.f6692c.getView(), -1, -1);
        if (!z && !this.f6702n) {
            m14752s();
        }
        m14762a(z2);
        if (!this.f6692c.mo13424x()) {
            return;
        }
        m14761a(z2, true);
    }

    /* renamed from: r */
    private final void m14753r() {
        if (!this.f6690a.isFinishing() || this.f6707s) {
            return;
        }
        this.f6707s = true;
        if (this.f6692c != null) {
            this.f6692c.mo13478a(this.f6693d);
            synchronized (this.f6703o) {
                if (!this.f6705q && this.f6692c.mo13495E()) {
                    this.f6704p = new Runnable(this) { // from class: com.google.android.gms.ads.internal.overlay.e

                        /* renamed from: a */
                        private final BinderC2316c f6718a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f6718a = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f6718a.m14757n();
                        }
                    };
                    C3567ve.f17498a.postDelayed(this.f6704p, ((Long) dyx.m8158e().m7876a(edi.f16387at)).longValue());
                    return;
                }
            }
        }
        m14757n();
    }

    /* renamed from: s */
    private final void m14752s() {
        this.f6692c.mo13433o();
    }

    /* renamed from: a */
    public final void m14767a() {
        this.f6693d = 2;
        this.f6690a.finish();
    }

    /* renamed from: a */
    public final void m14766a(int i) {
        if (this.f6690a.getApplicationInfo().targetSdkVersion >= ((Integer) dyx.m8158e().m7876a(edi.f16463cP)).intValue()) {
            if (this.f6690a.getApplicationInfo().targetSdkVersion <= ((Integer) dyx.m8158e().m7876a(edi.f16464cQ)).intValue()) {
                if (Build.VERSION.SDK_INT >= ((Integer) dyx.m8158e().m7876a(edi.f16465cR)).intValue()) {
                    if (Build.VERSION.SDK_INT <= ((Integer) dyx.m8158e().m7876a(edi.f16466cS)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            this.f6690a.setRequestedOrientation(i);
        } catch (Throwable th) {
            C2341q.m14740g().m7092b(th, "AdOverlay.setRequestedOrientation");
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: a */
    public final void mo7377a(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: a */
    public void mo7376a(Bundle bundle) {
        this.f6690a.requestWindowFeature(1);
        boolean z = false;
        if (bundle != null) {
            z = false;
            if (bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
                z = true;
            }
        }
        this.f6699k = z;
        try {
            this.f6691b = AdOverlayInfoParcel.m14771a(this.f6690a.getIntent());
            if (this.f6691b == null) {
                throw new C2320g("Could not get info for ad overlay.");
            }
            if (this.f6691b.f6685m.f17638c > 7500000) {
                this.f6693d = 3;
            }
            if (this.f6690a.getIntent() != null) {
                this.f6709u = this.f6690a.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
            }
            if (this.f6691b.f6687o != null) {
                this.f6700l = this.f6691b.f6687o.f6640a;
            } else {
                this.f6700l = false;
            }
            if (this.f6700l && this.f6691b.f6687o.f6644e != -1) {
                new C2325l(this).m7063b();
            }
            if (bundle == null) {
                if (this.f6691b.f6675c != null && this.f6709u) {
                    this.f6691b.f6675c.mo7432d();
                }
                if (this.f6691b.f6683k != 1 && this.f6691b.f6674b != null) {
                    this.f6691b.f6674b.mo8200e();
                }
            }
            this.f6701m = new C2323j(this.f6690a, this.f6691b.f6686n, this.f6691b.f6685m.f17636a);
            this.f6701m.setId(1000);
            C2341q.m14742e().mo6920a(this.f6690a);
            switch (this.f6691b.f6683k) {
                case 1:
                    m14759b(false);
                    return;
                case 2:
                    this.f6694f = new C2322i(this.f6691b.f6676d);
                    m14759b(false);
                    return;
                case 3:
                    m14759b(true);
                    return;
                default:
                    throw new C2320g("Could not determine ad overlay type.");
            }
        } catch (C2320g e) {
            C3556uu.m6745e(e.getMessage());
            this.f6693d = 3;
            this.f6690a.finish();
        }
    }

    /* renamed from: a */
    public final void m14764a(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        this.f6697i = new FrameLayout(this.f6690a);
        this.f6697i.setBackgroundColor(-16777216);
        this.f6697i.addView(view, -1, -1);
        this.f6690a.setContentView(this.f6697i);
        this.f6706r = true;
        this.f6698j = customViewCallback;
        this.f6696h = true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: a */
    public final void mo7375a(AbstractC2731a abstractC2731a) {
        m14765a((Configuration) BinderC2734b.m13795a(abstractC2731a));
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b2, code lost:
        if (r10 == false) goto L37;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m14761a(boolean r6, boolean r7) {
        /*
            r5 = this;
            r0 = 0
            r8 = r0
            com.google.android.gms.internal.ads.ect<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.edi.f16388au
            r9 = r0
            com.google.android.gms.internal.ads.ede r0 = com.google.android.gms.internal.ads.dyx.m8158e()
            r1 = r9
            java.lang.Object r0 = r0.m7876a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto Lbe
            r0 = r5
            com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel r0 = r0.f6691b
            if (r0 == 0) goto Lbe
            r0 = r5
            com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel r0 = r0.f6691b
            com.google.android.gms.ads.internal.g r0 = r0.f6687o
            if (r0 == 0) goto Lbe
            r0 = r5
            com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel r0 = r0.f6691b
            com.google.android.gms.ads.internal.g r0 = r0.f6687o
            boolean r0 = r0.f6646g
            if (r0 == 0) goto Lbe
            r0 = 1
            r10 = r0
        L39:
            com.google.android.gms.internal.ads.ect<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.edi.f16389av
            r9 = r0
            com.google.android.gms.internal.ads.ede r0 = com.google.android.gms.internal.ads.dyx.m8158e()
            r1 = r9
            java.lang.Object r0 = r0.m7876a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto Lc4
            r0 = r5
            com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel r0 = r0.f6691b
            if (r0 == 0) goto Lc4
            r0 = r5
            com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel r0 = r0.f6691b
            com.google.android.gms.ads.internal.g r0 = r0.f6687o
            if (r0 == 0) goto Lc4
            r0 = r5
            com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel r0 = r0.f6691b
            com.google.android.gms.ads.internal.g r0 = r0.f6687o
            boolean r0 = r0.f6647h
            if (r0 == 0) goto Lc4
            r0 = 1
            r11 = r0
        L70:
            r0 = r6
            if (r0 == 0) goto L96
            r0 = r7
            if (r0 == 0) goto L96
            r0 = r10
            if (r0 == 0) goto L96
            r0 = r11
            if (r0 != 0) goto L96
            com.google.android.gms.internal.ads.nt r0 = new com.google.android.gms.internal.ads.nt
            r1 = r0
            r2 = r5
            com.google.android.gms.internal.ads.act r2 = r2.f6692c
            java.lang.String r3 = "useCustomClose"
            r1.<init>(r2, r3)
            java.lang.String r1 = "Custom close has been disabled for interstitial ads in this ad slot."
            r0.m7398a(r1)
        L96:
            r0 = r5
            com.google.android.gms.ads.internal.overlay.q r0 = r0.f6695g
            if (r0 == 0) goto Lbd
            r0 = r5
            com.google.android.gms.ads.internal.overlay.q r0 = r0.f6695g
            r9 = r0
            r0 = r11
            if (r0 != 0) goto Lb5
            r0 = r8
            r6 = r0
            r0 = r7
            if (r0 == 0) goto Lb7
            r0 = r8
            r6 = r0
            r0 = r10
            if (r0 != 0) goto Lb7
        Lb5:
            r0 = 1
            r6 = r0
        Lb7:
            r0 = r9
            r1 = r6
            r0.m14750a(r1)
        Lbd:
            return
        Lbe:
            r0 = 0
            r10 = r0
            goto L39
        Lc4:
            r0 = 0
            r11 = r0
            goto L70
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.BinderC2316c.m14761a(boolean, boolean):void");
    }

    /* renamed from: b */
    public final void m14760b() {
        if (this.f6691b != null && this.f6696h) {
            m14766a(this.f6691b.f6682j);
        }
        if (this.f6697i != null) {
            this.f6690a.setContentView(this.f6701m);
            this.f6706r = true;
            this.f6697i.removeAllViews();
            this.f6697i = null;
        }
        if (this.f6698j != null) {
            this.f6698j.onCustomViewHidden();
            this.f6698j = null;
        }
        this.f6696h = false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: b */
    public final void mo7374b(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f6699k);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: d */
    public final void mo7373d() {
        this.f6693d = 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: e */
    public final boolean mo7372e() {
        boolean z;
        this.f6693d = 0;
        if (this.f6692c == null) {
            z = true;
        } else {
            boolean mo13496D = this.f6692c.mo13496D();
            z = mo13496D;
            if (!mo13496D) {
                this.f6692c.mo7737a("onbackblocked", Collections.emptyMap());
                z = mo13496D;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: f */
    public final void mo7371f() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: g */
    public final void mo7370g() {
        if (((Boolean) dyx.m8158e().m7876a(edi.f16478ce)).booleanValue()) {
            if (this.f6692c == null || this.f6692c.mo13593B()) {
                C3556uu.m6745e("The webview does not exist. Ignoring action.");
                return;
            }
            C2341q.m14742e();
            C3572vj.m6939b(this.f6692c);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: h */
    public final void mo7369h() {
        if (this.f6691b.f6675c != null) {
            this.f6691b.f6675c.mo7433c();
        }
        m14765a(this.f6690a.getResources().getConfiguration());
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16478ce)).booleanValue()) {
            if (this.f6692c == null || this.f6692c.mo13593B()) {
                C3556uu.m6745e("The webview does not exist. Ignoring action.");
                return;
            }
            C2341q.m14742e();
            C3572vj.m6939b(this.f6692c);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: i */
    public final void mo7368i() {
        m14760b();
        if (this.f6691b.f6675c != null) {
            this.f6691b.f6675c.mo7431f_();
        }
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16478ce)).booleanValue() && this.f6692c != null && (!this.f6690a.isFinishing() || this.f6694f == null)) {
            C2341q.m14742e();
            C3572vj.m6940a(this.f6692c);
        }
        m14753r();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: j */
    public final void mo7367j() {
        if (((Boolean) dyx.m8158e().m7876a(edi.f16478ce)).booleanValue() && this.f6692c != null && (!this.f6690a.isFinishing() || this.f6694f == null)) {
            C2341q.m14742e();
            C3572vj.m6940a(this.f6692c);
        }
        m14753r();
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2338y
    /* renamed from: j_ */
    public final void mo11460j_() {
        this.f6693d = 1;
        this.f6690a.finish();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: k */
    public final void mo7366k() {
        if (this.f6692c != null) {
            try {
                this.f6701m.removeView(this.f6692c.getView());
            } catch (NullPointerException e) {
            }
        }
        m14753r();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: l */
    public final void mo7365l() {
        this.f6706r = true;
    }

    /* renamed from: m */
    public final void m14758m() {
        this.f6701m.removeView(this.f6695g);
        m14762a(true);
    }

    /* renamed from: n */
    public final void m14757n() {
        if (this.f6708t) {
            return;
        }
        this.f6708t = true;
        if (this.f6692c != null) {
            this.f6701m.removeView(this.f6692c.getView());
            if (this.f6694f != null) {
                this.f6692c.mo13477a(this.f6694f.f6723d);
                this.f6692c.mo13452b(false);
                this.f6694f.f6722c.addView(this.f6692c.getView(), this.f6694f.f6720a, this.f6694f.f6721b);
                this.f6694f = null;
            } else if (this.f6690a.getApplicationContext() != null) {
                this.f6692c.mo13477a(this.f6690a.getApplicationContext());
            }
            this.f6692c = null;
        }
        if (this.f6691b != null && this.f6691b.f6675c != null) {
            this.f6691b.f6675c.mo7430h_();
        }
        if (this.f6691b == null || this.f6691b.f6676d == null) {
            return;
        }
        m14763a(this.f6691b.f6676d.mo13422z(), this.f6691b.f6676d.getView());
    }

    /* renamed from: o */
    public final void m14756o() {
        if (this.f6702n) {
            this.f6702n = false;
            m14752s();
        }
    }

    /* renamed from: p */
    public final void m14755p() {
        this.f6701m.f6724a = true;
    }

    /* renamed from: q */
    public final void m14754q() {
        synchronized (this.f6703o) {
            this.f6705q = true;
            if (this.f6704p != null) {
                C3567ve.f17498a.removeCallbacks(this.f6704p);
                C3567ve.f17498a.post(this.f6704p);
            }
        }
    }
}
