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
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/i.class */
public abstract class i<T extends View> {

    /* renamed from: a  reason: collision with root package name */
    protected T f19188a;

    /* renamed from: b  reason: collision with root package name */
    protected h f19189b;
    private final View.OnClickListener e;

    /* renamed from: c  reason: collision with root package name */
    boolean f19190c = false;
    private final Runnable f = new Runnable() { // from class: com.explorestack.iab.utils.i.1
        @Override // java.lang.Runnable
        public final void run() {
            i.this.f19190c = false;
            if (i.this.f19188a != null && i.this.f19189b != null) {
                ViewPropertyAnimator listener = i.this.f19188a.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(400L).setListener(i.this.f19191d);
                if (Build.VERSION.SDK_INT >= 16) {
                    listener.withLayer();
                }
            }
        }
    };

    /* renamed from: d  reason: collision with root package name */
    final Animator.AnimatorListener f19191d = new AnimatorListenerAdapter() { // from class: com.explorestack.iab.utils.i.2
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            super.onAnimationCancel(animator);
            animator.removeAllListeners();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            if (i.this.f19188a != null) {
                i.this.f19188a.setClickable(i.this.f19188a.getAlpha() != BitmapDescriptorFactory.HUE_RED);
            }
        }
    };

    public i(View.OnClickListener onClickListener) {
        this.e = onClickListener;
    }

    private static ViewGroup.MarginLayoutParams c(Context context, h hVar) {
        int intValue = (hVar.l != null ? hVar.l.floatValue() == -1.0f ? Integer.valueOf(hVar.l.intValue()) : hVar.l.floatValue() == -2.0f ? Integer.valueOf(hVar.l.intValue()) : Integer.valueOf(Utils.a(context, hVar.l.floatValue())) : -2).intValue();
        Integer num = -2;
        if (hVar.m != null) {
            num = hVar.m.floatValue() == -1.0f ? Integer.valueOf(hVar.m.intValue()) : hVar.m.floatValue() == -2.0f ? Integer.valueOf(hVar.m.intValue()) : Integer.valueOf(Utils.a(context, hVar.m.floatValue()));
        }
        return new ViewGroup.MarginLayoutParams(intValue, num.intValue());
    }

    protected abstract h a(Context context, h hVar);

    public final void a() {
        if (c()) {
            a(this.f19188a.getContext(), (Context) this.f19188a, this.f19189b);
        }
    }

    public final void a(int i) {
        T t = this.f19188a;
        if (t != null) {
            t.setVisibility(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Context context, T t, h hVar) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(Context context, ViewGroup viewGroup, h hVar) {
        RelativeLayout.LayoutParams layoutParams;
        h hVar2;
        h a2 = a(context, hVar).a(hVar);
        if (!a2.d().booleanValue()) {
            d();
            return;
        }
        if (viewGroup instanceof FrameLayout) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(c(context, a2));
            layoutParams2.gravity = a2.f().intValue() | a2.e().intValue();
            layoutParams = layoutParams2;
        } else if (viewGroup instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(c(context, a2));
            a2.a(layoutParams3);
            layoutParams = layoutParams3;
        } else {
            throw new IllegalArgumentException("Parent should be instance of FrameLayout or RelativeLayout");
        }
        a2.a(context, layoutParams);
        if (this.f19188a == null || (hVar2 = this.f19189b) == null || (!TextUtils.equals(hVar2.g, a2.g))) {
            T b2 = b(context, a2);
            this.f19188a = b2;
            viewGroup.addView(b2, layoutParams);
        } else {
            this.f19188a.setLayoutParams(layoutParams);
            this.f19188a.setVisibility(0);
        }
        this.f19188a.setAlpha(a2.g().floatValue());
        a2.a(context, this.f19188a);
        this.f19188a.setOnClickListener(this.e);
        this.f19189b = a2;
        T t = this.f19188a;
        if (t instanceof g) {
            ((g) t).setStyle(a2);
        }
        a(context, (Context) this.f19188a, a2);
    }

    abstract T b(Context context, h hVar);

    public final void b() {
        T t = this.f19188a;
        if (t != null) {
            t.bringToFront();
        }
    }

    public final boolean c() {
        return this.f19188a != null;
    }

    public final void d() {
        if (this.f19188a != null) {
            f();
            Utils.b(this.f19188a);
            this.f19188a = null;
            this.f19189b = null;
        }
    }

    public final void e() {
        h hVar;
        Float f;
        if (this.f19188a != null && this.f19189b != null) {
            f();
            if (!this.f19190c && this.f19188a != null && (hVar = this.f19189b) != null && (f = hVar.i) != null && f.floatValue() != BitmapDescriptorFactory.HUE_RED) {
                this.f19190c = true;
                this.f19188a.postDelayed(this.f, f.floatValue() * 1000.0f);
            }
        }
    }

    public final void f() {
        this.f19190c = false;
        T t = this.f19188a;
        if (t != null && this.f19189b != null) {
            t.animate().cancel();
            this.f19188a.removeCallbacks(this.f);
            this.f19188a.setClickable(true);
            this.f19188a.setAlpha(this.f19189b.g().floatValue());
        }
    }
}
