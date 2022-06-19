package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lf1.class */
public final class lf1 extends AbstractBinderC6830oz implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, ng1 {

    /* renamed from: d */
    private final WeakReference<View> f26082d;

    /* renamed from: e */
    private final Map<String, WeakReference<View>> f26083e = new HashMap();

    /* renamed from: f */
    private final Map<String, WeakReference<View>> f26084f = new HashMap();

    /* renamed from: g */
    private final Map<String, WeakReference<View>> f26085g = new HashMap();

    /* renamed from: h */
    private me1 f26086h;

    /* renamed from: i */
    private View$OnAttachStateChangeListenerC6925rj f26087i;

    public lf1(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        C5667s.m18164A();
        dj0.m15789a(view, this);
        C5667s.m18164A();
        dj0.m15788b(view, this);
        this.f26082d = new WeakReference<>(view);
        for (Map.Entry<String, View> entry : hashMap.entrySet()) {
            String key = entry.getKey();
            View value = entry.getValue();
            if (value != null) {
                this.f26083e.put(key, new WeakReference<>(value));
                if (!"1098".equals(key) && !"3011".equals(key)) {
                    value.setOnTouchListener(this);
                    value.setClickable(true);
                    value.setOnClickListener(this);
                }
            }
        }
        this.f26085g.putAll(this.f26083e);
        for (Map.Entry<String, View> entry2 : hashMap2.entrySet()) {
            View value2 = entry2.getValue();
            if (value2 != null) {
                this.f26084f.put(entry2.getKey(), new WeakReference<>(value2));
                value2.setOnTouchListener(this);
                value2.setClickable(false);
            }
        }
        this.f26085g.putAll(this.f26084f);
        this.f26087i = new View$OnAttachStateChangeListenerC6925rj(view.getContext(), view);
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: D0 */
    public final FrameLayout mo12911D0() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: J0 */
    public final void mo12910J0(String str, View view, boolean z) {
        synchronized (this) {
            this.f26085g.put(str, new WeakReference<>(view));
            if (!"1098".equals(str) && !"3011".equals(str)) {
                this.f26083e.put(str, new WeakReference<>(view));
                view.setClickable(true);
                view.setOnClickListener(this);
                view.setOnTouchListener(this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: N */
    public final View mo12909N(String str) {
        synchronized (this) {
            WeakReference<View> weakReference = this.f26085g.get(str);
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6867pz
    /* renamed from: U */
    public final void mo12087U(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            Object m16745J0 = BinderC6255b.m16745J0(abstractC6253a);
            if (!(m16745J0 instanceof me1)) {
                ei0.m15464f("Not an instance of InternalNativeAd. This is most likely a transient error");
                return;
            }
            me1 me1Var = this.f26086h;
            if (me1Var != null) {
                me1Var.m13249G(this);
            }
            me1 me1Var2 = (me1) m16745J0;
            if (!me1Var2.m13234j()) {
                ei0.m15467c("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
                return;
            }
            this.f26086h = me1Var2;
            me1Var2.m13250F(this);
            this.f26086h.m13230n(mo12908V4());
        }
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: V4 */
    public final View mo12908V4() {
        return this.f26082d.get();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6867pz
    /* renamed from: Y */
    public final void mo12086Y(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            if (this.f26086h != null) {
                Object m16745J0 = BinderC6255b.m16745J0(abstractC6253a);
                if (!(m16745J0 instanceof View)) {
                    ei0.m15464f("Calling NativeAdViewHolderNonagonDelegate.setClickConfirmingView with wrong wrapped object");
                }
                this.f26086h.m13243M((View) m16745J0);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6867pz
    /* renamed from: c */
    public final void mo12085c() {
        synchronized (this) {
            me1 me1Var = this.f26086h;
            if (me1Var != null) {
                me1Var.m13249G(this);
                this.f26086h = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: f */
    public final View$OnAttachStateChangeListenerC6925rj mo12907f() {
        return this.f26087i;
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: g */
    public final Map<String, WeakReference<View>> mo12906g() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f26085g;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: h */
    public final Map<String, WeakReference<View>> mo12905h() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f26083e;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: i */
    public final Map<String, WeakReference<View>> mo12904i() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f26084f;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: k */
    public final JSONObject mo12903k() {
        synchronized (this) {
            me1 me1Var = this.f26086h;
            if (me1Var != null) {
                return me1Var.m13244L(mo12908V4(), mo12906g(), mo12905h());
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: l */
    public final JSONObject mo12902l() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: m */
    public final String mo12901m() {
        synchronized (this) {
        }
        return "1007";
    }

    @Override // com.google.android.gms.internal.ads.ng1
    /* renamed from: n */
    public final AbstractC6253a mo12900n() {
        synchronized (this) {
        }
        return null;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this) {
            me1 me1Var = this.f26086h;
            if (me1Var != null) {
                me1Var.m13248H(view, mo12908V4(), mo12906g(), mo12905h(), true);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this) {
            me1 me1Var = this.f26086h;
            if (me1Var != null) {
                me1Var.m13246J(mo12908V4(), mo12906g(), mo12905h(), me1.m13235i(mo12908V4()));
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this) {
            me1 me1Var = this.f26086h;
            if (me1Var != null) {
                me1Var.m13246J(mo12908V4(), mo12906g(), mo12905h(), me1.m13235i(mo12908V4()));
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this) {
            me1 me1Var = this.f26086h;
            if (me1Var != null) {
                me1Var.m13247I(view, motionEvent, mo12908V4());
            }
        }
        return false;
    }
}
