package com.futuremind.recyclerviewfastscroll.p310a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.view.View;
import com.hbb20.C16330h;
/* renamed from: com.futuremind.recyclerviewfastscroll.a.e */
/* loaded from: classes3-dex2jar.jar:com/futuremind/recyclerviewfastscroll/a/e.class */
public final class C10576e {

    /* renamed from: a */
    protected final View f34322a;

    /* renamed from: b */
    protected AnimatorSet f34323b;

    /* renamed from: c */
    protected AnimatorSet f34324c;

    /* renamed from: d */
    private float f34325d;

    /* renamed from: e */
    private float f34326e;

    /* renamed from: com.futuremind.recyclerviewfastscroll.a.e$a */
    /* loaded from: classes3-dex2jar.jar:com/futuremind/recyclerviewfastscroll/a/e$a.class */
    public static abstract class AbstractC10578a<T extends C10576e> {

        /* renamed from: a */
        protected final View f34330a;

        /* renamed from: b */
        protected int f34331b = C16330h.C16331a.fastscroll__default_show;

        /* renamed from: c */
        protected int f34332c = C16330h.C16331a.fastscroll__default_hide;

        /* renamed from: d */
        protected int f34333d = 1000;

        /* renamed from: e */
        protected float f34334e = 0.5f;

        /* renamed from: f */
        protected float f34335f = 0.5f;

        public AbstractC10578a(View view) {
            this.f34330a = view;
        }

        /* renamed from: a */
        public final AbstractC10578a<T> m22629a() {
            this.f34334e = 1.0f;
            return this;
        }

        /* renamed from: b */
        public final AbstractC10578a<T> m22628b() {
            this.f34335f = 1.0f;
            return this;
        }

        /* renamed from: c */
        public abstract T mo22627c();
    }

    /* renamed from: com.futuremind.recyclerviewfastscroll.a.e$b */
    /* loaded from: classes3-dex2jar.jar:com/futuremind/recyclerviewfastscroll/a/e$b.class */
    public static final class C10579b extends AbstractC10578a<C10576e> {
        public C10579b(View view) {
            super(view);
        }

        @Override // com.futuremind.recyclerviewfastscroll.p310a.C10576e.AbstractC10578a
        /* renamed from: c */
        public final C10576e mo22627c() {
            return new C10576e(this.f34330a, this.f34331b, this.f34332c, this.f34334e, this.f34335f, this.f34333d);
        }
    }

    protected C10576e(final View view, int i, int i2, float f, float f2, int i3) {
        this.f34322a = view;
        this.f34325d = f;
        this.f34326e = f2;
        AnimatorSet animatorSet = (AnimatorSet) AnimatorInflater.loadAnimator(view.getContext(), i2);
        this.f34323b = animatorSet;
        animatorSet.setStartDelay(i3);
        this.f34323b.setTarget(view);
        AnimatorSet animatorSet2 = (AnimatorSet) AnimatorInflater.loadAnimator(view.getContext(), i);
        this.f34324c = animatorSet2;
        animatorSet2.setTarget(view);
        this.f34323b.addListener(new AnimatorListenerAdapter() { // from class: com.futuremind.recyclerviewfastscroll.a.e.1

            /* renamed from: a */
            boolean f34327a;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                this.f34327a = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (!this.f34327a) {
                    view.setVisibility(4);
                }
                this.f34327a = false;
            }
        });
        m22630c();
    }

    /* renamed from: c */
    private void m22630c() {
        View view = this.f34322a;
        view.setPivotX(this.f34325d * view.getMeasuredWidth());
        View view2 = this.f34322a;
        view2.setPivotY(this.f34326e * view2.getMeasuredHeight());
    }

    /* renamed from: a */
    public final void m22632a() {
        this.f34323b.cancel();
        if (this.f34322a.getVisibility() == 4) {
            this.f34322a.setVisibility(0);
            m22630c();
            this.f34324c.start();
        }
    }

    /* renamed from: b */
    public final void m22631b() {
        m22630c();
        this.f34323b.start();
    }
}
