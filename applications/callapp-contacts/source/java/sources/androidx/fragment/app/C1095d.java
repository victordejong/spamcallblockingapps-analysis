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
import androidx.core.p037os.C0856a;
import androidx.core.view.View$OnAttachStateChangeListenerC0923s;
import androidx.fragment.C1028a;
import androidx.fragment.app.C1123t;
/* renamed from: androidx.fragment.app.d */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/d.class */
public final class C1095d {

    /* renamed from: androidx.fragment.app.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/d$a.class */
    public static final class C1100a {

        /* renamed from: a */
        public final Animation f4349a;

        /* renamed from: b */
        public final Animator f4350b;

        C1100a(Animator animator) {
            this.f4349a = null;
            this.f4350b = animator;
            if (animator != null) {
                return;
            }
            throw new IllegalStateException("Animator cannot be null");
        }

        C1100a(Animation animation) {
            this.f4349a = animation;
            this.f4350b = null;
            if (animation != null) {
                return;
            }
            throw new IllegalStateException("Animation cannot be null");
        }
    }

    /* renamed from: androidx.fragment.app.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/d$b.class */
    public static final class RunnableC1101b extends AnimationSet implements Runnable {

        /* renamed from: a */
        private final ViewGroup f4351a;

        /* renamed from: b */
        private final View f4352b;

        /* renamed from: c */
        private boolean f4353c;

        /* renamed from: d */
        private boolean f4354d;

        /* renamed from: e */
        private boolean f4355e = true;

        public RunnableC1101b(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f4351a = viewGroup;
            this.f4352b = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public final boolean getTransformation(long j, Transformation transformation) {
            this.f4355e = true;
            if (this.f4353c) {
                return !this.f4354d;
            } else if (super.getTransformation(j, transformation)) {
                return true;
            } else {
                this.f4353c = true;
                View$OnAttachStateChangeListenerC0923s.m44160a(this.f4351a, this);
                return true;
            }
        }

        @Override // android.view.animation.Animation
        public final boolean getTransformation(long j, Transformation transformation, float f) {
            this.f4355e = true;
            if (this.f4353c) {
                return !this.f4354d;
            } else if (super.getTransformation(j, transformation, f)) {
                return true;
            } else {
                this.f4353c = true;
                View$OnAttachStateChangeListenerC0923s.m44160a(this.f4351a, this);
                return true;
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f4353c || !this.f4355e) {
                this.f4351a.endViewTransition(this.f4352b);
                this.f4354d = true;
                return;
            }
            this.f4355e = false;
            this.f4351a.post(this);
        }
    }

    private C1095d() {
    }

    /* renamed from: a */
    public static C1100a m43623a(Context context, Fragment fragment, boolean z, boolean z2) {
        int i;
        int nextTransition = fragment.getNextTransition();
        int popEnterAnim = z2 ? z ? fragment.getPopEnterAnim() : fragment.getPopExitAnim() : z ? fragment.getEnterAnim() : fragment.getExitAnim();
        fragment.setAnimations(0, 0, 0, 0);
        if (fragment.mContainer != null && fragment.mContainer.getTag(C1028a.C1030b.visible_removing_fragment_view_tag) != null) {
            fragment.mContainer.setTag(C1028a.C1030b.visible_removing_fragment_view_tag, null);
        }
        if (fragment.mContainer == null || fragment.mContainer.getLayoutTransition() == null) {
            Animation onCreateAnimation = fragment.onCreateAnimation(nextTransition, z, popEnterAnim);
            if (onCreateAnimation != null) {
                return new C1100a(onCreateAnimation);
            }
            Animator onCreateAnimator = fragment.onCreateAnimator(nextTransition, z, popEnterAnim);
            if (onCreateAnimator != null) {
                return new C1100a(onCreateAnimator);
            }
            int i2 = popEnterAnim;
            if (popEnterAnim == 0) {
                i2 = popEnterAnim;
                if (nextTransition != 0) {
                    if (nextTransition == 4097) {
                        i = z ? C1028a.C1029a.fragment_open_enter : C1028a.C1029a.fragment_open_exit;
                    } else if (nextTransition == 4099) {
                        i = z ? C1028a.C1029a.fragment_fade_enter : C1028a.C1029a.fragment_fade_exit;
                    } else if (nextTransition != 8194) {
                        i2 = -1;
                    } else {
                        i = z ? C1028a.C1029a.fragment_close_enter : C1028a.C1029a.fragment_close_exit;
                    }
                    i2 = i;
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
                        return new C1100a(loadAnimation);
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
                return new C1100a(loadAnimator);
            } catch (RuntimeException e3) {
                if (equals) {
                    throw e3;
                }
                Animation loadAnimation2 = AnimationUtils.loadAnimation(context, i2);
                if (loadAnimation2 == null) {
                    return null;
                }
                return new C1100a(loadAnimation2);
            }
        }
        return null;
    }

    /* renamed from: a */
    public static void m43622a(final Fragment fragment, C1100a c1100a, final C1123t.AbstractC1130a abstractC1130a) {
        final View view = fragment.mView;
        final ViewGroup viewGroup = fragment.mContainer;
        viewGroup.startViewTransition(view);
        final C0856a c0856a = new C0856a();
        c0856a.m44302a(new C0856a.AbstractC0857a() { // from class: androidx.fragment.app.d.1
            @Override // androidx.core.p037os.C0856a.AbstractC0857a
            /* renamed from: a */
            public final void mo39700a() {
                if (fragment.getAnimatingAway() != null) {
                    View animatingAway = fragment.getAnimatingAway();
                    fragment.setAnimatingAway(null);
                    animatingAway.clearAnimation();
                }
                fragment.setAnimator(null);
            }
        });
        abstractC1130a.mo43502a(fragment, c0856a);
        if (c1100a.f4349a != null) {
            RunnableC1101b runnableC1101b = new RunnableC1101b(c1100a.f4349a, viewGroup, view);
            fragment.setAnimatingAway(fragment.mView);
            runnableC1101b.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.fragment.app.d.2
                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationEnd(Animation animation) {
                    viewGroup.post(new Runnable() { // from class: androidx.fragment.app.d.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (fragment.getAnimatingAway() != null) {
                                fragment.setAnimatingAway(null);
                                abstractC1130a.mo43501b(fragment, c0856a);
                            }
                        }
                    });
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationStart(Animation animation) {
                }
            });
            fragment.mView.startAnimation(runnableC1101b);
            return;
        }
        Animator animator = c1100a.f4350b;
        fragment.setAnimator(c1100a.f4350b);
        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.d.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator2) {
                viewGroup.endViewTransition(view);
                Animator animator3 = fragment.getAnimator();
                fragment.setAnimator(null);
                if (animator3 == null || viewGroup.indexOfChild(view) >= 0) {
                    return;
                }
                abstractC1130a.mo43501b(fragment, c0856a);
            }
        });
        animator.setTarget(fragment.mView);
        animator.start();
    }
}
