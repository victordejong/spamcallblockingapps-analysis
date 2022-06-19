package androidx.p045j;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p026h.C0595u;
/* renamed from: androidx.j.d */
/* loaded from: classes-dex2jar.jar:androidx/j/d.class */
public class C0791d extends AbstractC0771aj {

    /* renamed from: androidx.j.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/j/d$a.class */
    public static class C0793a extends AnimatorListenerAdapter {

        /* renamed from: a */
        private final View f2735a;

        /* renamed from: b */
        private boolean f2736b = false;

        C0793a(View view) {
            this.f2735a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C0762ac.m19499a(this.f2735a, 1.0f);
            if (this.f2736b) {
                this.f2735a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (!C0595u.m20305s(this.f2735a) || this.f2735a.getLayerType() != 0) {
                return;
            }
            this.f2736b = true;
            this.f2735a.setLayerType(2, null);
        }
    }

    public C0791d() {
    }

    public C0791d(int i) {
        m19477a(i);
    }

    /* renamed from: a */
    private static float m19450a(C0823s c0823s, float f) {
        float f2 = f;
        if (c0823s != null) {
            Float f3 = (Float) c0823s.f2822a.get("android:fade:transitionAlpha");
            f2 = f;
            if (f3 != null) {
                f2 = f3.floatValue();
            }
        }
        return f2;
    }

    /* renamed from: a */
    private Animator m19452a(final View view, float f, float f2) {
        ObjectAnimator objectAnimator;
        if (f == f2) {
            objectAnimator = null;
        } else {
            C0762ac.m19499a(view, f);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, C0762ac.f2663a, f2);
            ofFloat.addListener(new C0793a(view));
            mo19372a(new C0814n() { // from class: androidx.j.d.1
                @Override // androidx.p045j.C0814n, androidx.p045j.AbstractC0807m.AbstractC0813c
                /* renamed from: b */
                public void mo19347b(AbstractC0807m abstractC0807m) {
                    C0762ac.m19499a(view, 1.0f);
                    C0762ac.m19491e(view);
                    abstractC0807m.mo19364b(this);
                }
            });
            objectAnimator = ofFloat;
        }
        return objectAnimator;
    }

    @Override // androidx.p045j.AbstractC0771aj
    /* renamed from: a */
    public Animator mo19451a(ViewGroup viewGroup, View view, C0823s c0823s, C0823s c0823s2) {
        float m19450a = m19450a(c0823s, 0.0f);
        if (m19450a == 1.0f) {
            m19450a = 0.0f;
        }
        return m19452a(view, m19450a, 1.0f);
    }

    @Override // androidx.p045j.AbstractC0771aj, androidx.p045j.AbstractC0807m
    /* renamed from: a */
    public void mo2831a(C0823s c0823s) {
        super.mo2831a(c0823s);
        c0823s.f2822a.put("android:fade:transitionAlpha", Float.valueOf(C0762ac.m19493c(c0823s.f2823b)));
    }

    @Override // androidx.p045j.AbstractC0771aj
    /* renamed from: b */
    public Animator mo19449b(ViewGroup viewGroup, View view, C0823s c0823s, C0823s c0823s2) {
        C0762ac.m19492d(view);
        return m19452a(view, m19450a(c0823s, 1.0f), 0.0f);
    }
}
