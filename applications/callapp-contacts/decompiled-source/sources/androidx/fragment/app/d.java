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
import androidx.core.os.a;
import androidx.core.view.s;
import androidx.fragment.a;
import androidx.fragment.app.t;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/d.class */
public final class d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Animation f2281a;

        /* renamed from: b  reason: collision with root package name */
        public final Animator f2282b;

        a(Animator animator) {
            this.f2281a = null;
            this.f2282b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }

        a(Animation animation) {
            this.f2281a = animation;
            this.f2282b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/d$b.class */
    public static final class b extends AnimationSet implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final ViewGroup f2283a;

        /* renamed from: b  reason: collision with root package name */
        private final View f2284b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f2285c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f2286d;
        private boolean e = true;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f2283a = viewGroup;
            this.f2284b = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public final boolean getTransformation(long j, Transformation transformation) {
            this.e = true;
            if (this.f2285c) {
                return !this.f2286d;
            }
            if (super.getTransformation(j, transformation)) {
                return true;
            }
            this.f2285c = true;
            s.a(this.f2283a, this);
            return true;
        }

        @Override // android.view.animation.Animation
        public final boolean getTransformation(long j, Transformation transformation, float f) {
            this.e = true;
            if (this.f2285c) {
                return !this.f2286d;
            }
            if (super.getTransformation(j, transformation, f)) {
                return true;
            }
            this.f2285c = true;
            s.a(this.f2283a, this);
            return true;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f2285c || !this.e) {
                this.f2283a.endViewTransition(this.f2284b);
                this.f2286d = true;
                return;
            }
            this.e = false;
            this.f2283a.post(this);
        }
    }

    private d() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(Context context, Fragment fragment, boolean z, boolean z2) {
        int nextTransition = fragment.getNextTransition();
        int popEnterAnim = z2 ? z ? fragment.getPopEnterAnim() : fragment.getPopExitAnim() : z ? fragment.getEnterAnim() : fragment.getExitAnim();
        fragment.setAnimations(0, 0, 0, 0);
        if (!(fragment.mContainer == null || fragment.mContainer.getTag(a.b.visible_removing_fragment_view_tag) == null)) {
            fragment.mContainer.setTag(a.b.visible_removing_fragment_view_tag, null);
        }
        if (fragment.mContainer != null && fragment.mContainer.getLayoutTransition() != null) {
            return null;
        }
        Animation onCreateAnimation = fragment.onCreateAnimation(nextTransition, z, popEnterAnim);
        if (onCreateAnimation != null) {
            return new a(onCreateAnimation);
        }
        Animator onCreateAnimator = fragment.onCreateAnimator(nextTransition, z, popEnterAnim);
        if (onCreateAnimator != null) {
            return new a(onCreateAnimator);
        }
        int i = popEnterAnim;
        if (popEnterAnim == 0) {
            i = popEnterAnim;
            if (nextTransition != 0) {
                if (nextTransition == 4097) {
                    i = z ? a.C0062a.fragment_open_enter : a.C0062a.fragment_open_exit;
                } else if (nextTransition == 4099) {
                    i = z ? a.C0062a.fragment_fade_enter : a.C0062a.fragment_fade_exit;
                } else if (nextTransition != 8194) {
                    i = -1;
                } else {
                    i = z ? a.C0062a.fragment_close_enter : a.C0062a.fragment_close_exit;
                }
            }
        }
        if (i == 0) {
            return null;
        }
        boolean equals = "anim".equals(context.getResources().getResourceTypeName(i));
        boolean z3 = false;
        if (equals) {
            try {
                Animation loadAnimation = AnimationUtils.loadAnimation(context, i);
                if (loadAnimation != null) {
                    return new a(loadAnimation);
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
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (loadAnimator != null) {
                return new a(loadAnimator);
            }
            return null;
        } catch (RuntimeException e3) {
            if (!equals) {
                Animation loadAnimation2 = AnimationUtils.loadAnimation(context, i);
                if (loadAnimation2 != null) {
                    return new a(loadAnimation2);
                }
                return null;
            }
            throw e3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(final Fragment fragment, a aVar, final t.a aVar2) {
        final View view = fragment.mView;
        final ViewGroup viewGroup = fragment.mContainer;
        viewGroup.startViewTransition(view);
        final androidx.core.os.a aVar3 = new androidx.core.os.a();
        aVar3.a(new a.AbstractC0050a() { // from class: androidx.fragment.app.d.1
            @Override // androidx.core.os.a.AbstractC0050a
            public final void a() {
                if (Fragment.this.getAnimatingAway() != null) {
                    View animatingAway = Fragment.this.getAnimatingAway();
                    Fragment.this.setAnimatingAway(null);
                    animatingAway.clearAnimation();
                }
                Fragment.this.setAnimator(null);
            }
        });
        aVar2.a(fragment, aVar3);
        if (aVar.f2281a != null) {
            b bVar = new b(aVar.f2281a, viewGroup, view);
            fragment.setAnimatingAway(fragment.mView);
            bVar.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.fragment.app.d.2
                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationEnd(Animation animation) {
                    viewGroup.post(new Runnable() { // from class: androidx.fragment.app.d.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (fragment.getAnimatingAway() != null) {
                                fragment.setAnimatingAway(null);
                                aVar2.b(fragment, aVar3);
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
            fragment.mView.startAnimation(bVar);
            return;
        }
        Animator animator = aVar.f2282b;
        fragment.setAnimator(aVar.f2282b);
        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.d.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator2) {
                viewGroup.endViewTransition(view);
                Animator animator3 = fragment.getAnimator();
                fragment.setAnimator(null);
                if (animator3 != null && viewGroup.indexOfChild(view) < 0) {
                    aVar2.b(fragment, aVar3);
                }
            }
        });
        animator.setTarget(fragment.mView);
        animator.start();
    }
}
