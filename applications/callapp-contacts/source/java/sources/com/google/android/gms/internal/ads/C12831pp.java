package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import androidx.p023b.C0430b;
import java.util.Collections;
import java.util.Set;
/* renamed from: com.google.android.gms.internal.ads.pp */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pp.class */
public final class C12831pp extends C12843qa {

    /* renamed from: t */
    private static final Set<String> f49666t;

    /* renamed from: a */
    String f49667a = "top-right";

    /* renamed from: b */
    boolean f49668b = true;

    /* renamed from: c */
    int f49669c = 0;

    /* renamed from: d */
    int f49670d = 0;

    /* renamed from: e */
    int f49671e = -1;

    /* renamed from: f */
    int f49672f = 0;

    /* renamed from: g */
    int f49673g = 0;

    /* renamed from: h */
    int f49674h = -1;

    /* renamed from: i */
    final Object f49675i = new Object();

    /* renamed from: j */
    final adt f49676j;

    /* renamed from: k */
    final Activity f49677k;

    /* renamed from: l */
    afh f49678l;

    /* renamed from: m */
    ImageView f49679m;

    /* renamed from: n */
    LinearLayout f49680n;

    /* renamed from: o */
    AbstractC12841pz f49681o;

    /* renamed from: p */
    PopupWindow f49682p;

    /* renamed from: q */
    RelativeLayout f49683q;

    /* renamed from: r */
    ViewGroup f49684r;

    static {
        C0430b c0430b = new C0430b(7);
        Collections.addAll(c0430b, "top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
        f49666t = Collections.unmodifiableSet(c0430b);
    }

    public C12831pp(adt adtVar, AbstractC12841pz abstractC12841pz) {
        super(adtVar, "resize");
        this.f49676j = adtVar;
        this.f49677k = adtVar.mo13751d();
        this.f49681o = abstractC12841pz;
    }

    /* renamed from: a */
    public final void m14254a(boolean z) {
        synchronized (this.f49675i) {
            PopupWindow popupWindow = this.f49682p;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.f49683q.removeView(this.f49676j.mo13731s());
                ViewGroup viewGroup = this.f49684r;
                if (viewGroup != null) {
                    viewGroup.removeView(this.f49679m);
                    this.f49684r.addView(this.f49676j.mo13731s());
                    this.f49676j.mo13782a(this.f49678l);
                }
                if (z) {
                    m14242c("default");
                    AbstractC12841pz abstractC12841pz = this.f49681o;
                    if (abstractC12841pz != null) {
                        abstractC12841pz.mo14248b();
                    }
                }
                this.f49682p = null;
                this.f49683q = null;
                this.f49684r = null;
                this.f49680n = null;
            }
        }
    }

    /* renamed from: a */
    public final boolean m14255a() {
        boolean z;
        synchronized (this.f49675i) {
            z = this.f49682p != null;
        }
        return z;
    }
}
