package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.p007d.C0614g;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/transition/Fade.class */
public class Fade extends Visibility {

    /* renamed from: androidx.transition.Fade$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Fade$a.class */
    public class C1094a extends C1168u {

        /* renamed from: a */
        final /* synthetic */ View f4791a;

        C1094a(View view) {
            Fade.this = r4;
            this.f4791a = view;
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: c */
        public void mo30821c(Transition transition) {
            C1144j0.m30867h(this.f4791a, 1.0f);
            C1144j0.m30874a(this.f4791a);
            transition.mo30982Y(this);
        }
    }

    /* renamed from: androidx.transition.Fade$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Fade$b.class */
    public static class C1095b extends AnimatorListenerAdapter {

        /* renamed from: a */
        private final View f4793a;

        /* renamed from: b */
        private boolean f4794b = false;

        C1095b(View view) {
            this.f4793a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C1144j0.m30867h(this.f4793a, 1.0f);
            if (this.f4794b) {
                this.f4793a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (!C1679w.m29317R(this.f4793a) || this.f4793a.getLayerType() != 0) {
                return;
            }
            this.f4794b = true;
            this.f4793a.setLayerType(2, null);
        }
    }

    public Fade() {
    }

    public Fade(int i) {
        m30944t0(i);
    }

    @SuppressLint({"RestrictedApi"})
    public Fade(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1166t.f4976f);
        m30944t0(C0614g.m33253g(obtainStyledAttributes, (XmlResourceParser) attributeSet, "fadingMode", 0, m30950n0()));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: u0 */
    private Animator m31028u0(View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        C1144j0.m30867h(view, f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, C1144j0.f4940b, f2);
        ofFloat.addListener(new C1095b(view));
        mo30980a(new C1094a(view));
        return ofFloat;
    }

    /* renamed from: v0 */
    private static float m31027v0(C1175y c1175y, float f) {
        float f2 = f;
        if (c1175y != null) {
            Float f3 = (Float) c1175y.f4995a.get("android:fade:transitionAlpha");
            f2 = f;
            if (f3 != null) {
                f2 = f3.floatValue();
            }
        }
        return f2;
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: m */
    public void mo4472m(C1175y c1175y) {
        super.mo4472m(c1175y);
        c1175y.f4995a.put("android:fade:transitionAlpha", Float.valueOf(C1144j0.m30872c(c1175y.f4996b)));
    }

    @Override // androidx.transition.Visibility
    /* renamed from: p0 */
    public Animator mo30948p0(ViewGroup viewGroup, View view, C1175y c1175y, C1175y c1175y2) {
        float m31027v0 = m31027v0(c1175y, 0.0f);
        if (m31027v0 == 1.0f) {
            m31027v0 = 0.0f;
        }
        return m31028u0(view, m31027v0, 1.0f);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: r0 */
    public Animator mo30946r0(ViewGroup viewGroup, View view, C1175y c1175y, C1175y c1175y2) {
        C1144j0.m30870e(view);
        return m31028u0(view, m31027v0(c1175y, 1.0f), 0.0f);
    }
}
