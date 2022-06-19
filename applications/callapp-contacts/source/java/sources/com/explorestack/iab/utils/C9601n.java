package com.explorestack.iab.utils;

import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.explorestack.iab.utils.n */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/n.class */
public final class C9601n {

    /* renamed from: a */
    public final View f32615a;

    /* renamed from: b */
    final AbstractC9604a f32616b;

    /* renamed from: f */
    public final ViewTreeObserver.OnGlobalLayoutListener f32620f;

    /* renamed from: g */
    private boolean f32621g = false;

    /* renamed from: c */
    public float f32617c = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: d */
    public long f32618d = 0;

    /* renamed from: e */
    long f32619e = 0;

    /* renamed from: h */
    private final Runnable f32622h = new Runnable() { // from class: com.explorestack.iab.utils.n.2
        /* JADX WARN: Type inference failed for: r0v2, types: [long] */
        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        @Override // java.lang.Runnable
        public final void run() {
            ?? r0 = C9601n.this.f32619e;
            char c = r0;
            if (C9601n.this.f32615a.isShown()) {
                c = Math.min(C9601n.this.f32618d, r0 + 16);
                C9601n.this.f32619e = c;
                C9601n.this.f32616b.mo24029a((((float) C9601n.this.f32619e) * 100.0f) / ((float) C9601n.this.f32618d), C9601n.this.f32619e, C9601n.this.f32618d);
            }
            if (c >= C9601n.this.f32618d) {
                C9601n.this.f32616b.mo24030a();
            } else {
                C9601n.this.f32615a.postDelayed(this, 16L);
            }
        }
    };

    /* renamed from: com.explorestack.iab.utils.n$a */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/n$a.class */
    public interface AbstractC9604a {
        /* renamed from: a */
        void mo24030a();

        /* renamed from: a */
        void mo24029a(float f, long j, long j2);
    }

    public C9601n(View view, AbstractC9604a abstractC9604a) {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.explorestack.iab.utils.n.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                C9601n.this.m24032c();
            }
        };
        this.f32620f = onGlobalLayoutListener;
        this.f32615a = view;
        this.f32616b = abstractC9604a;
        view.getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
        m24032c();
    }

    /* renamed from: d */
    private boolean m24031d() {
        long j = this.f32618d;
        return j != 0 && this.f32619e < j;
    }

    /* renamed from: a */
    public final void m24034a() {
        if (!this.f32615a.isShown() || this.f32618d == 0) {
            return;
        }
        this.f32615a.postDelayed(this.f32622h, 16L);
    }

    /* renamed from: b */
    public final void m24033b() {
        this.f32615a.removeCallbacks(this.f32622h);
    }

    /* renamed from: c */
    final void m24032c() {
        boolean isShown = this.f32615a.isShown();
        if (this.f32621g == isShown) {
            return;
        }
        this.f32621g = isShown;
        if (!isShown) {
            m24033b();
        } else if (!m24031d()) {
        } else {
            m24034a();
        }
    }
}
