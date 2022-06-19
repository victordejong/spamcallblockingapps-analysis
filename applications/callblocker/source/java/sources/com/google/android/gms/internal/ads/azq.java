package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/azq.class */
public final class azq extends AbstractBinderC2857cf implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, bam {

    /* renamed from: a */
    private final WeakReference<View> f10711a;

    /* renamed from: b */
    private final Map<String, WeakReference<View>> f10712b = new HashMap();

    /* renamed from: c */
    private final Map<String, WeakReference<View>> f10713c = new HashMap();

    /* renamed from: d */
    private final Map<String, WeakReference<View>> f10714d = new HashMap();
    @GuardedBy("this")

    /* renamed from: e */
    private aym f10715e;

    /* renamed from: f */
    private dtn f10716f;

    public azq(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        C2341q.m14721z();
        C3666yw.m6721a(view, (ViewTreeObserver.OnGlobalLayoutListener) this);
        C2341q.m14721z();
        C3666yw.m6720a(view, (ViewTreeObserver.OnScrollChangedListener) this);
        this.f10711a = new WeakReference<>(view);
        for (Map.Entry<String, View> entry : hashMap.entrySet()) {
            String key = entry.getKey();
            View value = entry.getValue();
            if (value != null) {
                this.f10712b.put(key, new WeakReference<>(value));
                if (!"1098".equals(key) && !"3011".equals(key)) {
                    value.setOnTouchListener(this);
                    value.setClickable(true);
                    value.setOnClickListener(this);
                }
            }
        }
        this.f10714d.putAll(this.f10712b);
        for (Map.Entry<String, View> entry2 : hashMap2.entrySet()) {
            View value2 = entry2.getValue();
            if (value2 != null) {
                this.f10713c.put(entry2.getKey(), new WeakReference<>(value2));
                value2.setOnTouchListener(this);
                value2.setClickable(false);
            }
        }
        this.f10714d.putAll(this.f10713c);
        this.f10716f = new dtn(view.getContext(), view);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2858cg
    /* renamed from: a */
    public final void mo11262a() {
        synchronized (this) {
            if (this.f10715e != null) {
                this.f10715e.m12307b(this);
                this.f10715e = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2858cg
    /* renamed from: a */
    public final void mo11261a(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            Object m13795a = BinderC2734b.m13795a(abstractC2731a);
            if (!(m13795a instanceof aym)) {
                C3556uu.m6745e("Not an instance of InternalNativeAd. This is most likely a transient error");
            } else {
                if (this.f10715e != null) {
                    this.f10715e.m12307b(this);
                }
                if (((aym) m13795a).m12300f()) {
                    this.f10715e = (aym) m13795a;
                    this.f10715e.m12318a(this);
                    this.f10715e.m12304c(mo12170c());
                } else {
                    C3556uu.m6749c("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: a */
    public final void mo12173a(String str, View view, boolean z) {
        synchronized (this) {
            if (view == null) {
                this.f10714d.remove(str);
                this.f10712b.remove(str);
                this.f10713c.remove(str);
            } else {
                this.f10714d.put(str, new WeakReference<>(view));
                if (!"1098".equals(str) && !"3011".equals(str)) {
                    this.f10712b.put(str, new WeakReference<>(view));
                    view.setClickable(true);
                    view.setOnClickListener(this);
                    view.setOnTouchListener(this);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: a_ */
    public final View mo12172a_(String str) {
        View view;
        synchronized (this) {
            WeakReference<View> weakReference = this.f10714d.get(str);
            view = weakReference == null ? null : weakReference.get();
        }
        return view;
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: b */
    public final FrameLayout mo12171b() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2858cg
    /* renamed from: b */
    public final void mo11260b(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            if (this.f10715e != null) {
                Object m13795a = BinderC2734b.m13795a(abstractC2731a);
                if (!(m13795a instanceof View)) {
                    C3556uu.m6745e("Calling NativeAdViewHolderNonagonDelegate.setClickConfirmingView with wrong wrapped object");
                }
                this.f10715e.m12322a((View) m13795a);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: c */
    public final View mo12170c() {
        return this.f10711a.get();
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: d */
    public final dtn mo12169d() {
        return this.f10716f;
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: e */
    public final Map<String, WeakReference<View>> mo12168e() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f10714d;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: f */
    public final Map<String, WeakReference<View>> mo12167f() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f10712b;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: g */
    public final Map<String, WeakReference<View>> mo12166g() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f10713c;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: h */
    public final String mo12165h() {
        synchronized (this) {
        }
        return "1007";
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: i */
    public final AbstractC2731a mo12164i() {
        synchronized (this) {
        }
        return null;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this) {
            if (this.f10715e != null) {
                this.f10715e.m12320a(view, mo12170c(), mo12168e(), mo12167f(), true);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this) {
            if (this.f10715e != null) {
                this.f10715e.m12319a(mo12170c(), mo12168e(), mo12167f(), aym.m12308b(mo12170c()));
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this) {
            if (this.f10715e != null) {
                this.f10715e.m12319a(mo12170c(), mo12168e(), mo12167f(), aym.m12308b(mo12170c()));
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this) {
            if (this.f10715e != null) {
                this.f10715e.m12321a(view, motionEvent, mo12170c());
            }
        }
        return false;
    }
}
