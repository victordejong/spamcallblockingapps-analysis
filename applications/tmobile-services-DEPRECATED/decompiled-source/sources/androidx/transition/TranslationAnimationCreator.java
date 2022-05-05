package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.Transition;
/* loaded from: classes-dex2jar.jar:androidx/transition/TranslationAnimationCreator.class */
class TranslationAnimationCreator {

    /* loaded from: classes-dex2jar.jar:androidx/transition/TranslationAnimationCreator$TransitionPositionListener.class */
    private static class TransitionPositionListener extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* renamed from: a */
        private final View f5278a;

        /* renamed from: b */
        private final View f5279b;

        /* renamed from: c */
        private final int f5280c;

        /* renamed from: d */
        private final int f5281d;

        /* renamed from: e */
        private int[] f5282e;

        /* renamed from: f */
        private float f5283f;

        /* renamed from: g */
        private float f5284g;

        /* renamed from: h */
        private final float f5285h;

        /* renamed from: i */
        private final float f5286i;

        TransitionPositionListener(View view, View view2, int i, int i2, float f, float f2) {
            this.f5279b = view;
            this.f5278a = view2;
            this.f5280c = i - Math.round(view.getTranslationX());
            this.f5281d = i2 - Math.round(this.f5279b.getTranslationY());
            this.f5285h = f;
            this.f5286i = f2;
            int[] iArr = (int[]) this.f5278a.getTag(C0542R.C0545id.transition_position);
            this.f5282e = iArr;
            if (iArr != null) {
                this.f5278a.setTag(C0542R.C0545id.transition_position, null);
            }
        }

        @Override // androidx.transition.Transition.TransitionListener
        /* renamed from: a */
        public void mo8575a(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        /* renamed from: b */
        public void mo8574b(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        /* renamed from: c */
        public void mo8573c(@NonNull Transition transition) {
            this.f5279b.setTranslationX(this.f5285h);
            this.f5279b.setTranslationY(this.f5286i);
            transition.mo16743Z(this);
        }

        @Override // androidx.transition.Transition.TransitionListener
        /* renamed from: d */
        public void mo8572d(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        /* renamed from: e */
        public void mo8571e(@NonNull Transition transition) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.f5282e == null) {
                this.f5282e = new int[2];
            }
            this.f5282e[0] = Math.round(this.f5280c + this.f5279b.getTranslationX());
            this.f5282e[1] = Math.round(this.f5281d + this.f5279b.getTranslationY());
            this.f5278a.setTag(C0542R.C0545id.transition_position, this.f5282e);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            this.f5283f = this.f5279b.getTranslationX();
            this.f5284g = this.f5279b.getTranslationY();
            this.f5279b.setTranslationX(this.f5285h);
            this.f5279b.setTranslationY(this.f5286i);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            this.f5279b.setTranslationX(this.f5283f);
            this.f5279b.setTranslationY(this.f5284g);
        }
    }

    private TranslationAnimationCreator() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: a */
    public static Animator m16712a(@NonNull View view, @NonNull TransitionValues transitionValues, int i, int i2, float f, float f2, float f3, float f4, @Nullable TimeInterpolator timeInterpolator, @NonNull Transition transition) {
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) transitionValues.f5272b.getTag(C0542R.C0545id.transition_position);
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
        TransitionPositionListener transitionPositionListener = new TransitionPositionListener(view, transitionValues.f5272b, i + round, i2 + round2, translationX, translationY);
        transition.mo16742a(transitionPositionListener);
        ofPropertyValuesHolder.addListener(transitionPositionListener);
        AnimatorUtils.m16912a(ofPropertyValuesHolder, transitionPositionListener);
        ofPropertyValuesHolder.setInterpolator(timeInterpolator);
        return ofPropertyValuesHolder;
    }
}
