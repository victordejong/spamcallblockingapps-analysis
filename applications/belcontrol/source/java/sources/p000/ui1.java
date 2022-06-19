package p000;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.lang.ref.WeakReference;
import p000.hi1;
@TargetApi(14)
/* renamed from: ui1 */
/* loaded from: classes3-dex2jar.jar:ui1.class */
public class ui1 extends si1 {

    /* renamed from: b */
    public final WeakReference<ViewPropertyAnimator> f8324b;

    /* renamed from: ui1$a */
    /* loaded from: classes3-dex2jar.jar:ui1$a.class */
    public class C1688a implements Animator.AnimatorListener {

        /* renamed from: a */
        public final /* synthetic */ hi1.AbstractC1443a f8325a;

        public C1688a(ui1 ui1Var, hi1.AbstractC1443a abstractC1443a) {
            this.f8325a = abstractC1443a;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f8325a.mo304a(null);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f8325a.mo301d(null);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            this.f8325a.mo303b(null);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f8325a.mo302c(null);
        }
    }

    public ui1(View view) {
        this.f8324b = new WeakReference<>(view.animate());
    }

    @Override // p000.si1
    /* renamed from: b */
    public si1 mo318b(long j) {
        ViewPropertyAnimator viewPropertyAnimator = this.f8324b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.setDuration(j);
        }
        return this;
    }

    @Override // p000.si1
    /* renamed from: c */
    public si1 mo317c(hi1.AbstractC1443a abstractC1443a) {
        ViewPropertyAnimator viewPropertyAnimator = this.f8324b.get();
        if (viewPropertyAnimator != null) {
            if (abstractC1443a == null) {
                viewPropertyAnimator.setListener(null);
            } else {
                viewPropertyAnimator.setListener(new C1688a(this, abstractC1443a));
            }
        }
        return this;
    }

    @Override // p000.si1
    /* renamed from: d */
    public si1 mo316d(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.f8324b.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.translationX(f);
        }
        return this;
    }
}
