package com.futuremind.recyclerviewfastscroll.a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.view.View;
import com.hbb20.h;
/* loaded from: classes3-dex2jar.jar:com/futuremind/recyclerviewfastscroll/a/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    protected final View f20251a;

    /* renamed from: b  reason: collision with root package name */
    protected AnimatorSet f20252b;

    /* renamed from: c  reason: collision with root package name */
    protected AnimatorSet f20253c;

    /* renamed from: d  reason: collision with root package name */
    private float f20254d;
    private float e;

    /* loaded from: classes3-dex2jar.jar:com/futuremind/recyclerviewfastscroll/a/e$a.class */
    public static abstract class a<T extends e> {

        /* renamed from: a  reason: collision with root package name */
        protected final View f20258a;

        /* renamed from: b  reason: collision with root package name */
        protected int f20259b = h.a.fastscroll__default_show;

        /* renamed from: c  reason: collision with root package name */
        protected int f20260c = h.a.fastscroll__default_hide;

        /* renamed from: d  reason: collision with root package name */
        protected int f20261d = 1000;
        protected float e = 0.5f;
        protected float f = 0.5f;

        public a(View view) {
            this.f20258a = view;
        }

        public final a<T> a() {
            this.e = 1.0f;
            return this;
        }

        public final a<T> b() {
            this.f = 1.0f;
            return this;
        }

        public abstract T c();
    }

    /* loaded from: classes3-dex2jar.jar:com/futuremind/recyclerviewfastscroll/a/e$b.class */
    public static final class b extends a<e> {
        public b(View view) {
            super(view);
        }

        @Override // com.futuremind.recyclerviewfastscroll.a.e.a
        public final e c() {
            return new e(this.f20258a, this.f20259b, this.f20260c, this.e, this.f, this.f20261d);
        }
    }

    protected e(final View view, int i, int i2, float f, float f2, int i3) {
        this.f20251a = view;
        this.f20254d = f;
        this.e = f2;
        AnimatorSet animatorSet = (AnimatorSet) AnimatorInflater.loadAnimator(view.getContext(), i2);
        this.f20252b = animatorSet;
        animatorSet.setStartDelay(i3);
        this.f20252b.setTarget(view);
        AnimatorSet animatorSet2 = (AnimatorSet) AnimatorInflater.loadAnimator(view.getContext(), i);
        this.f20253c = animatorSet2;
        animatorSet2.setTarget(view);
        this.f20252b.addListener(new AnimatorListenerAdapter() { // from class: com.futuremind.recyclerviewfastscroll.a.e.1

            /* renamed from: a  reason: collision with root package name */
            boolean f20255a;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                this.f20255a = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (!this.f20255a) {
                    view.setVisibility(4);
                }
                this.f20255a = false;
            }
        });
        c();
    }

    private void c() {
        View view = this.f20251a;
        view.setPivotX(this.f20254d * view.getMeasuredWidth());
        View view2 = this.f20251a;
        view2.setPivotY(this.e * view2.getMeasuredHeight());
    }

    public final void a() {
        this.f20252b.cancel();
        if (this.f20251a.getVisibility() == 4) {
            this.f20251a.setVisibility(0);
            c();
            this.f20253c.start();
        }
    }

    public final void b() {
        c();
        this.f20252b.start();
    }
}
