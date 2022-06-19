package androidx.p045j;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p023g.C0552u;
import com.google.android.flexbox.FlexItem;
/* renamed from: androidx.j.d */
/* loaded from: classes-dex2jar.jar:androidx/j/d.class */
public class C0821d extends AbstractC0801aj {

    /* renamed from: androidx.j.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/j/d$a.class */
    public static class C0823a extends AnimatorListenerAdapter {

        /* renamed from: a */
        private final View f2635a;

        /* renamed from: b */
        private boolean f2636b = false;

        C0823a(View view) {
            this.f2635a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C0794ae.m5337a(this.f2635a, 1.0f);
            if (this.f2636b) {
                this.f2635a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (!C0552u.m6226u(this.f2635a) || this.f2635a.getLayerType() != 0) {
                return;
            }
            this.f2636b = true;
            this.f2635a.setLayerType(2, null);
        }
    }

    public C0821d() {
    }

    public C0821d(int i) {
        m5312a(i);
    }

    /* renamed from: a */
    private static float m5285a(C0855t c0855t, float f) {
        float f2 = f;
        if (c0855t != null) {
            Float f3 = (Float) c0855t.f2697a.get("android:fade:transitionAlpha");
            f2 = f;
            if (f3 != null) {
                f2 = f3.floatValue();
            }
        }
        return f2;
    }

    /* renamed from: a */
    private Animator m5287a(final View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        C0794ae.m5337a(view, f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, C0794ae.f2562a, f2);
        ofFloat.addListener(new C0823a(view));
        addListener(new C0846o() { // from class: androidx.j.d.1
            @Override // androidx.p045j.C0846o, androidx.p045j.AbstractC0838n.AbstractC0845d
            /* renamed from: b */
            public void mo5224b(AbstractC0838n abstractC0838n) {
                C0794ae.m5337a(view, 1.0f);
                C0794ae.m5329e(view);
                abstractC0838n.removeListener(this);
            }
        });
        return ofFloat;
    }

    @Override // androidx.p045j.AbstractC0801aj
    /* renamed from: a */
    public Animator mo5286a(ViewGroup viewGroup, View view, C0855t c0855t, C0855t c0855t2) {
        float f = 0.0f;
        float m5285a = m5285a(c0855t, (float) FlexItem.FLEX_GROW_DEFAULT);
        if (m5285a != 1.0f) {
            f = m5285a;
        }
        return m5287a(view, f, 1.0f);
    }

    @Override // androidx.p045j.AbstractC0801aj
    /* renamed from: b */
    public Animator mo5284b(ViewGroup viewGroup, View view, C0855t c0855t, C0855t c0855t2) {
        C0794ae.m5330d(view);
        return m5287a(view, m5285a(c0855t, 1.0f), FlexItem.FLEX_GROW_DEFAULT);
    }

    @Override // androidx.p045j.AbstractC0801aj, androidx.p045j.AbstractC0838n
    public void captureStartValues(C0855t c0855t) {
        super.captureStartValues(c0855t);
        c0855t.f2697a.put("android:fade:transitionAlpha", Float.valueOf(C0794ae.m5331c(c0855t.f2698b)));
    }
}
