package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import androidx.core.p008os.C0623b;
import androidx.fragment.app.C0756t;
import p020b.p041h.p050l.ViewTreeObserver$OnPreDrawListenerC1676t;
import p020b.p061m.C1750a;
import p020b.p061m.C1751b;
/* renamed from: androidx.fragment.app.d */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/d.class */
public class C0728d {

    /* renamed from: androidx.fragment.app.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/d$a.class */
    public class C0729a implements C0623b.AbstractC0624a {

        /* renamed from: a */
        final /* synthetic */ Fragment f3485a;

        C0729a(Fragment fragment) {
            this.f3485a = fragment;
        }

        @Override // androidx.core.p008os.C0623b.AbstractC0624a
        /* renamed from: a */
        public void mo32626a() {
            if (this.f3485a.m32889x() != null) {
                View m32889x = this.f3485a.m32889x();
                this.f3485a.m32977I1(null);
                m32889x.clearAnimation();
            }
            this.f3485a.m32973K1(null);
        }
    }

    /* renamed from: androidx.fragment.app.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/d$b.class */
    public class animationAnimation$AnimationListenerC0730b implements Animation.AnimationListener {

        /* renamed from: a */
        final /* synthetic */ ViewGroup f3486a;

        /* renamed from: b */
        final /* synthetic */ Fragment f3487b;

        /* renamed from: c */
        final /* synthetic */ C0756t.AbstractC0763g f3488c;

        /* renamed from: d */
        final /* synthetic */ C0623b f3489d;

        /* renamed from: androidx.fragment.app.d$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/d$b$a.class */
        class RunnableC0731a implements Runnable {
            RunnableC0731a() {
                animationAnimation$AnimationListenerC0730b.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (animationAnimation$AnimationListenerC0730b.this.f3487b.m32889x() != null) {
                    animationAnimation$AnimationListenerC0730b.this.f3487b.m32977I1(null);
                    animationAnimation$AnimationListenerC0730b animationanimation_animationlistenerc0730b = animationAnimation$AnimationListenerC0730b.this;
                    animationanimation_animationlistenerc0730b.f3488c.mo32463a(animationanimation_animationlistenerc0730b.f3487b, animationanimation_animationlistenerc0730b.f3489d);
                }
            }
        }

        animationAnimation$AnimationListenerC0730b(ViewGroup viewGroup, Fragment fragment, C0756t.AbstractC0763g abstractC0763g, C0623b c0623b) {
            this.f3486a = viewGroup;
            this.f3487b = fragment;
            this.f3488c = abstractC0763g;
            this.f3489d = c0623b;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f3486a.post(new RunnableC0731a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: androidx.fragment.app.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/d$c.class */
    public class C0732c extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ ViewGroup f3491a;

        /* renamed from: b */
        final /* synthetic */ View f3492b;

        /* renamed from: c */
        final /* synthetic */ Fragment f3493c;

        /* renamed from: d */
        final /* synthetic */ C0756t.AbstractC0763g f3494d;

        /* renamed from: e */
        final /* synthetic */ C0623b f3495e;

        C0732c(ViewGroup viewGroup, View view, Fragment fragment, C0756t.AbstractC0763g abstractC0763g, C0623b c0623b) {
            this.f3491a = viewGroup;
            this.f3492b = view;
            this.f3493c = fragment;
            this.f3494d = abstractC0763g;
            this.f3495e = c0623b;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f3491a.endViewTransition(this.f3492b);
            Animator m32886y = this.f3493c.m32886y();
            this.f3493c.m32973K1(null);
            if (m32886y == null || this.f3491a.indexOfChild(this.f3492b) >= 0) {
                return;
            }
            this.f3494d.mo32463a(this.f3493c, this.f3495e);
        }
    }

    /* renamed from: androidx.fragment.app.d$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/d$d.class */
    public static class C0733d {

        /* renamed from: a */
        public final Animation f3496a;

        /* renamed from: b */
        public final Animator f3497b;

        C0733d(Animator animator) {
            this.f3496a = null;
            this.f3497b = animator;
            if (animator != null) {
                return;
            }
            throw new IllegalStateException("Animator cannot be null");
        }

        C0733d(Animation animation) {
            this.f3496a = animation;
            this.f3497b = null;
            if (animation != null) {
                return;
            }
            throw new IllegalStateException("Animation cannot be null");
        }
    }

    /* renamed from: androidx.fragment.app.d$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/d$e.class */
    public static class RunnableC0734e extends AnimationSet implements Runnable {

        /* renamed from: d */
        private final ViewGroup f3498d;

        /* renamed from: e */
        private final View f3499e;

        /* renamed from: f */
        private boolean f3500f;

        /* renamed from: g */
        private boolean f3501g;

        /* renamed from: h */
        private boolean f3502h = true;

        public RunnableC0734e(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f3498d = viewGroup;
            this.f3499e = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation) {
            this.f3502h = true;
            if (this.f3500f) {
                return !this.f3501g;
            }
            if (super.getTransformation(j, transformation)) {
                return true;
            }
            this.f3500f = true;
            ViewTreeObserver$OnPreDrawListenerC1676t.m29354a(this.f3498d, this);
            return true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation, float f) {
            this.f3502h = true;
            if (this.f3500f) {
                return !this.f3501g;
            }
            if (super.getTransformation(j, transformation, f)) {
                return true;
            }
            this.f3500f = true;
            ViewTreeObserver$OnPreDrawListenerC1676t.m29354a(this.f3498d, this);
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f3500f || !this.f3502h) {
                this.f3498d.endViewTransition(this.f3499e);
                this.f3501g = true;
                return;
            }
            this.f3502h = false;
            this.f3498d.post(this);
        }
    }

    /* renamed from: a */
    public static void m32630a(Fragment fragment, C0733d c0733d, C0756t.AbstractC0763g abstractC0763g) {
        View view = fragment.f3201L;
        ViewGroup viewGroup = fragment.f3200K;
        viewGroup.startViewTransition(view);
        C0623b c0623b = new C0623b();
        c0623b.m33197c(new C0729a(fragment));
        abstractC0763g.mo32462b(fragment, c0623b);
        if (c0733d.f3496a != null) {
            RunnableC0734e runnableC0734e = new RunnableC0734e(c0733d.f3496a, viewGroup, view);
            fragment.m32977I1(fragment.f3201L);
            runnableC0734e.setAnimationListener(new animationAnimation$AnimationListenerC0730b(viewGroup, fragment, abstractC0763g, c0623b));
            fragment.f3201L.startAnimation(runnableC0734e);
            return;
        }
        Animator animator = c0733d.f3497b;
        fragment.m32973K1(animator);
        animator.addListener(new C0732c(viewGroup, view, fragment, abstractC0763g, c0623b));
        animator.setTarget(fragment.f3201L);
        animator.start();
    }

    /* renamed from: b */
    private static int m32629b(Fragment fragment, boolean z, boolean z2) {
        return z2 ? z ? fragment.m32951T() : fragment.m32949U() : z ? fragment.m32994C() : fragment.m32986F();
    }

    /* renamed from: c */
    public static C0733d m32628c(Context context, Fragment fragment, boolean z, boolean z2) {
        int m32963P = fragment.m32963P();
        int m32629b = m32629b(fragment, z, z2);
        fragment.m32975J1(0, 0, 0, 0);
        ViewGroup viewGroup = fragment.f3200K;
        if (viewGroup != null) {
            int i = C1751b.visible_removing_fragment_view_tag;
            if (viewGroup.getTag(i) != null) {
                fragment.f3200K.setTag(i, null);
            }
        }
        ViewGroup viewGroup2 = fragment.f3200K;
        if (viewGroup2 == null || viewGroup2.getLayoutTransition() == null) {
            Animation m32993C0 = fragment.m32993C0(m32963P, z, m32629b);
            if (m32993C0 != null) {
                return new C0733d(m32993C0);
            }
            Animator m32988E0 = fragment.m32988E0(m32963P, z, m32629b);
            if (m32988E0 != null) {
                return new C0733d(m32988E0);
            }
            int i2 = m32629b;
            if (m32629b == 0) {
                i2 = m32629b;
                if (m32963P != 0) {
                    i2 = m32627d(m32963P, z);
                }
            }
            if (i2 == 0) {
                return null;
            }
            boolean equals = "anim".equals(context.getResources().getResourceTypeName(i2));
            boolean z3 = false;
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(context, i2);
                    if (loadAnimation != null) {
                        return new C0733d(loadAnimation);
                    }
                    z3 = true;
                } catch (Resources.NotFoundException e) {
                    throw e;
                } catch (RuntimeException e2) {
                    z3 = false;
                }
            }
            if (z3) {
                return null;
            }
            try {
                Animator loadAnimator = AnimatorInflater.loadAnimator(context, i2);
                if (loadAnimator == null) {
                    return null;
                }
                return new C0733d(loadAnimator);
            } catch (RuntimeException e3) {
                if (equals) {
                    throw e3;
                }
                Animation loadAnimation2 = AnimationUtils.loadAnimation(context, i2);
                if (loadAnimation2 == null) {
                    return null;
                }
                return new C0733d(loadAnimation2);
            }
        }
        return null;
    }

    /* renamed from: d */
    private static int m32627d(int i, boolean z) {
        return i != 4097 ? i != 4099 ? i != 8194 ? -1 : z ? C1750a.fragment_close_enter : C1750a.fragment_close_exit : z ? C1750a.fragment_fade_enter : C1750a.fragment_fade_exit : z ? C1750a.fragment_open_enter : C1750a.fragment_open_exit;
    }
}
