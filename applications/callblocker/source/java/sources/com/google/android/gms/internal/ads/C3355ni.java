package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.util.C2709f;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.internal.ads.ni */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ni.class */
public final class C3355ni extends C3366nt {

    /* renamed from: a */
    private static final Set<String> f16991a = C2709f.m13865b("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");

    /* renamed from: b */
    private String f16992b = "top-right";

    /* renamed from: c */
    private boolean f16993c = true;

    /* renamed from: d */
    private int f16994d = 0;

    /* renamed from: e */
    private int f16995e = 0;

    /* renamed from: f */
    private int f16996f = -1;

    /* renamed from: g */
    private int f16997g = 0;

    /* renamed from: h */
    private int f16998h = 0;

    /* renamed from: i */
    private int f16999i = -1;

    /* renamed from: j */
    private final Object f17000j = new Object();

    /* renamed from: k */
    private final act f17001k;

    /* renamed from: l */
    private final Activity f17002l;

    /* renamed from: m */
    private aei f17003m;

    /* renamed from: n */
    private ImageView f17004n;

    /* renamed from: o */
    private LinearLayout f17005o;

    /* renamed from: p */
    private AbstractC3365ns f17006p;

    /* renamed from: q */
    private PopupWindow f17007q;

    /* renamed from: r */
    private RelativeLayout f17008r;

    /* renamed from: s */
    private ViewGroup f17009s;

    public C3355ni(act actVar, AbstractC3365ns abstractC3365ns) {
        super(actVar, "resize");
        this.f17001k = actVar;
        this.f17002l = actVar.mo13444f();
        this.f17006p = abstractC3365ns;
    }

    /* renamed from: a */
    public final void m7423a(int i, int i2) {
        this.f16994d = i;
        this.f16995e = i2;
    }

    /* renamed from: a */
    public final void m7422a(int i, int i2, boolean z) {
        synchronized (this.f17000j) {
            this.f16994d = i;
            this.f16995e = i2;
            if (this.f17007q != null) {
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public final void m7421a(Map<String, String> map) {
        boolean z;
        int[] iArr;
        boolean z2;
        boolean z3;
        int i;
        int i2;
        synchronized (this.f17000j) {
            if (this.f17002l == null) {
                m7398a("Not an activity context. Cannot resize.");
            } else if (this.f17001k.mo13428t() == null) {
                m7398a("Webview is not yet available, size is not set.");
            } else if (this.f17001k.mo13428t().m13549e()) {
                m7398a("Is interstitial. Cannot resize an interstitial.");
            } else if (this.f17001k.mo13497A()) {
                m7398a("Cannot resize an expanded banner.");
            } else {
                if (!TextUtils.isEmpty(map.get("width"))) {
                    C2341q.m14744c();
                    this.f16999i = C3567ve.m6986a(map.get("width"));
                }
                if (!TextUtils.isEmpty(map.get("height"))) {
                    C2341q.m14744c();
                    this.f16996f = C3567ve.m6986a(map.get("height"));
                }
                if (!TextUtils.isEmpty(map.get("offsetX"))) {
                    C2341q.m14744c();
                    this.f16997g = C3567ve.m6986a(map.get("offsetX"));
                }
                if (!TextUtils.isEmpty(map.get("offsetY"))) {
                    C2341q.m14744c();
                    this.f16998h = C3567ve.m6986a(map.get("offsetY"));
                }
                if (!TextUtils.isEmpty(map.get("allowOffscreen"))) {
                    this.f16993c = Boolean.parseBoolean(map.get("allowOffscreen"));
                }
                String str = map.get("customClosePosition");
                if (!TextUtils.isEmpty(str)) {
                    this.f16992b = str;
                }
                if (!(this.f16999i >= 0 && this.f16996f >= 0)) {
                    m7398a("Invalid width and height options. Cannot resize.");
                    return;
                }
                Window window = this.f17002l.getWindow();
                if (window == null || window.getDecorView() == null) {
                    m7398a("Activity context is not ready, cannot get window or decor view.");
                    return;
                }
                int[] m6978b = C2341q.m14744c().m6978b(this.f17002l);
                int[] m6968c = C2341q.m14744c().m6968c(this.f17002l);
                int i3 = m6978b[0];
                int i4 = m6978b[1];
                if (this.f16999i < 50 || this.f16999i > i3) {
                    C3556uu.m6745e("Width is too small or too large.");
                    z = false;
                } else if (this.f16996f < 50 || this.f16996f > i4) {
                    C3556uu.m6745e("Height is too small or too large.");
                    z = false;
                } else if (this.f16996f == i4 && this.f16999i == i3) {
                    C3556uu.m6745e("Cannot resize to a full-screen ad.");
                    z = false;
                } else {
                    if (this.f16993c) {
                        String str2 = this.f16992b;
                        switch (str2.hashCode()) {
                            case -1364013995:
                                if (str2.equals("center")) {
                                    z3 = true;
                                    break;
                                }
                                z3 = true;
                                break;
                            case -1012429441:
                                if (str2.equals("top-left")) {
                                    z3 = false;
                                    break;
                                }
                                z3 = true;
                                break;
                            case -655373719:
                                if (str2.equals("bottom-left")) {
                                    z3 = true;
                                    break;
                                }
                                z3 = true;
                                break;
                            case 1163912186:
                                if (str2.equals("bottom-right")) {
                                    z3 = true;
                                    break;
                                }
                                z3 = true;
                                break;
                            case 1288627767:
                                if (str2.equals("bottom-center")) {
                                    z3 = true;
                                    break;
                                }
                                z3 = true;
                                break;
                            case 1755462605:
                                if (str2.equals("top-center")) {
                                    z3 = true;
                                    break;
                                }
                                z3 = true;
                                break;
                            default:
                                z3 = true;
                                break;
                        }
                        switch (z3) {
                            case false:
                                i = this.f16997g + this.f16994d;
                                i2 = this.f16995e + this.f16998h;
                                break;
                            case true:
                                i = ((this.f16994d + this.f16997g) + (this.f16999i / 2)) - 25;
                                i2 = this.f16995e + this.f16998h;
                                break;
                            case true:
                                i = ((this.f16994d + this.f16997g) + (this.f16999i / 2)) - 25;
                                i2 = ((this.f16995e + this.f16998h) + (this.f16996f / 2)) - 25;
                                break;
                            case true:
                                i = this.f16997g + this.f16994d;
                                i2 = ((this.f16995e + this.f16998h) + this.f16996f) - 50;
                                break;
                            case true:
                                i = ((this.f16994d + this.f16997g) + (this.f16999i / 2)) - 25;
                                i2 = ((this.f16995e + this.f16998h) + this.f16996f) - 50;
                                break;
                            case true:
                                i = ((this.f16994d + this.f16997g) + this.f16999i) - 50;
                                i2 = ((this.f16995e + this.f16998h) + this.f16996f) - 50;
                                break;
                            default:
                                i = ((this.f16994d + this.f16997g) + this.f16999i) - 50;
                                i2 = this.f16995e + this.f16998h;
                                break;
                        }
                        if (i < 0 || i + 50 > i3 || i2 < m6968c[0] || i2 + 50 > m6968c[1]) {
                            z = false;
                        }
                    }
                    z = true;
                }
                if (!z) {
                    iArr = null;
                } else if (this.f16993c) {
                    iArr = new int[]{this.f16994d + this.f16997g, this.f16995e + this.f16998h};
                } else {
                    int[] m6978b2 = C2341q.m14744c().m6978b(this.f17002l);
                    int[] m6968c2 = C2341q.m14744c().m6968c(this.f17002l);
                    int i5 = m6978b2[0];
                    int i6 = this.f16997g + this.f16994d;
                    int i7 = this.f16995e + this.f16998h;
                    if (i6 < 0) {
                        i6 = 0;
                    } else if (this.f16999i + i6 > i5) {
                        i6 = i5 - this.f16999i;
                    }
                    if (i7 < m6968c2[0]) {
                        i7 = m6968c2[0];
                    } else if (this.f16996f + i7 > m6968c2[1]) {
                        i7 = m6968c2[1] - this.f16996f;
                    }
                    iArr = new int[]{i6, i7};
                }
                if (iArr == null) {
                    m7398a("Resize location out of screen or close button is not visible.");
                    return;
                }
                dyx.m8162a();
                int m6801a = C3634xr.m6801a(this.f17002l, this.f16999i);
                dyx.m8162a();
                int m6801a2 = C3634xr.m6801a(this.f17002l, this.f16996f);
                ViewParent parent = this.f17001k.getView().getParent();
                if (parent == null || !(parent instanceof ViewGroup)) {
                    m7398a("Webview is detached, probably in the middle of a resize or expand.");
                    return;
                }
                ((ViewGroup) parent).removeView(this.f17001k.getView());
                if (this.f17007q == null) {
                    this.f17009s = (ViewGroup) parent;
                    C2341q.m14744c();
                    Bitmap m6996a = C3567ve.m6996a(this.f17001k.getView());
                    this.f17004n = new ImageView(this.f17002l);
                    this.f17004n.setImageBitmap(m6996a);
                    this.f17003m = this.f17001k.mo13428t();
                    this.f17009s.addView(this.f17004n);
                } else {
                    this.f17007q.dismiss();
                }
                this.f17008r = new RelativeLayout(this.f17002l);
                this.f17008r.setBackgroundColor(0);
                this.f17008r.setLayoutParams(new ViewGroup.LayoutParams(m6801a, m6801a2));
                C2341q.m14744c();
                this.f17007q = C3567ve.m6995a((View) this.f17008r, m6801a, m6801a2, false);
                this.f17007q.setOutsideTouchable(true);
                this.f17007q.setTouchable(true);
                this.f17007q.setClippingEnabled(!this.f16993c);
                this.f17008r.addView(this.f17001k.getView(), -1, -1);
                this.f17005o = new LinearLayout(this.f17002l);
                dyx.m8162a();
                int m6801a3 = C3634xr.m6801a(this.f17002l, 50);
                dyx.m8162a();
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(m6801a3, C3634xr.m6801a(this.f17002l, 50));
                String str3 = this.f16992b;
                switch (str3.hashCode()) {
                    case -1364013995:
                        if (str3.equals("center")) {
                            z2 = true;
                            break;
                        }
                        z2 = true;
                        break;
                    case -1012429441:
                        if (str3.equals("top-left")) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case -655373719:
                        if (str3.equals("bottom-left")) {
                            z2 = true;
                            break;
                        }
                        z2 = true;
                        break;
                    case 1163912186:
                        if (str3.equals("bottom-right")) {
                            z2 = true;
                            break;
                        }
                        z2 = true;
                        break;
                    case 1288627767:
                        if (str3.equals("bottom-center")) {
                            z2 = true;
                            break;
                        }
                        z2 = true;
                        break;
                    case 1755462605:
                        if (str3.equals("top-center")) {
                            z2 = true;
                            break;
                        }
                        z2 = true;
                        break;
                    default:
                        z2 = true;
                        break;
                }
                switch (z2) {
                    case false:
                        layoutParams.addRule(10);
                        layoutParams.addRule(9);
                        break;
                    case true:
                        layoutParams.addRule(10);
                        layoutParams.addRule(14);
                        break;
                    case true:
                        layoutParams.addRule(13);
                        break;
                    case true:
                        layoutParams.addRule(12);
                        layoutParams.addRule(9);
                        break;
                    case true:
                        layoutParams.addRule(12);
                        layoutParams.addRule(14);
                        break;
                    case true:
                        layoutParams.addRule(12);
                        layoutParams.addRule(11);
                        break;
                    default:
                        layoutParams.addRule(10);
                        layoutParams.addRule(11);
                        break;
                }
                this.f17005o.setOnClickListener(new View$OnClickListenerC3354nh(this));
                this.f17005o.setContentDescription("Close button");
                this.f17008r.addView(this.f17005o, layoutParams);
                try {
                    PopupWindow popupWindow = this.f17007q;
                    View decorView = window.getDecorView();
                    dyx.m8162a();
                    int m6801a4 = C3634xr.m6801a(this.f17002l, iArr[0]);
                    dyx.m8162a();
                    popupWindow.showAtLocation(decorView, 0, m6801a4, C3634xr.m6801a(this.f17002l, iArr[1]));
                    int i8 = iArr[0];
                    int i9 = iArr[1];
                    if (this.f17006p != null) {
                        this.f17006p.mo7402a(i8, i9, this.f16999i, this.f16996f);
                    }
                    this.f17001k.mo13471a(aei.m13554a(m6801a, m6801a2));
                    m7400a(iArr[0], iArr[1] - C2341q.m14744c().m6968c(this.f17002l)[0], this.f16999i, this.f16996f);
                    m7395c("resized");
                } catch (RuntimeException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    m7398a(valueOf.length() != 0 ? "Cannot show popup window: ".concat(valueOf) : new String("Cannot show popup window: "));
                    this.f17008r.removeView(this.f17001k.getView());
                    if (this.f17009s != null) {
                        this.f17009s.removeView(this.f17004n);
                        this.f17009s.addView(this.f17001k.getView());
                        this.f17001k.mo13471a(this.f17003m);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m7420a(boolean z) {
        synchronized (this.f17000j) {
            if (this.f17007q != null) {
                this.f17007q.dismiss();
                this.f17008r.removeView(this.f17001k.getView());
                if (this.f17009s != null) {
                    this.f17009s.removeView(this.f17004n);
                    this.f17009s.addView(this.f17001k.getView());
                    this.f17001k.mo13471a(this.f17003m);
                }
                if (z) {
                    m7395c("default");
                    if (this.f17006p != null) {
                        this.f17006p.mo7403a();
                    }
                }
                this.f17007q = null;
                this.f17008r = null;
                this.f17009s = null;
                this.f17005o = null;
            }
        }
    }

    /* renamed from: a */
    public final boolean m7424a() {
        boolean z;
        synchronized (this.f17000j) {
            z = this.f17007q != null;
        }
        return z;
    }
}
