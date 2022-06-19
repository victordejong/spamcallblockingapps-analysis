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
import com.google.android.gms.ads.internal.C5625b;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C6854pm;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.au2;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.ho0;
import com.google.android.gms.internal.ads.hp0;
import com.google.android.gms.internal.ads.jb0;
import com.google.android.gms.internal.ads.jp0;
import com.google.android.gms.internal.ads.lw1;
import com.google.android.gms.internal.ads.m10;
import com.google.android.gms.internal.ads.mp0;
import com.google.android.gms.internal.ads.o10;
import com.google.android.gms.internal.ads.ra0;
import com.google.android.gms.internal.ads.wn0;
import com.google.android.gms.internal.ads.zzcgz;
import java.util.Collections;
/* renamed from: com.google.android.gms.ads.internal.overlay.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/l.class */
public class BinderC5650l extends jb0 implements AbstractC5663y {

    /* renamed from: d */
    static final int f18349d = Color.argb(0, 0, 0, 0);

    /* renamed from: e */
    protected final Activity f18350e;

    /* renamed from: f */
    AdOverlayInfoParcel f18351f;

    /* renamed from: g */
    wn0 f18352g;

    /* renamed from: h */
    C5646h f18353h;

    /* renamed from: i */
    zzq f18354i;

    /* renamed from: k */
    FrameLayout f18356k;

    /* renamed from: l */
    WebChromeClient.CustomViewCallback f18357l;

    /* renamed from: o */
    C5645g f18360o;

    /* renamed from: r */
    private Runnable f18363r;

    /* renamed from: s */
    private boolean f18364s;

    /* renamed from: t */
    private boolean f18365t;

    /* renamed from: j */
    boolean f18355j = false;

    /* renamed from: m */
    boolean f18358m = false;

    /* renamed from: n */
    boolean f18359n = false;

    /* renamed from: p */
    boolean f18361p = false;

    /* renamed from: x */
    int f18369x = 1;

    /* renamed from: q */
    private final Object f18362q = new Object();

    /* renamed from: u */
    private boolean f18366u = false;

    /* renamed from: v */
    private boolean f18367v = false;

    /* renamed from: w */
    private boolean f18368w = true;

    public BinderC5650l(Activity activity) {
        this.f18350e = activity;
    }

    /* renamed from: I6 */
    private final void m18198I6(Configuration configuration) {
        boolean z;
        boolean z2;
        zzj zzjVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f18351f;
        boolean z3 = (adOverlayInfoParcel == null || (zzjVar = adOverlayInfoParcel.f18329r) == null || !zzjVar.f18609e) ? false : true;
        boolean mo18008o = C5667s.m18158f().mo18008o(this.f18350e, configuration);
        if ((!this.f18359n || z3) && !mo18008o) {
            z = true;
            z2 = false;
            if (Build.VERSION.SDK_INT >= 19) {
                AdOverlayInfoParcel adOverlayInfoParcel2 = this.f18351f;
                z = true;
                z2 = false;
                if (adOverlayInfoParcel2 != null) {
                    zzj zzjVar2 = adOverlayInfoParcel2.f18329r;
                    z = true;
                    z2 = false;
                    if (zzjVar2 != null) {
                        z = true;
                        z2 = false;
                        if (zzjVar2.f18614j) {
                            z2 = true;
                            z = true;
                        }
                    }
                }
            }
        } else {
            z = false;
            z2 = false;
        }
        Window window = this.f18350e.getWindow();
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25532M0)).booleanValue() && Build.VERSION.SDK_INT >= 19) {
            window.getDecorView().setSystemUiVisibility(z ? z2 ? 5894 : 5380 : 256);
        } else if (!z) {
            window.addFlags(2048);
            window.clearFlags(1024);
        } else {
            window.addFlags(1024);
            window.clearFlags(2048);
            if (Build.VERSION.SDK_INT < 19 || !z2) {
                return;
            }
            window.getDecorView().setSystemUiVisibility(4098);
        }
    }

    /* renamed from: J6 */
    private static final void m18196J6(AbstractC6253a abstractC6253a, View view) {
        if (abstractC6253a == null || view == null) {
            return;
        }
        C5667s.m18145s().mo12107e(abstractC6253a, view);
    }

    /* renamed from: F6 */
    public final void m18203F6() {
        wn0 wn0Var;
        AbstractC5653o abstractC5653o;
        if (this.f18367v) {
            return;
        }
        this.f18367v = true;
        wn0 wn0Var2 = this.f18352g;
        if (wn0Var2 != null) {
            this.f18360o.removeView(wn0Var2.mo7960D());
            C5646h c5646h = this.f18353h;
            if (c5646h != null) {
                this.f18352g.mo7887s0(c5646h.f18345d);
                this.f18352g.mo7923Y0(false);
                ViewGroup viewGroup = this.f18353h.f18344c;
                View mo7960D = this.f18352g.mo7960D();
                C5646h c5646h2 = this.f18353h;
                viewGroup.addView(mo7960D, c5646h2.f18342a, c5646h2.f18343b);
                this.f18353h = null;
            } else if (this.f18350e.getApplicationContext() != null) {
                this.f18352g.mo7887s0(this.f18350e.getApplicationContext());
            }
            this.f18352g = null;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.f18351f;
        if (adOverlayInfoParcel != null && (abstractC5653o = adOverlayInfoParcel.f18317f) != null) {
            abstractC5653o.mo9242a6(this.f18369x);
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.f18351f;
        if (adOverlayInfoParcel2 == null || (wn0Var = adOverlayInfoParcel2.f18318g) == null) {
            return;
        }
        m18196J6(wn0Var.mo7886t0(), this.f18351f.f18318g.mo7960D());
    }

    /* renamed from: G6 */
    public final void m18202G6() {
        if (this.f18361p) {
            this.f18361p = false;
            m18200H6();
        }
    }

    /* renamed from: H */
    public final void m18201H() {
        this.f18360o.f18341e = true;
    }

    /* renamed from: H6 */
    protected final void m18200H6() {
        this.f18352g.mo7928W();
    }

    /* renamed from: I */
    public final void m18199I() {
        synchronized (this.f18362q) {
            this.f18364s = true;
            Runnable runnable = this.f18363r;
            if (runnable != null) {
                au2 au2Var = C5679c2.f18451a;
                au2Var.removeCallbacks(runnable);
                au2Var.post(this.f18363r);
            }
        }
    }

    /* renamed from: J4 */
    public final void m18197J4(boolean z) {
        int intValue = ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25754n3)).intValue();
        boolean z2 = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25524L0)).booleanValue() || z;
        C5654p c5654p = new C5654p();
        c5654p.f18373d = 50;
        c5654p.f18370a = true != z2 ? 0 : intValue;
        int i = 0;
        if (true != z2) {
            i = intValue;
        }
        c5654p.f18371b = i;
        c5654p.f18372c = intValue;
        this.f18354i = new zzq(this.f18350e, c5654p, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(true != z2 ? 9 : 11);
        m18195K6(z, this.f18351f.f18321j);
        this.f18360o.addView(this.f18354i, layoutParams);
    }

    /* renamed from: K6 */
    public final void m18195K6(boolean z, boolean z2) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        zzj zzjVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        zzj zzjVar2;
        boolean z3 = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25508J0)).booleanValue() && (adOverlayInfoParcel2 = this.f18351f) != null && (zzjVar2 = adOverlayInfoParcel2.f18329r) != null && zzjVar2.f18615k;
        boolean z4 = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25516K0)).booleanValue() && (adOverlayInfoParcel = this.f18351f) != null && (zzjVar = adOverlayInfoParcel.f18329r) != null && zzjVar.f18616l;
        if (z && z2 && z3 && !z4) {
            new ra0(this.f18352g, "useCustomClose").m11621b("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        zzq zzqVar = this.f18354i;
        if (zzqVar != null) {
            boolean z5 = true;
            if (!z4) {
                z5 = z2 && !z3;
            }
            zzqVar.m18184a(z5);
        }
    }

    /* renamed from: L6 */
    public final void m18194L6(boolean z) {
        if (z) {
            this.f18360o.setBackgroundColor(0);
        } else {
            this.f18360o.setBackgroundColor(-16777216);
        }
    }

    /* renamed from: M6 */
    public final void m18193M6(int i) {
        if (this.f18350e.getApplicationInfo().targetSdkVersion >= ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25747m4)).intValue()) {
            if (this.f18350e.getApplicationInfo().targetSdkVersion <= ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25755n4)).intValue()) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25763o4)).intValue()) {
                    if (i2 <= ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25771p4)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            this.f18350e.setRequestedOrientation(i);
        } catch (Throwable th) {
            C5667s.m18156h().m12234l(th, "AdOverlay.setRequestedOrientation");
        }
    }

    /* renamed from: N6 */
    public final void m18192N6(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        FrameLayout frameLayout = new FrameLayout(this.f18350e);
        this.f18356k = frameLayout;
        frameLayout.setBackgroundColor(-16777216);
        this.f18356k.addView(view, -1, -1);
        this.f18350e.setContentView(this.f18356k);
        this.f18365t = true;
        this.f18357l = customViewCallback;
        this.f18355j = true;
    }

    /* renamed from: O6 */
    protected final void m18191O6(boolean z) {
        if (!this.f18365t) {
            this.f18350e.requestWindowFeature(1);
        }
        Window window = this.f18350e.getWindow();
        if (window != null) {
            wn0 wn0Var = this.f18351f.f18318g;
            jp0 mo7914c0 = wn0Var != null ? wn0Var.mo7914c0() : null;
            boolean z2 = mo7914c0 != null && mo7914c0.mo14086e();
            this.f18361p = false;
            boolean z3 = false;
            if (z2) {
                int i = this.f18351f.f18324m;
                if (i == 6) {
                    z3 = false;
                    if (this.f18350e.getResources().getConfiguration().orientation == 1) {
                        z3 = true;
                    }
                    this.f18361p = z3;
                } else {
                    z3 = false;
                    if (i == 7) {
                        z3 = false;
                        if (this.f18350e.getResources().getConfiguration().orientation == 2) {
                            z3 = true;
                        }
                        this.f18361p = z3;
                    }
                }
            }
            StringBuilder sb = new StringBuilder(46);
            sb.append("Delay onShow to next orientation change: ");
            sb.append(z3);
            ei0.m15469a(sb.toString());
            m18193M6(this.f18351f.f18324m);
            window.setFlags(16777216, 16777216);
            ei0.m15469a("Hardware acceleration on the AdActivity window enabled.");
            if (!this.f18359n) {
                this.f18360o.setBackgroundColor(-16777216);
            } else {
                this.f18360o.setBackgroundColor(f18349d);
            }
            this.f18350e.setContentView(this.f18360o);
            this.f18365t = true;
            if (z) {
                try {
                    C5667s.m18159e();
                    Activity activity = this.f18350e;
                    wn0 wn0Var2 = this.f18351f.f18318g;
                    mp0 mo7894o = wn0Var2 != null ? wn0Var2.mo7894o() : null;
                    wn0 wn0Var3 = this.f18351f.f18318g;
                    String mo7958E = wn0Var3 != null ? wn0Var3.mo7958E() : null;
                    AdOverlayInfoParcel adOverlayInfoParcel = this.f18351f;
                    zzcgz zzcgzVar = adOverlayInfoParcel.f18327p;
                    wn0 wn0Var4 = adOverlayInfoParcel.f18318g;
                    wn0 m14581a = ho0.m14581a(activity, mo7894o, mo7958E, true, z2, null, null, zzcgzVar, null, null, wn0Var4 != null ? wn0Var4.mo7906h() : null, C6854pm.m12219a(), null, null);
                    this.f18352g = m14581a;
                    jp0 mo7914c02 = m14581a.mo7914c0();
                    AdOverlayInfoParcel adOverlayInfoParcel2 = this.f18351f;
                    m10 m10Var = adOverlayInfoParcel2.f18330s;
                    o10 o10Var = adOverlayInfoParcel2.f18319h;
                    AbstractC5659u abstractC5659u = adOverlayInfoParcel2.f18323l;
                    wn0 wn0Var5 = adOverlayInfoParcel2.f18318g;
                    C5625b c5625b = null;
                    if (wn0Var5 != null) {
                        c5625b = wn0Var5.mo7914c0().mo14087c();
                    }
                    mo7914c02.mo14079q0(null, m10Var, null, o10Var, abstractC5659u, true, null, c5625b, null, null, null, null, null, null, null, null);
                    this.f18352g.mo7914c0().mo14085f0(new hp0(this) { // from class: com.google.android.gms.ads.internal.overlay.e

                        /* renamed from: d */
                        private final BinderC5650l f18338d;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f18338d = this;
                        }

                        @Override // com.google.android.gms.internal.ads.hp0
                        /* renamed from: b */
                        public final void mo8634b(boolean z4) {
                            wn0 wn0Var6 = this.f18338d.f18352g;
                            if (wn0Var6 != null) {
                                wn0Var6.mo7928W();
                            }
                        }
                    });
                    AdOverlayInfoParcel adOverlayInfoParcel3 = this.f18351f;
                    String str = adOverlayInfoParcel3.f18326o;
                    if (str != null) {
                        this.f18352g.loadUrl(str);
                    } else {
                        String str2 = adOverlayInfoParcel3.f18322k;
                        if (str2 == null) {
                            throw new zzf("No URL or HTML to display in ad overlay.");
                        }
                        this.f18352g.loadDataWithBaseURL(adOverlayInfoParcel3.f18320i, str2, "text/html", "UTF-8", null);
                    }
                    wn0 wn0Var6 = this.f18351f.f18318g;
                    if (wn0Var6 != null) {
                        wn0Var6.mo7952H0(this);
                    }
                } catch (Exception e) {
                    ei0.m15466d("Error obtaining webview.", e);
                    throw new zzf("Could not obtain webview for the overlay.");
                }
            } else {
                wn0 wn0Var7 = this.f18351f.f18318g;
                this.f18352g = wn0Var7;
                wn0Var7.mo7887s0(this.f18350e);
            }
            this.f18352g.mo7949J0(this);
            wn0 wn0Var8 = this.f18351f.f18318g;
            if (wn0Var8 != null) {
                m18196J6(wn0Var8.mo7886t0(), this.f18360o);
            }
            if (this.f18351f.f18325n != 5) {
                ViewParent parent = this.f18352g.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(this.f18352g.mo7960D());
                }
                if (this.f18359n) {
                    this.f18352g.mo7936R();
                }
                this.f18360o.addView(this.f18352g.mo7960D(), -1, -1);
            }
            if (!z && !this.f18361p) {
                m18200H6();
            }
            AdOverlayInfoParcel adOverlayInfoParcel4 = this.f18351f;
            if (adOverlayInfoParcel4.f18325n == 5) {
                lw1.m13410F6(this.f18350e, this, adOverlayInfoParcel4.f18335x, adOverlayInfoParcel4.f18332u, adOverlayInfoParcel4.f18333v, adOverlayInfoParcel4.f18334w, adOverlayInfoParcel4.f18331t, adOverlayInfoParcel4.f18336y);
                return;
            }
            m18197J4(z2);
            if (!this.f18352g.mo7946L0()) {
                return;
            }
            m18195K6(z2, true);
            return;
        }
        throw new zzf("Invalid activity, no window available.");
    }

    /* renamed from: P6 */
    protected final void m18190P6() {
        AdOverlayInfoParcel adOverlayInfoParcel;
        AbstractC5653o abstractC5653o;
        if (!this.f18350e.isFinishing() || this.f18366u) {
            return;
        }
        this.f18366u = true;
        wn0 wn0Var = this.f18352g;
        if (wn0Var != null) {
            wn0Var.mo7879x0(this.f18369x - 1);
            synchronized (this.f18362q) {
                if (!this.f18364s && this.f18352g.mo7930U0()) {
                    if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25722j3)).booleanValue() && !this.f18367v && (adOverlayInfoParcel = this.f18351f) != null && (abstractC5653o = adOverlayInfoParcel.f18317f) != null) {
                        abstractC5653o.mo9240e();
                    }
                    Runnable runnable = new Runnable(this) { // from class: com.google.android.gms.ads.internal.overlay.f

                        /* renamed from: d */
                        private final BinderC5650l f18339d;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f18339d = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f18339d.m18203F6();
                        }
                    };
                    this.f18363r = runnable;
                    C5679c2.f18451a.postDelayed(runnable, ((Long) C7192yr.m8714c().m14263c(C6679kw.f25500I0)).longValue());
                    return;
                }
            }
        }
        m18203F6();
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: S */
    public final void mo13941S(AbstractC6253a abstractC6253a) {
        m18198I6((Configuration) BinderC6255b.m16745J0(abstractC6253a));
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: V1 */
    public final void mo13940V1(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: a */
    public final void mo13939a() {
        this.f18369x = 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0082, code lost:
        if (r0 != false) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c1 A[Catch: zzf -> 0x01ba, TRY_ENTER, TryCatch #0 {zzf -> 0x01ba, blocks: (B:9:0x0024, B:11:0x0038, B:13:0x0045, B:15:0x004b, B:17:0x0054, B:19:0x0067, B:21:0x0076, B:23:0x0088, B:25:0x0090, B:27:0x0096, B:29:0x009d, B:31:0x00a6, B:32:0x00b8, B:35:0x00c1, B:37:0x00c8, B:39:0x00d4, B:41:0x00d9, B:43:0x00e4, B:45:0x00eb, B:47:0x00f7, B:49:0x0100, B:51:0x0107, B:53:0x0112, B:54:0x0118, B:54:0x0118, B:55:0x011b, B:64:0x0177, B:66:0x017d, B:67:0x0189, B:69:0x018b, B:71:0x0190, B:73:0x01a7, B:75:0x01ad, B:76:0x01b9), top: B:80:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01a7 A[Catch: zzf -> 0x01ba, TRY_ENTER, TryCatch #0 {zzf -> 0x01ba, blocks: (B:9:0x0024, B:11:0x0038, B:13:0x0045, B:15:0x004b, B:17:0x0054, B:19:0x0067, B:21:0x0076, B:23:0x0088, B:25:0x0090, B:27:0x0096, B:29:0x009d, B:31:0x00a6, B:32:0x00b8, B:35:0x00c1, B:37:0x00c8, B:39:0x00d4, B:41:0x00d9, B:43:0x00e4, B:45:0x00eb, B:47:0x00f7, B:49:0x0100, B:51:0x0107, B:53:0x0112, B:54:0x0118, B:54:0x0118, B:55:0x011b, B:64:0x0177, B:66:0x017d, B:67:0x0189, B:69:0x018b, B:71:0x0190, B:73:0x01a7, B:75:0x01ad, B:76:0x01b9), top: B:80:0x0024 }] */
    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: a0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo13938a0(android.os.Bundle r7) {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.BinderC5650l.mo13938a0(android.os.Bundle):void");
    }

    /* renamed from: b */
    public final void m18189b() {
        this.f18369x = 3;
        this.f18350e.finish();
        AdOverlayInfoParcel adOverlayInfoParcel = this.f18351f;
        if (adOverlayInfoParcel == null || adOverlayInfoParcel.f18325n != 5) {
            return;
        }
        this.f18350e.overridePendingTransition(0, 0);
    }

    /* renamed from: c */
    public final void m18188c() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.f18351f;
        if (adOverlayInfoParcel != null && this.f18355j) {
            m18193M6(adOverlayInfoParcel.f18324m);
        }
        if (this.f18356k != null) {
            this.f18350e.setContentView(this.f18360o);
            this.f18365t = true;
            this.f18356k.removeAllViews();
            this.f18356k = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.f18357l;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.f18357l = null;
        }
        this.f18355j = false;
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: d */
    public final void mo13937d() {
        AbstractC5653o abstractC5653o;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f18351f;
        if (adOverlayInfoParcel == null || (abstractC5653o = adOverlayInfoParcel.f18317f) == null) {
            return;
        }
        abstractC5653o.mo9244a();
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5663y
    /* renamed from: e */
    public final void mo9641e() {
        this.f18369x = 2;
        this.f18350e.finish();
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: g */
    public final void mo13936g() {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25738l3)).booleanValue()) {
            wn0 wn0Var = this.f18352g;
            if (wn0Var == null || wn0Var.mo7905h0()) {
                ei0.m15464f("The webview does not exist. Ignoring action.");
            } else {
                this.f18352g.onResume();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: h */
    public final void mo13935h() {
        AbstractC5653o abstractC5653o;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f18351f;
        if (adOverlayInfoParcel != null && (abstractC5653o = adOverlayInfoParcel.f18317f) != null) {
            abstractC5653o.mo9243a3();
        }
        m18198I6(this.f18350e.getResources().getConfiguration());
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25738l3)).booleanValue()) {
            wn0 wn0Var = this.f18352g;
            if (wn0Var == null || wn0Var.mo7905h0()) {
                ei0.m15464f("The webview does not exist. Ignoring action.");
            } else {
                this.f18352g.onResume();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: i */
    public final void mo13934i() {
        AbstractC5653o abstractC5653o;
        m18188c();
        AdOverlayInfoParcel adOverlayInfoParcel = this.f18351f;
        if (adOverlayInfoParcel != null && (abstractC5653o = adOverlayInfoParcel.f18317f) != null) {
            abstractC5653o.mo9237m2();
        }
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25738l3)).booleanValue() && this.f18352g != null && (!this.f18350e.isFinishing() || this.f18353h == null)) {
            this.f18352g.onPause();
        }
        m18190P6();
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: k */
    public final void mo13933k() {
        wn0 wn0Var = this.f18352g;
        if (wn0Var != null) {
            try {
                this.f18360o.removeView(wn0Var.mo7960D());
            } catch (NullPointerException e) {
            }
        }
        m18190P6();
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: l */
    public final void mo13932l() {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25738l3)).booleanValue() && this.f18352g != null && (!this.f18350e.isFinishing() || this.f18353h == null)) {
            this.f18352g.onPause();
        }
        m18190P6();
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: m0 */
    public final void mo13931m0(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f18358m);
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: o */
    public final void mo13930o() {
        this.f18365t = true;
    }

    /* renamed from: w */
    public final void m18187w() {
        this.f18360o.removeView(this.f18354i);
        m18197J4(true);
    }

    @Override // com.google.android.gms.internal.ads.kb0
    public final boolean zzg() {
        this.f18369x = 1;
        if (this.f18352g == null) {
            return true;
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25773p6)).booleanValue() && this.f18352g.canGoBack()) {
            this.f18352g.goBack();
            return false;
        }
        boolean mo7918a1 = this.f18352g.mo7918a1();
        if (!mo7918a1) {
            this.f18352g.mo7959D0("onbackblocked", Collections.emptyMap());
        }
        return mo7918a1;
    }

    @Override // com.google.android.gms.internal.ads.kb0
    public final void zzi() {
    }
}
