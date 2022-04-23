package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.view.View;
/* renamed from: androidx.transition.a0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/a0.class */
class C0487a0 {
    /* renamed from: a */
    static Animator m12051a(View view, C0517y yVar, int i, int i2, float f, float f2, float f3, float f4, TimeInterpolator timeInterpolator, Transition transition) {
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) yVar.f2778b.getTag(C0506p.transition_position);
        if (iArr != null) {
            f = (iArr[0] - i) + translationX;
            f2 = (iArr[1] - i2) + translationY;
        }
        int round = Math.round(f - translationX);
        int round2 = Math.round(f2 - translationY);
        view.setTranslationX(f);
        view.setTranslationY(f2);
        if (f == f3 && f2 == f4) {
            return null;
        }
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.TRANSLATION_X, f, f3), PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, f2, f4));
        a aVar = new a(view, yVar.f2778b, i + round, i2 + round2, translationX, translationY);
        transition.m12097b(aVar);
        ofPropertyValuesHolder.addListener(aVar);
        C0485a.m12054a(ofPropertyValuesHolder, aVar);
        ofPropertyValuesHolder.setInterpolator(timeInterpolator);
        return ofPropertyValuesHolder;
    }
}
