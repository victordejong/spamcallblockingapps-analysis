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
import androidx.annotation.AnimRes;
import androidx.annotation.NonNull;
import androidx.core.p004os.CancellationSignal;
import androidx.core.view.OneShotPreDrawListener;
import androidx.fragment.C0308R;
import androidx.fragment.app.FragmentTransition;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentAnim.class */
public class FragmentAnim {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentAnim$AnimationOrAnimator.class */
    public static class AnimationOrAnimator {

        /* renamed from: a */
        public final Animation f3747a;

        /* renamed from: b */
        public final Animator f3748b;

        AnimationOrAnimator(Animator animator) {
            this.f3747a = null;
            this.f3748b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }

        AnimationOrAnimator(Animation animation) {
            this.f3747a = animation;
            this.f3748b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentAnim$EndViewTransitionAnimation.class */
    public static class EndViewTransitionAnimation extends AnimationSet implements Runnable {

        /* renamed from: f */
        private final ViewGroup f3749f;

        /* renamed from: g */
        private final View f3750g;

        /* renamed from: h */
        private boolean f3751h;

        /* renamed from: i */
        private boolean f3752i;

        /* renamed from: j */
        private boolean f3753j = true;

        EndViewTransitionAnimation(@NonNull Animation animation, @NonNull ViewGroup viewGroup, @NonNull View view) {
            super(false);
            this.f3749f = viewGroup;
            this.f3750g = view;
            addAnimation(animation);
            this.f3749f.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, @NonNull Transformation transformation) {
            this.f3753j = true;
            if (this.f3751h) {
                return !this.f3752i;
            }
            if (super.getTransformation(j, transformation)) {
                return true;
            }
            this.f3751h = true;
            OneShotPreDrawListener.m19249a(this.f3749f, this);
            return true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, @NonNull Transformation transformation, float f) {
            this.f3753j = true;
            if (this.f3751h) {
                return !this.f3752i;
            }
            if (super.getTransformation(j, transformation, f)) {
                return true;
            }
            this.f3751h = true;
            OneShotPreDrawListener.m19249a(this.f3749f, this);
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f3751h || !this.f3753j) {
                this.f3749f.endViewTransition(this.f3750g);
                this.f3752i = true;
                return;
            }
            this.f3753j = false;
            this.f3749f.post(this);
        }
    }

    private FragmentAnim() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m18499a(@NonNull final Fragment fragment, @NonNull AnimationOrAnimator animationOrAnimator, @NonNull final FragmentTransition.Callback callback) {
        final View view = fragment.mView;
        final ViewGroup viewGroup = fragment.mContainer;
        viewGroup.startViewTransition(view);
        final CancellationSignal cancellationSignal = new CancellationSignal();
        cancellationSignal.m19446d(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.FragmentAnim.1
            @Override // androidx.core.p004os.CancellationSignal.OnCancelListener
            public void onCancel() {
                if (Fragment.this.getAnimatingAway() != null) {
                    View animatingAway = Fragment.this.getAnimatingAway();
                    Fragment.this.setAnimatingAway(null);
                    animatingAway.clearAnimation();
                }
                Fragment.this.setAnimator(null);
            }
        });
        callback.mo18296b(fragment, cancellationSignal);
        if (animationOrAnimator.f3747a != null) {
            EndViewTransitionAnimation endViewTransitionAnimation = new EndViewTransitionAnimation(animationOrAnimator.f3747a, viewGroup, view);
            fragment.setAnimatingAway(fragment.mView);
            endViewTransitionAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.fragment.app.FragmentAnim.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    viewGroup.post(new Runnable() { // from class: androidx.fragment.app.FragmentAnim.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (fragment.getAnimatingAway() != null) {
                                fragment.setAnimatingAway(null);
                                animationAnimation$AnimationListenerC03222 r0 = animationAnimation$AnimationListenerC03222.this;
                                callback.mo18297a(fragment, cancellationSignal);
                            }
                        }
                    });
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            });
            fragment.mView.startAnimation(endViewTransitionAnimation);
            return;
        }
        Animator animator = animationOrAnimator.f3748b;
        fragment.setAnimator(animator);
        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.FragmentAnim.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                viewGroup.endViewTransition(view);
                Animator animator3 = fragment.getAnimator();
                fragment.setAnimator(null);
                if (animator3 != null && viewGroup.indexOfChild(view) < 0) {
                    callback.mo18297a(fragment, cancellationSignal);
                }
            }
        });
        animator.setTarget(fragment.mView);
        animator.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static AnimationOrAnimator m18498b(@NonNull Context context, @NonNull FragmentContainer fragmentContainer, @NonNull Fragment fragment, boolean z) {
        int c;
        int nextTransition = fragment.getNextTransition();
        int nextAnim = fragment.getNextAnim();
        fragment.setNextAnim(0);
        View b = fragmentContainer.mo18466b(fragment.mContainerId);
        if (!(b == null || b.getTag(C0308R.C0311id.visible_removing_fragment_view_tag) == null)) {
            b.setTag(C0308R.C0311id.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && viewGroup.getLayoutTransition() != null) {
            return null;
        }
        Animation onCreateAnimation = fragment.onCreateAnimation(nextTransition, z, nextAnim);
        if (onCreateAnimation != null) {
            return new AnimationOrAnimator(onCreateAnimation);
        }
        Animator onCreateAnimator = fragment.onCreateAnimator(nextTransition, z, nextAnim);
        if (onCreateAnimator != null) {
            return new AnimationOrAnimator(onCreateAnimator);
        }
        if (nextAnim != 0) {
            boolean equals = "anim".equals(context.getResources().getResourceTypeName(nextAnim));
            boolean z2 = false;
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(context, nextAnim);
                    if (loadAnimation != null) {
                        return new AnimationOrAnimator(loadAnimation);
                    }
                    z2 = true;
                } catch (Resources.NotFoundException e) {
                    throw e;
                } catch (RuntimeException e2) {
                    z2 = false;
                }
            }
            if (!z2) {
                try {
                    Animator loadAnimator = AnimatorInflater.loadAnimator(context, nextAnim);
                    if (loadAnimator != null) {
                        return new AnimationOrAnimator(loadAnimator);
                    }
                } catch (RuntimeException e3) {
                    if (!equals) {
                        Animation loadAnimation2 = AnimationUtils.loadAnimation(context, nextAnim);
                        if (loadAnimation2 != null) {
                            return new AnimationOrAnimator(loadAnimation2);
                        }
                    } else {
                        throw e3;
                    }
                }
            }
        }
        if (nextTransition != 0 && (c = m18497c(nextTransition, z)) >= 0) {
            return new AnimationOrAnimator(AnimationUtils.loadAnimation(context, c));
        }
        return null;
    }

    @AnimRes
    /* renamed from: c */
    private static int m18497c(int i, boolean z) {
        return i != 4097 ? i != 4099 ? i != 8194 ? -1 : z ? C0308R.anim.fragment_close_enter : C0308R.anim.fragment_close_exit : z ? C0308R.anim.fragment_fade_enter : C0308R.anim.fragment_fade_exit : z ? C0308R.anim.fragment_open_enter : C0308R.anim.fragment_open_exit;
    }
}
