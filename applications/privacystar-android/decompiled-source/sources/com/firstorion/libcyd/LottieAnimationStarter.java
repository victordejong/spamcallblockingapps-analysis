package com.firstorion.libcyd;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import com.airbnb.lottie.LottieAnimationView;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/LottieAnimationStarter.class */
final class LottieAnimationStarter implements Animator.AnimatorListener {

    /* renamed from: v */
    private View f126v;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LottieAnimationStarter(View view) {
        if (view == null) {
            throw new NullPointerException("v");
        }
        this.f126v = view;
    }

    private void beginLottieAnimations(View view) {
        if (view instanceof LottieAnimationView) {
            ((LottieAnimationView) view).playAnimation();
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                beginLottieAnimations(viewGroup.getChildAt(i));
            }
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        beginLottieAnimations(this.f126v);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
    }
}
