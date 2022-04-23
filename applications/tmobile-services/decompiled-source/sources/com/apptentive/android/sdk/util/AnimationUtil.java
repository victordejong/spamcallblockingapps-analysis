package com.apptentive.android.sdk.util;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/AnimationUtil.class */
public class AnimationUtil {

    /* renamed from: com.apptentive.android.sdk.util.AnimationUtil$2 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/AnimationUtil$2.class */
    final class C08982 implements Animator.AnimatorListener {
        final /* synthetic */ int val$endVisibility;
        final /* synthetic */ View val$view;

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.val$view.setVisibility(this.val$endVisibility);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public static void scaleFadeIn(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "scaleX", 0.0f, 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "scaleY", 0.0f, 1.0f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
        view.setAlpha(0.0f);
        view.setVisibility(0);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3);
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.setDuration(300L);
        animatorSet.start();
    }

    private static void scaleFadeOut(final View view, final int i) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "scaleX", 0.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "scaleY", 0.0f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view, "alpha", 0.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3);
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.setDuration(300L);
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.apptentive.android.sdk.util.AnimationUtil.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setVisibility(i);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        animatorSet.start();
    }

    public static void scaleFadeOutGone(View view) {
        scaleFadeOut(view, 8);
    }
}
