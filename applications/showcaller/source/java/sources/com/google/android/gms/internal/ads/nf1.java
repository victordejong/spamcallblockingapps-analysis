package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5674b1;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nf1.class */
public final class nf1 extends AbstractBinderC6645jz implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, ng1 {

    /* renamed from: d */
    public static final zzfoj<String> f27113d = zzfoj.zzl("2011", "1009", "3010");

    /* renamed from: e */
    private final String f27114e;

    /* renamed from: g */
    private FrameLayout f27116g;

    /* renamed from: h */
    private FrameLayout f27117h;

    /* renamed from: i */
    private final s03 f27118i;

    /* renamed from: j */
    private View f27119j;

    /* renamed from: l */
    private me1 f27121l;

    /* renamed from: m */
    private View$OnAttachStateChangeListenerC6925rj f27122m;

    /* renamed from: o */
    private AbstractC6421dz f27124o;

    /* renamed from: p */
    private boolean f27125p;

    /* renamed from: f */
    private Map<String, WeakReference<View>> f27115f = new HashMap();

    /* renamed from: n */
    private AbstractC6253a f27123n = null;

    /* renamed from: q */
    private boolean f27126q = false;

    /* renamed from: k */
    private final int f27120k = 213806000;

    public nf1(FrameLayout frameLayout, FrameLayout frameLayout2, int i) {
        this.f27116g = frameLayout;
        this.f27117h = frameLayout2;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        String str = "3012";
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = "1007";
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = "2009";
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
        }
        this.f27114e = str;
        C5667s.m18164A();
        dj0.m15789a(frameLayout, this);
        C5667s.m18164A();
        dj0.m15788b(frameLayout, this);
        this.f27118i = qi0.f28499e;
        this.f27122m = new View$OnAttachStateChangeListenerC6925rj(this.f27116g.getContext(), this.f27116g);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    /* renamed from: F6 */
    private final void m12933F6(String str) {
        DisplayMetrics displayMetrics;
        synchronized (this) {
            FrameLayout frameLayout = new FrameLayout(this.f27117h.getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            Context context = this.f27117h.getContext();
            frameLayout.setClickable(false);
            frameLayout.setFocusable(false);
            if (!TextUtils.isEmpty(str)) {
                Context context2 = context;
                if (context.getApplicationContext() != null) {
                    context2 = context.getApplicationContext();
                }
                Resources resources = context2.getResources();
                if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
                    try {
                        byte[] decode = Base64.decode(str, 0);
                        BitmapDrawable bitmapDrawable = new BitmapDrawable(BitmapFactory.decodeByteArray(decode, 0, decode.length));
                        bitmapDrawable.setTargetDensity(displayMetrics.densityDpi);
                        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
                        bitmapDrawable.setTileModeXY(tileMode, tileMode);
                        frameLayout.setBackground(bitmapDrawable);
                    } catch (IllegalArgumentException e) {
                        ei0.m15463g("Encountered invalid base64 watermark.", e);
                    }
                }
            }
            this.f27117h.addView(frameLayout);
        }
    }

    /* renamed from: o */
    private final void m12927o() {
        synchronized (this) {
            this.f27118i.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.mf1

                /* renamed from: d */
                private final nf1 f26580d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f26580d = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f26580d.m12925s();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6682kz
    /* renamed from: A6 */
    public final void mo12934A6(AbstractC6253a abstractC6253a) {
        onTouch(this.f27116g, (MotionEvent) BinderC6255b.m16745J0(abstractC6253a));
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: D0 */
    public final FrameLayout mo12911D0() {
        return this.f27117h;
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: J0 */
    public final void mo12910J0(String str, View view, boolean z) {
        synchronized (this) {
            if (this.f27126q) {
                return;
            }
            if (view == null) {
                this.f27115f.remove(str);
                return;
            }
            this.f27115f.put(str, new WeakReference<>(view));
            if (!"1098".equals(str) && !"3011".equals(str)) {
                if (C5674b1.m18119a(this.f27120k)) {
                    view.setOnTouchListener(this);
                }
                view.setClickable(true);
                view.setOnClickListener(this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6682kz
    /* renamed from: J5 */
    public final void mo12932J5(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            if (this.f27126q) {
                return;
            }
            this.f27123n = abstractC6253a;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6682kz
    /* renamed from: M */
    public final void mo12931M(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            this.f27121l.m13243M((View) BinderC6255b.m16745J0(abstractC6253a));
        }
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: N */
    public final View mo12909N(String str) {
        synchronized (this) {
            if (this.f27126q) {
                return null;
            }
            WeakReference<View> weakReference = this.f27115f.get(str);
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: V4 */
    public final /* bridge */ /* synthetic */ View mo12908V4() {
        return this.f27116g;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6682kz
    /* renamed from: Y */
    public final void mo12930Y(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            if (this.f27126q) {
                return;
            }
            Object m16745J0 = BinderC6255b.m16745J0(abstractC6253a);
            if (!(m16745J0 instanceof me1)) {
                ei0.m15464f("Not an instance of native engine. This is most likely a transient error");
                return;
            }
            me1 me1Var = this.f27121l;
            if (me1Var != null) {
                me1Var.m13249G(this);
            }
            m12927o();
            me1 me1Var2 = (me1) m16745J0;
            this.f27121l = me1Var2;
            me1Var2.m13250F(this);
            this.f27121l.m13230n(this.f27116g);
            this.f27121l.m13229o(this.f27117h);
            if (this.f27125p) {
                this.f27121l.m13228p().m12689b(this.f27124o);
            }
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25785r2)).booleanValue() || TextUtils.isEmpty(this.f27121l.m13233k())) {
                return;
            }
            m12933F6(this.f27121l.m13233k());
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6682kz
    /* renamed from: a */
    public final void mo12929a() {
        synchronized (this) {
            if (this.f27126q) {
                return;
            }
            me1 me1Var = this.f27121l;
            if (me1Var != null) {
                me1Var.m13249G(this);
                this.f27121l = null;
            }
            this.f27115f.clear();
            this.f27116g.removeAllViews();
            this.f27117h.removeAllViews();
            this.f27115f = null;
            this.f27116g = null;
            this.f27117h = null;
            this.f27119j = null;
            this.f27122m = null;
            this.f27126q = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6682kz
    /* renamed from: d4 */
    public final void mo12928d4(AbstractC6421dz abstractC6421dz) {
        synchronized (this) {
            if (this.f27126q) {
                return;
            }
            this.f27125p = true;
            this.f27124o = abstractC6421dz;
            me1 me1Var = this.f27121l;
            if (me1Var == null) {
                return;
            }
            me1Var.m13228p().m12689b(abstractC6421dz);
        }
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: f */
    public final View$OnAttachStateChangeListenerC6925rj mo12907f() {
        return this.f27122m;
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: g */
    public final Map<String, WeakReference<View>> mo12906g() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f27115f;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: h */
    public final Map<String, WeakReference<View>> mo12905h() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f27115f;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: i */
    public final Map<String, WeakReference<View>> mo12904i() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: k */
    public final JSONObject mo12903k() {
        synchronized (this) {
            me1 me1Var = this.f27121l;
            if (me1Var != null) {
                return me1Var.m13244L(this.f27116g, mo12906g(), mo12905h());
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: l */
    public final JSONObject mo12902l() {
        synchronized (this) {
            me1 me1Var = this.f27121l;
            if (me1Var != null) {
                return me1Var.m13245K(this.f27116g, mo12906g(), mo12905h());
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: m */
    public final String mo12901m() {
        String str;
        synchronized (this) {
            str = this.f27114e;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: n */
    public final AbstractC6253a mo12900n() {
        return this.f27123n;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6682kz
    /* renamed from: o2 */
    public final void mo12926o2(String str, AbstractC6253a abstractC6253a) {
        synchronized (this) {
            mo12910J0(str, (View) BinderC6255b.m16745J0(abstractC6253a), true);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this) {
            me1 me1Var = this.f27121l;
            if (me1Var != null) {
                me1Var.m13241O();
                this.f27121l.m13248H(view, this.f27116g, mo12906g(), mo12905h(), false);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this) {
            me1 me1Var = this.f27121l;
            if (me1Var != null) {
                me1Var.m13246J(this.f27116g, mo12906g(), mo12905h(), me1.m13235i(this.f27116g));
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this) {
            me1 me1Var = this.f27121l;
            if (me1Var != null) {
                me1Var.m13246J(this.f27116g, mo12906g(), mo12905h(), me1.m13235i(this.f27116g));
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this) {
            me1 me1Var = this.f27121l;
            if (me1Var != null) {
                me1Var.m13247I(view, motionEvent, this.f27116g);
            }
        }
        return false;
    }

    /* renamed from: s */
    public final /* synthetic */ void m12925s() {
        if (this.f27119j == null) {
            View view = new View(this.f27116g.getContext());
            this.f27119j = view;
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
        }
        if (this.f27116g != this.f27119j.getParent()) {
            this.f27116g.addView(this.f27119j);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6682kz
    /* renamed from: u0 */
    public final void mo12924u0(AbstractC6253a abstractC6253a, int i) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6682kz
    /* renamed from: y */
    public final AbstractC6253a mo12923y(String str) {
        AbstractC6253a m16744m2;
        synchronized (this) {
            m16744m2 = BinderC6255b.m16744m2(mo12909N(str));
        }
        return m16744m2;
    }
}
