package com.apptentive.android.sdk.util;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/AnimationUtil.class */
public class AnimationUtil {
    public static final float ALPHA_DEFAULT = 1.0f;
    public static final float ALPHA_MIN = 0.0f;
    public static final int ANIMATION_DURATION = 300;
    public static final float SCALE_DEFAULT = 1.0f;
    public static final float SCALE_MAX = 1.5f;
    public static final float SCALE_MIN = 0.0f;

    public static AnimatorSet buildListViewRowRemoveAnimator(View view, Animator.AnimatorListener animatorListener, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "rotationX", 0.0f, 90.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.0f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.0f);
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(0.0f, 1.0f);
        if (animatorUpdateListener != null) {
            ofFloat4.addUpdateListener(animatorUpdateListener);
        }
        ofFloat.setDuration(300L);
        ofFloat2.setDuration(300L);
        ofFloat4.setDuration(700L);
        animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3, ofFloat4);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        return animatorSet;
    }

    public static AnimatorSet buildListViewRowShowAnimator(View view, Animator.AnimatorListener animatorListener, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "rotationX", -90.0f, 0.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view, "scaleY", 0.0f, 1.0f);
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(0.0f, 1.0f);
        if (animatorUpdateListener != null) {
            ofFloat4.addUpdateListener(animatorUpdateListener);
        }
        ofFloat.setDuration(300L);
        ofFloat2.setDuration(300L);
        ofFloat4.setDuration(300L);
        animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3, ofFloat4);
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        return animatorSet;
    }

    public static void fadeIn(View view, Animator.AnimatorListener animatorListener) {
        if (view.getAlpha() != 1.0f && view.getVisibility() != 0) {
            view.setAlpha(0.0f);
            view.setVisibility(0);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 1.0f);
            if (animatorListener != null) {
                ofFloat.addListener(animatorListener);
            }
            ofFloat.start();
        }
    }

    private static void fadeOut(final View view, final int i) {
        if (view.getAlpha() != 0.0f && view.getVisibility() != i) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f);
            ofFloat.setDuration(300L);
            ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.apptentive.android.sdk.util.AnimationUtil.2
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
            ofFloat.start();
        }
    }

    public static void fadeOutGone(View view) {
        fadeOut(view, 8);
    }

    public static void fadeOutInvisible(View view) {
        fadeOut(view, 4);
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

    public static void scaleFadeOutInvisible(View view) {
        scaleFadeOut(view, 4);
    }
}
