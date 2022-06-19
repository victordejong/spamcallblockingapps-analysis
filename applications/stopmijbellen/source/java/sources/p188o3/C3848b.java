package p188o3;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import p188o3.AbstractC3850d;
/* renamed from: o3.b */
/* loaded from: classes-dex2jar.jar:o3/b.class */
public final class C3848b {
    /* renamed from: a */
    public static Animator m1763a(AbstractC3850d abstractC3850d, float f, float f2, float f3) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(abstractC3850d, (Property<AbstractC3850d, V>) AbstractC3850d.C3853c.f12340a, (TypeEvaluator) AbstractC3850d.C3852b.f12338b, (Object[]) new AbstractC3850d.C3855e[]{new AbstractC3850d.C3855e(f, f2, f3)});
        AbstractC3850d.C3855e revealInfo = abstractC3850d.getRevealInfo();
        if (revealInfo != null) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) abstractC3850d, (int) f, (int) f2, revealInfo.f12344c, f3);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofObject, createCircularReveal);
            return animatorSet;
        }
        throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
    }
}
