package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.view.View;
import androidx.transition.Transition;
import androidx.transition.o;
/* loaded from: classes-dex2jar.jar:androidx/transition/z.class */
final class z {

    /* loaded from: classes-dex2jar.jar:androidx/transition/z$a.class */
    static final class a extends AnimatorListenerAdapter implements Transition.c {

        /* renamed from: a  reason: collision with root package name */
        private final View f5859a;

        /* renamed from: b  reason: collision with root package name */
        private final View f5860b;

        /* renamed from: c  reason: collision with root package name */
        private final int f5861c;

        /* renamed from: d  reason: collision with root package name */
        private final int f5862d;
        private int[] e;
        private float f;
        private float g;
        private final float h;
        private final float i;

        a(View view, View view2, int i, int i2, float f, float f2) {
            this.f5860b = view;
            this.f5859a = view2;
            this.f5861c = i - Math.round(view.getTranslationX());
            this.f5862d = i2 - Math.round(view.getTranslationY());
            this.h = f;
            this.i = f2;
            int[] iArr = (int[]) view2.getTag(o.a.transition_position);
            this.e = iArr;
            if (iArr != null) {
                view2.setTag(o.a.transition_position, null);
            }
        }

        @Override // androidx.transition.Transition.c
        public final void a() {
        }

        @Override // androidx.transition.Transition.c
        public final void a(Transition transition) {
            this.f5860b.setTranslationX(this.h);
            this.f5860b.setTranslationY(this.i);
            transition.b(this);
        }

        @Override // androidx.transition.Transition.c
        public final void b() {
        }

        @Override // androidx.transition.Transition.c
        public final void b(Transition transition) {
        }

        @Override // androidx.transition.Transition.c
        public final void c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            if (this.e == null) {
                this.e = new int[2];
            }
            this.e[0] = Math.round(this.f5861c + this.f5860b.getTranslationX());
            this.e[1] = Math.round(this.f5862d + this.f5860b.getTranslationY());
            this.f5859a.setTag(o.a.transition_position, this.e);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationPause(Animator animator) {
            this.f = this.f5860b.getTranslationX();
            this.g = this.f5860b.getTranslationY();
            this.f5860b.setTranslationX(this.h);
            this.f5860b.setTranslationY(this.i);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationResume(Animator animator) {
            this.f5860b.setTranslationX(this.f);
            this.f5860b.setTranslationY(this.g);
        }
    }

    private z() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Animator a(View view, x xVar, int i, int i2, float f, float f2, float f3, float f4, TimeInterpolator timeInterpolator, Transition transition) {
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) xVar.f5853b.getTag(o.a.transition_position);
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
        a aVar = new a(view, xVar.f5853b, i + round, i2 + round2, translationX, translationY);
        transition.a(aVar);
        ofPropertyValuesHolder.addListener(aVar);
        androidx.transition.a.a(ofPropertyValuesHolder, aVar);
        ofPropertyValuesHolder.setInterpolator(timeInterpolator);
        return ofPropertyValuesHolder;
    }
}
