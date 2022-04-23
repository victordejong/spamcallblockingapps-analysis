package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzcfc;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfc.class */
public final class zzcfc extends zzaeh implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzcgc {

    /* renamed from: n */
    public static final String[] f25903n = {"2011", "1009", "3010"};

    /* renamed from: a */
    public final String f25904a;

    /* renamed from: c */
    public FrameLayout f25906c;

    /* renamed from: d */
    public FrameLayout f25907d;

    /* renamed from: e */
    public zzdzb f25908e;

    /* renamed from: f */
    public View f25909f;

    /* renamed from: g */
    public final int f25910g;

    /* renamed from: h */
    public zzcdx f25911h;

    /* renamed from: i */
    public zzqq f25912i;

    /* renamed from: k */
    public zzadz f25914k;

    /* renamed from: l */
    public boolean f25915l;

    /* renamed from: b */
    public Map<String, WeakReference<View>> f25905b = new HashMap();

    /* renamed from: j */
    public IObjectWrapper f25913j = null;

    /* renamed from: m */
    public boolean f25916m = false;

    public zzcfc(FrameLayout frameLayout, FrameLayout frameLayout2, int i) {
        String str;
        this.f25906c = frameLayout;
        this.f25907d = frameLayout2;
        this.f25910g = i;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = "1007";
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = "2009";
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
            str = "3012";
        }
        this.f25904a = str;
        zzp.m17946z();
        zzbco.m15824a((View) frameLayout, (ViewTreeObserver.OnGlobalLayoutListener) this);
        zzp.m17946z();
        zzbco.m15823a((View) frameLayout, (ViewTreeObserver.OnScrollChangedListener) this);
        this.f25908e = zzbbz.f24768e;
        this.f25912i = new zzqq(this.f25906c.getContext(), this.f25906c);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: C1 */
    public final Map<String, WeakReference<View>> mo14329C1() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f25905b;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: G0 */
    public final IObjectWrapper mo14328G0() {
        return this.f25913j;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: I1 */
    public final Map<String, WeakReference<View>> mo14327I1() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: M0 */
    public final /* synthetic */ View mo14326M0() {
        return this.f25906c;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: P0 */
    public final FrameLayout mo14325P0() {
        return this.f25907d;
    }

    /* renamed from: Q1 */
    public final void m14357Q1() {
        synchronized (this) {
            this.f25908e.execute(new Runnable(this) { // from class: c.d.b.d.g.a.rh

                /* renamed from: a */
                public final zzcfc f15010a;

                {
                    this.f15010a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f15010a.m14356T1();
                }
            });
        }
    }

    /* renamed from: T1 */
    public final /* synthetic */ void m14356T1() {
        if (this.f25909f == null) {
            View view = new View(this.f25906c.getContext());
            this.f25909f = view;
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
        }
        if (this.f25906c != this.f25909f.getParent()) {
            this.f25906c.addView(this.f25909f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: W */
    public final JSONObject mo14324W() {
        synchronized (this) {
            if (this.f25911h == null) {
                return null;
            }
            return this.f25911h.m14759a(this.f25906c, mo14321c1(), mo14329C1());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    /* renamed from: a */
    public final void mo10919a(IObjectWrapper iObjectWrapper, int i) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    /* renamed from: a */
    public final void mo10918a(zzadz zzadzVar) {
        synchronized (this) {
            if (!this.f25916m) {
                this.f25915l = true;
                this.f25914k = zzadzVar;
                if (this.f25911h != null) {
                    this.f25911h.m14736m().m14730a(zzadzVar);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: a */
    public final void mo14323a(String str, View view, boolean z) {
        synchronized (this) {
            if (!this.f25916m) {
                if (view == null) {
                    this.f25905b.remove(str);
                    return;
                }
                this.f25905b.put(str, new WeakReference<>(view));
                if (!"1098".equals(str) && !"3011".equals(str)) {
                    if (zzbau.m15945a(this.f25910g)) {
                        view.setOnTouchListener(this);
                    }
                    view.setClickable(true);
                    view.setOnClickListener(this);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    /* renamed from: a */
    public final void mo10917a(String str, IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            mo14323a(str, (View) ObjectWrapper.m17021Q(iObjectWrapper), true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    /* renamed from: b */
    public final void mo10916b(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (!this.f25916m) {
                Object Q = ObjectWrapper.m17021Q(iObjectWrapper);
                if (!(Q instanceof zzcdx)) {
                    zzbbq.m15852d("Not an instance of native engine. This is most likely a transient error");
                    return;
                }
                if (this.f25911h != null) {
                    this.f25911h.m14746b(this);
                }
                m14357Q1();
                zzcdx zzcdxVar = (zzcdx) Q;
                this.f25911h = zzcdxVar;
                zzcdxVar.m14756a(this);
                this.f25911h.m14747b(this.f25906c);
                this.f25911h.m14744c(this.f25907d);
                if (this.f25915l) {
                    this.f25911h.m14736m().m14730a(this.f25914k);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: b1 */
    public final zzqq mo14322b1() {
        return this.f25912i;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: c1 */
    public final Map<String, WeakReference<View>> mo14321c1() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f25905b;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    /* renamed from: d */
    public final void mo10915d(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            this.f25911h.m14762a((View) ObjectWrapper.m17021Q(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    public final void destroy() {
        synchronized (this) {
            if (!this.f25916m) {
                if (this.f25911h != null) {
                    this.f25911h.m14746b(this);
                    this.f25911h = null;
                }
                this.f25905b.clear();
                this.f25906c.removeAllViews();
                this.f25907d.removeAllViews();
                this.f25905b = null;
                this.f25906c = null;
                this.f25907d = null;
                this.f25909f = null;
                this.f25912i = null;
                this.f25916m = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: f0 */
    public final String mo14320f0() {
        String str;
        synchronized (this) {
            str = this.f25904a;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    /* renamed from: h */
    public final void mo10914h(IObjectWrapper iObjectWrapper) {
        onTouch(this.f25906c, (MotionEvent) ObjectWrapper.m17021Q(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    /* renamed from: j */
    public final IObjectWrapper mo10913j(String str) {
        IObjectWrapper a;
        synchronized (this) {
            a = ObjectWrapper.m17020a(mo14319k(str));
        }
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    /* renamed from: k */
    public final View mo14319k(String str) {
        synchronized (this) {
            if (this.f25916m) {
                return null;
            }
            WeakReference<View> weakReference = this.f25905b.get(str);
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this) {
            if (this.f25911h != null) {
                this.f25911h.m14742g();
                this.f25911h.m14760a(view, this.f25906c, mo14321c1(), mo14329C1(), false);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this) {
            if (this.f25911h != null) {
                this.f25911h.m14758a(this.f25906c, mo14321c1(), mo14329C1(), zzcdx.m14743d(this.f25906c));
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this) {
            if (this.f25911h != null) {
                this.f25911h.m14758a(this.f25906c, mo14321c1(), mo14329C1(), zzcdx.m14743d(this.f25906c));
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this) {
            if (this.f25911h != null) {
                this.f25911h.m14761a(view, motionEvent, this.f25906c);
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    /* renamed from: u */
    public final void mo10912u(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (!this.f25916m) {
                this.f25913j = iObjectWrapper;
            }
        }
    }
}
