package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.view.View;
import androidx.transition.C2901o;
import androidx.transition.Transition;
/* renamed from: androidx.transition.z */
/* loaded from: classes-dex2jar.jar:androidx/transition/z.class */
final class C2916z {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.transition.z$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/z$a.class */
    public static final class C2917a extends AnimatorListenerAdapter implements Transition.AbstractC2849c {

        /* renamed from: a */
        private final View f10940a;

        /* renamed from: b */
        private final View f10941b;

        /* renamed from: c */
        private final int f10942c;

        /* renamed from: d */
        private final int f10943d;

        /* renamed from: e */
        private int[] f10944e;

        /* renamed from: f */
        private float f10945f;

        /* renamed from: g */
        private float f10946g;

        /* renamed from: h */
        private final float f10947h;

        /* renamed from: i */
        private final float f10948i;

        C2917a(View view, View view2, int i, int i2, float f, float f2) {
            this.f10941b = view;
            this.f10940a = view2;
            this.f10942c = i - Math.round(view.getTranslationX());
            this.f10943d = i2 - Math.round(view.getTranslationY());
            this.f10947h = f;
            this.f10948i = f2;
            int[] iArr = (int[]) view2.getTag(C2901o.C2902a.transition_position);
            this.f10944e = iArr;
            if (iArr != null) {
                view2.setTag(C2901o.C2902a.transition_position, null);
            }
        }

        @Override // androidx.transition.Transition.AbstractC2849c
        /* renamed from: a */
        public final void mo39672a() {
        }

        @Override // androidx.transition.Transition.AbstractC2849c
        /* renamed from: a */
        public final void mo39671a(Transition transition) {
            this.f10941b.setTranslationX(this.f10947h);
            this.f10941b.setTranslationY(this.f10948i);
            transition.mo39779b(this);
        }

        @Override // androidx.transition.Transition.AbstractC2849c
        /* renamed from: b */
        public final void mo39670b() {
        }

        @Override // androidx.transition.Transition.AbstractC2849c
        /* renamed from: b */
        public final void mo39669b(Transition transition) {
        }

        @Override // androidx.transition.Transition.AbstractC2849c
        /* renamed from: c */
        public final void mo39668c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            if (this.f10944e == null) {
                this.f10944e = new int[2];
            }
            this.f10944e[0] = Math.round(this.f10942c + this.f10941b.getTranslationX());
            this.f10944e[1] = Math.round(this.f10943d + this.f10941b.getTranslationY());
            this.f10940a.setTag(C2901o.C2902a.transition_position, this.f10944e);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationPause(Animator animator) {
            this.f10945f = this.f10941b.getTranslationX();
            this.f10946g = this.f10941b.getTranslationY();
            this.f10941b.setTranslationX(this.f10947h);
            this.f10941b.setTranslationY(this.f10948i);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationResume(Animator animator) {
            this.f10941b.setTranslationX(this.f10945f);
            this.f10941b.setTranslationY(this.f10946g);
        }
    }

    private C2916z() {
    }

    /* renamed from: a */
    public static Animator m39673a(View view, C2914x c2914x, int i, int i2, float f, float f2, float f3, float f4, TimeInterpolator timeInterpolator, Transition transition) {
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) c2914x.f10934b.getTag(C2901o.C2902a.transition_position);
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
        C2917a c2917a = new C2917a(view, c2914x.f10934b, i + round, i2 + round2, translationX, translationY);
        transition.mo39786a(c2917a);
        ofPropertyValuesHolder.addListener(c2917a);
        C2855a.m39758a(ofPropertyValuesHolder, c2917a);
        ofPropertyValuesHolder.setInterpolator(timeInterpolator);
        return ofPropertyValuesHolder;
    }
}
