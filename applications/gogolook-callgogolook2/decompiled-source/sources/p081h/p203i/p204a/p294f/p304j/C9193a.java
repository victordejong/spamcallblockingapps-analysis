package p081h.p203i.p204a.p294f.p304j;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import p081h.p203i.p204a.p294f.p304j.AbstractC9197c;
/* renamed from: h.i.a.f.j.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/j/a.class */
public final class C9193a {

    /* renamed from: h.i.a.f.j.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/j/a$a.class */
    public static final class C9194a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9197c f21005a;

        public C9194a(AbstractC9197c cVar) {
            this.f21005a = cVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f21005a.mo15786d();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f21005a.mo15788b();
        }
    }

    /* renamed from: a */
    public static Animator.AnimatorListener m15811a(AbstractC9197c cVar) {
        return new C9194a(cVar);
    }

    /* renamed from: a */
    public static Animator m15810a(AbstractC9197c cVar, float f, float f2, float f3) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(cVar, (Property<AbstractC9197c, V>) AbstractC9197c.C9200c.f21018a, (TypeEvaluator) AbstractC9197c.C9199b.f21016b, (Object[]) new AbstractC9197c.C9202e[]{new AbstractC9197c.C9202e(f, f2, f3)});
        if (Build.VERSION.SDK_INT < 21) {
            return ofObject;
        }
        AbstractC9197c.C9202e a = cVar.mo15792a();
        if (a != null) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) cVar, (int) f, (int) f2, a.f21022c, f3);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofObject, createCircularReveal);
            return animatorSet;
        }
        throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
    }
}
