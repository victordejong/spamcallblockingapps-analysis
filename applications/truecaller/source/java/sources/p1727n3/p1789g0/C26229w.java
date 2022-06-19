package p1727n3.p1789g0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.view.View;
import androidx.transition.C0372R;
import p1727n3.p1789g0.AbstractC26214m;
/* renamed from: n3.g0.w */
/* loaded from: classes-dex2jar.jar:n3/g0/w.class */
public class C26229w {

    /* renamed from: n3.g0.w$a */
    /* loaded from: classes-dex2jar.jar:n3/g0/w$a.class */
    public static class C26230a extends AnimatorListenerAdapter implements AbstractC26214m.AbstractC26218d {

        /* renamed from: a */
        public final View f73130a;

        /* renamed from: b */
        public final View f73131b;

        /* renamed from: c */
        public final int f73132c;

        /* renamed from: d */
        public final int f73133d;

        /* renamed from: e */
        public int[] f73134e;

        /* renamed from: f */
        public float f73135f;

        /* renamed from: g */
        public float f73136g;

        /* renamed from: h */
        public final float f73137h;

        /* renamed from: i */
        public final float f73138i;

        public C26230a(View view, View view2, int i, int i2, float f, float f2) {
            this.f73131b = view;
            this.f73130a = view2;
            this.f73132c = i - Math.round(view.getTranslationX());
            this.f73133d = i2 - Math.round(view.getTranslationY());
            this.f73137h = f;
            this.f73138i = f2;
            int i3 = C0372R.C0374id.transition_position;
            int[] iArr = (int[]) view2.getTag(i3);
            this.f73134e = iArr;
            if (iArr != null) {
                view2.setTag(i3, null);
            }
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: a */
        public void mo2494a(AbstractC26214m abstractC26214m) {
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: b */
        public void mo2493b(AbstractC26214m abstractC26214m) {
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: c */
        public void mo2492c(AbstractC26214m abstractC26214m) {
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: d */
        public void mo2491d(AbstractC26214m abstractC26214m) {
            this.f73131b.setTranslationX(this.f73137h);
            this.f73131b.setTranslationY(this.f73138i);
            abstractC26214m.mo2497y(this);
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: e */
        public void mo2490e(AbstractC26214m abstractC26214m) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.f73134e == null) {
                this.f73134e = new int[2];
            }
            this.f73134e[0] = Math.round(this.f73131b.getTranslationX() + this.f73132c);
            this.f73134e[1] = Math.round(this.f73131b.getTranslationY() + this.f73133d);
            this.f73130a.setTag(C0372R.C0374id.transition_position, this.f73134e);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            this.f73135f = this.f73131b.getTranslationX();
            this.f73136g = this.f73131b.getTranslationY();
            this.f73131b.setTranslationX(this.f73137h);
            this.f73131b.setTranslationY(this.f73138i);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            this.f73131b.setTranslationX(this.f73135f);
            this.f73131b.setTranslationY(this.f73136g);
        }
    }

    /* renamed from: a */
    public static Animator m2495a(View view, C26227u c26227u, int i, int i2, float f, float f2, float f3, float f4, TimeInterpolator timeInterpolator, AbstractC26214m abstractC26214m) {
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) c26227u.f73124b.getTag(C0372R.C0374id.transition_position);
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
        C26230a c26230a = new C26230a(view, c26227u.f73124b, round + i, round2 + i2, translationX, translationY);
        abstractC26214m.mo2506a(c26230a);
        ofPropertyValuesHolder.addListener(c26230a);
        ofPropertyValuesHolder.addPauseListener(c26230a);
        ofPropertyValuesHolder.setInterpolator(timeInterpolator);
        return ofPropertyValuesHolder;
    }
}
