package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.view.View;
import androidx.transition.Transition;
/* renamed from: androidx.transition.a0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/a0.class */
class C1118a0 {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.transition.a0$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/a0$a.class */
    public static class C1119a extends AnimatorListenerAdapter implements Transition.AbstractC1110f {

        /* renamed from: a */
        private final View f4878a;

        /* renamed from: b */
        private final View f4879b;

        /* renamed from: c */
        private final int f4880c;

        /* renamed from: d */
        private final int f4881d;

        /* renamed from: e */
        private int[] f4882e;

        /* renamed from: f */
        private float f4883f;

        /* renamed from: g */
        private float f4884g;

        /* renamed from: h */
        private final float f4885h;

        /* renamed from: i */
        private final float f4886i;

        C1119a(View view, View view2, int i, int i2, float f, float f2) {
            this.f4879b = view;
            this.f4878a = view2;
            this.f4880c = i - Math.round(view.getTranslationX());
            this.f4881d = i2 - Math.round(view.getTranslationY());
            this.f4885h = f;
            this.f4886i = f2;
            int i3 = C1158p.transition_position;
            int[] iArr = (int[]) view2.getTag(i3);
            this.f4882e = iArr;
            if (iArr != null) {
                view2.setTag(i3, null);
            }
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: a */
        public void mo30830a(Transition transition) {
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: b */
        public void mo30829b(Transition transition) {
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: c */
        public void mo30821c(Transition transition) {
            this.f4879b.setTranslationX(this.f4885h);
            this.f4879b.setTranslationY(this.f4886i);
            transition.mo30982Y(this);
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: d */
        public void mo30828d(Transition transition) {
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: e */
        public void mo30827e(Transition transition) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.f4882e == null) {
                this.f4882e = new int[2];
            }
            this.f4882e[0] = Math.round(this.f4880c + this.f4879b.getTranslationX());
            this.f4882e[1] = Math.round(this.f4881d + this.f4879b.getTranslationY());
            this.f4878a.setTag(C1158p.transition_position, this.f4882e);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            this.f4883f = this.f4879b.getTranslationX();
            this.f4884g = this.f4879b.getTranslationY();
            this.f4879b.setTranslationX(this.f4885h);
            this.f4879b.setTranslationY(this.f4886i);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            this.f4879b.setTranslationX(this.f4883f);
            this.f4879b.setTranslationY(this.f4884g);
        }
    }

    /* renamed from: a */
    public static Animator m30938a(View view, C1175y c1175y, int i, int i2, float f, float f2, float f3, float f4, TimeInterpolator timeInterpolator, Transition transition) {
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) c1175y.f4996b.getTag(C1158p.transition_position);
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
        C1119a c1119a = new C1119a(view, c1175y.f4996b, i + round, i2 + round2, translationX, translationY);
        transition.mo30980a(c1119a);
        ofPropertyValuesHolder.addListener(c1119a);
        C1116a.m30941a(ofPropertyValuesHolder, c1119a);
        ofPropertyValuesHolder.setInterpolator(timeInterpolator);
        return ofPropertyValuesHolder;
    }
}
