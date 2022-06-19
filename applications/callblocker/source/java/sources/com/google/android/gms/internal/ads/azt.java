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
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/azt.class */
public final class azt extends AbstractBinderC2853cb implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, bam {

    /* renamed from: a */
    public static final String[] f10719a = {"2011", "1009", "3010"};

    /* renamed from: b */
    private final String f10720b;

    /* renamed from: d */
    private FrameLayout f10722d;

    /* renamed from: e */
    private FrameLayout f10723e;

    /* renamed from: f */
    private crs f10724f;

    /* renamed from: g */
    private View f10725g;

    /* renamed from: h */
    private final int f10726h;
    @GuardedBy("this")

    /* renamed from: i */
    private aym f10727i;

    /* renamed from: j */
    private dtn f10728j;

    /* renamed from: l */
    private AbstractC2843bt f10730l;

    /* renamed from: m */
    private boolean f10731m;
    @GuardedBy("this")

    /* renamed from: c */
    private Map<String, WeakReference<View>> f10721c = new HashMap();

    /* renamed from: k */
    private AbstractC2731a f10729k = null;

    /* renamed from: n */
    private boolean f10732n = false;

    public azt(FrameLayout frameLayout, FrameLayout frameLayout2, int i) {
        String str;
        this.f10722d = frameLayout;
        this.f10723e = frameLayout2;
        this.f10726h = i;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = "1007";
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = "2009";
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
            str = "3012";
        }
        this.f10720b = str;
        C2341q.m14721z();
        C3666yw.m6721a((View) frameLayout, (ViewTreeObserver.OnGlobalLayoutListener) this);
        C2341q.m14721z();
        C3666yw.m6720a((View) frameLayout, (ViewTreeObserver.OnScrollChangedListener) this);
        this.f10724f = C3650yg.f17646e;
        this.f10728j = new dtn(this.f10722d.getContext(), this.f10722d);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    /* renamed from: k */
    private final void m12193k() {
        synchronized (this) {
            this.f10724f.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.azs

                /* renamed from: a */
                private final azt f10718a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10718a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f10718a.m12194j();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2849by
    /* renamed from: a */
    public final AbstractC2731a mo11519a(String str) {
        AbstractC2731a m13794a;
        synchronized (this) {
            m13794a = BinderC2734b.m13794a(mo12172a_(str));
        }
        return m13794a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2849by
    /* renamed from: a */
    public final void mo11523a() {
        synchronized (this) {
            if (!this.f10732n) {
                if (this.f10727i != null) {
                    this.f10727i.m12307b(this);
                    this.f10727i = null;
                }
                this.f10721c.clear();
                this.f10722d.removeAllViews();
                this.f10723e.removeAllViews();
                this.f10721c = null;
                this.f10722d = null;
                this.f10723e = null;
                this.f10725g = null;
                this.f10728j = null;
                this.f10732n = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2849by
    /* renamed from: a */
    public final void mo11522a(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            if (!this.f10732n) {
                Object m13795a = BinderC2734b.m13795a(abstractC2731a);
                if (!(m13795a instanceof aym)) {
                    C3556uu.m6745e("Not an instance of native engine. This is most likely a transient error");
                } else {
                    if (this.f10727i != null) {
                        this.f10727i.m12307b(this);
                    }
                    m12193k();
                    this.f10727i = (aym) m13795a;
                    this.f10727i.m12318a(this);
                    this.f10727i.m12304c(this.f10722d);
                    this.f10727i.m12302d(this.f10723e);
                    if (this.f10731m) {
                        this.f10727i.m12296m().m12290a(this.f10730l);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2849by
    /* renamed from: a */
    public final void mo11521a(AbstractC2731a abstractC2731a, int i) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2849by
    /* renamed from: a */
    public final void mo11520a(AbstractC2843bt abstractC2843bt) {
        synchronized (this) {
            if (!this.f10732n) {
                this.f10731m = true;
                this.f10730l = abstractC2843bt;
                if (this.f10727i != null) {
                    this.f10727i.m12296m().m12290a(abstractC2843bt);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: a */
    public final void mo12173a(String str, View view, boolean z) {
        synchronized (this) {
            if (!this.f10732n) {
                if (view == null) {
                    this.f10721c.remove(str);
                } else {
                    this.f10721c.put(str, new WeakReference<>(view));
                    if (!"1098".equals(str) && !"3011".equals(str)) {
                        if (C3622xf.m6837a(this.f10726h)) {
                            view.setOnTouchListener(this);
                        }
                        view.setClickable(true);
                        view.setOnClickListener(this);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2849by
    /* renamed from: a */
    public final void mo11518a(String str, AbstractC2731a abstractC2731a) {
        synchronized (this) {
            mo12173a(str, (View) BinderC2734b.m13795a(abstractC2731a), true);
        }
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: a_ */
    public final View mo12172a_(String str) {
        View view;
        synchronized (this) {
            if (this.f10732n) {
                view = null;
            } else {
                WeakReference<View> weakReference = this.f10721c.get(str);
                view = weakReference == null ? null : weakReference.get();
            }
        }
        return view;
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: b */
    public final FrameLayout mo12171b() {
        return this.f10723e;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2849by
    /* renamed from: b */
    public final void mo11517b(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            this.f10727i.m12322a((View) BinderC2734b.m13795a(abstractC2731a));
        }
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: c */
    public final /* synthetic */ View mo12170c() {
        return this.f10722d;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2849by
    /* renamed from: c */
    public final void mo11516c(AbstractC2731a abstractC2731a) {
        onTouch(this.f10722d, (MotionEvent) BinderC2734b.m13795a(abstractC2731a));
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: d */
    public final dtn mo12169d() {
        return this.f10728j;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2849by
    /* renamed from: d */
    public final void mo11515d(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            if (!this.f10732n) {
                this.f10729k = abstractC2731a;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: e */
    public final Map<String, WeakReference<View>> mo12168e() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f10721c;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: f */
    public final Map<String, WeakReference<View>> mo12167f() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f10721c;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: g */
    public final Map<String, WeakReference<View>> mo12166g() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: h */
    public final String mo12165h() {
        String str;
        synchronized (this) {
            str = this.f10720b;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.bam
    /* renamed from: i */
    public final AbstractC2731a mo12164i() {
        return this.f10729k;
    }

    /* renamed from: j */
    public final /* synthetic */ void m12194j() {
        if (this.f10725g == null) {
            this.f10725g = new View(this.f10722d.getContext());
            this.f10725g.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
        }
        if (this.f10722d != this.f10725g.getParent()) {
            this.f10722d.addView(this.f10725g);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this) {
            if (this.f10727i != null) {
                this.f10727i.m12310b();
                this.f10727i.m12320a(view, this.f10722d, mo12168e(), mo12167f(), false);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this) {
            if (this.f10727i != null) {
                this.f10727i.m12319a(this.f10722d, mo12168e(), mo12167f(), aym.m12308b(this.f10722d));
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this) {
            if (this.f10727i != null) {
                this.f10727i.m12319a(this.f10722d, mo12168e(), mo12167f(), aym.m12308b(this.f10722d));
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this) {
            if (this.f10727i != null) {
                this.f10727i.m12321a(view, motionEvent, this.f10722d);
            }
        }
        return false;
    }
}
