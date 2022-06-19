package com.explorestack.iab.utils;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.explorestack.iab.utils.i */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/i.class */
public abstract class AbstractC9594i<T extends View> {

    /* renamed from: a */
    protected T f32606a;

    /* renamed from: b */
    protected C9593h f32607b;

    /* renamed from: e */
    private final View.OnClickListener f32610e;

    /* renamed from: c */
    boolean f32608c = false;

    /* renamed from: f */
    private final Runnable f32611f = new Runnable() { // from class: com.explorestack.iab.utils.i.1
        @Override // java.lang.Runnable
        public final void run() {
            AbstractC9594i.this.f32608c = false;
            if (AbstractC9594i.this.f32606a == null || AbstractC9594i.this.f32607b == null) {
                return;
            }
            ViewPropertyAnimator listener = AbstractC9594i.this.f32606a.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(400L).setListener(AbstractC9594i.this.f32609d);
            if (Build.VERSION.SDK_INT < 16) {
                return;
            }
            listener.withLayer();
        }
    };

    /* renamed from: d */
    final Animator.AnimatorListener f32609d = new AnimatorListenerAdapter() { // from class: com.explorestack.iab.utils.i.2
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            super.onAnimationCancel(animator);
            animator.removeAllListeners();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            if (AbstractC9594i.this.f32606a != null) {
                AbstractC9594i.this.f32606a.setClickable(AbstractC9594i.this.f32606a.getAlpha() != BitmapDescriptorFactory.HUE_RED);
            }
        }
    };

    public AbstractC9594i(View.OnClickListener onClickListener) {
        this.f32610e = onClickListener;
    }

    /* renamed from: c */
    private static ViewGroup.MarginLayoutParams m24042c(Context context, C9593h c9593h) {
        int intValue = (c9593h.f32594l != null ? c9593h.f32594l.floatValue() == -1.0f ? Integer.valueOf(c9593h.f32594l.intValue()) : c9593h.f32594l.floatValue() == -2.0f ? Integer.valueOf(c9593h.f32594l.intValue()) : Integer.valueOf(Utils.m24117a(context, c9593h.f32594l.floatValue())) : -2).intValue();
        Integer num = -2;
        if (c9593h.f32595m != null) {
            num = c9593h.f32595m.floatValue() == -1.0f ? Integer.valueOf(c9593h.f32595m.intValue()) : c9593h.f32595m.floatValue() == -2.0f ? Integer.valueOf(c9593h.f32595m.intValue()) : Integer.valueOf(Utils.m24117a(context, c9593h.f32595m.floatValue()));
        }
        return new ViewGroup.MarginLayoutParams(intValue, num.intValue());
    }

    /* renamed from: a */
    protected abstract C9593h mo24036a(Context context, C9593h c9593h);

    /* renamed from: a */
    public final void m24047a() {
        if (m24043c()) {
            mo24037a(this.f32606a.getContext(), (Context) this.f32606a, this.f32607b);
        }
    }

    /* renamed from: a */
    public final void m24046a(int i) {
        T t = this.f32606a;
        if (t != null) {
            t.setVisibility(i);
        }
    }

    /* renamed from: a */
    public void mo24037a(Context context, T t, C9593h c9593h) {
    }

    /* renamed from: a */
    public final void m24045a(Context context, ViewGroup viewGroup, C9593h c9593h) {
        FrameLayout.LayoutParams layoutParams;
        C9593h c9593h2;
        C9593h m24068a = mo24036a(context, c9593h).m24068a(c9593h);
        if (!m24068a.m24056d().booleanValue()) {
            m24041d();
            return;
        }
        if (viewGroup instanceof FrameLayout) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(m24042c(context, m24068a));
            layoutParams2.gravity = m24068a.m24052f().intValue() | m24068a.m24054e().intValue();
            layoutParams = layoutParams2;
        } else if (!(viewGroup instanceof RelativeLayout)) {
            throw new IllegalArgumentException("Parent should be instance of FrameLayout or RelativeLayout");
        } else {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(m24042c(context, m24068a));
            m24068a.m24069a(layoutParams3);
            layoutParams = layoutParams3;
        }
        m24068a.m24070a(context, layoutParams);
        if (this.f32606a == null || (c9593h2 = this.f32607b) == null || (!TextUtils.equals(c9593h2.f32589g, m24068a.f32589g))) {
            T mo24035b = mo24035b(context, m24068a);
            this.f32606a = mo24035b;
            viewGroup.addView(mo24035b, layoutParams);
        } else {
            this.f32606a.setLayoutParams(layoutParams);
            this.f32606a.setVisibility(0);
        }
        this.f32606a.setAlpha(m24068a.m24051g().floatValue());
        m24068a.m24071a(context, this.f32606a);
        this.f32606a.setOnClickListener(this.f32610e);
        this.f32607b = m24068a;
        T t = this.f32606a;
        if (t instanceof AbstractC9592g) {
            ((AbstractC9592g) t).setStyle(m24068a);
        }
        mo24037a(context, (Context) this.f32606a, m24068a);
    }

    /* renamed from: b */
    abstract T mo24035b(Context context, C9593h c9593h);

    /* renamed from: b */
    public final void m24044b() {
        T t = this.f32606a;
        if (t != null) {
            t.bringToFront();
        }
    }

    /* renamed from: c */
    public final boolean m24043c() {
        return this.f32606a != null;
    }

    /* renamed from: d */
    public final void m24041d() {
        if (this.f32606a != null) {
            m24039f();
            Utils.m24104b(this.f32606a);
            this.f32606a = null;
            this.f32607b = null;
        }
    }

    /* renamed from: e */
    public final void m24040e() {
        C9593h c9593h;
        Float f;
        if (this.f32606a == null || this.f32607b == null) {
            return;
        }
        m24039f();
        if (this.f32608c || this.f32606a == null || (c9593h = this.f32607b) == null || (f = c9593h.f32591i) == null || f.floatValue() == BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        this.f32608c = true;
        this.f32606a.postDelayed(this.f32611f, f.floatValue() * 1000.0f);
    }

    /* renamed from: f */
    public final void m24039f() {
        this.f32608c = false;
        T t = this.f32606a;
        if (t == null || this.f32607b == null) {
            return;
        }
        t.animate().cancel();
        this.f32606a.removeCallbacks(this.f32611f);
        this.f32606a.setClickable(true);
        this.f32606a.setAlpha(this.f32607b.m24051g().floatValue());
    }
}
