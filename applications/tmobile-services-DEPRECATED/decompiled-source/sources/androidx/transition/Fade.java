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
import androidx.annotation.NonNull;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
/* loaded from: classes-dex2jar.jar:androidx/transition/Fade.class */
public class Fade extends Visibility {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Fade$FadeAnimatorListener.class */
    public static class FadeAnimatorListener extends AnimatorListenerAdapter {

        /* renamed from: a */
        private final View f5143a;

        /* renamed from: b */
        private boolean f5144b = false;

        FadeAnimatorListener(View view) {
            this.f5143a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ViewUtils.m16684h(this.f5143a, 1.0f);
            if (this.f5144b) {
                this.f5143a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (ViewCompat.m19222O(this.f5143a) && this.f5143a.getLayerType() == 0) {
                this.f5144b = true;
                this.f5143a.setLayerType(2, null);
            }
        }
    }

    public Fade() {
    }

    public Fade(int i) {
        m16660w0(i);
    }

    @SuppressLint({"RestrictedApi"})
    public Fade(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f5202d);
        m16660w0(TypedArrayUtils.m19596g(obtainStyledAttributes, (XmlResourceParser) attributeSet, "fadingMode", 0, m16664q0()));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: x0 */
    private Animator m16852x0(final View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        ViewUtils.m16684h(view, f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, ViewUtils.f5304b, f2);
        ofFloat.addListener(new FadeAnimatorListener(view));
        mo16742a(new TransitionListenerAdapter(this) { // from class: androidx.transition.Fade.1
            @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            /* renamed from: c */
            public void mo8573c(@NonNull Transition transition) {
                ViewUtils.m16684h(view, 1.0f);
                ViewUtils.m16691a(view);
                transition.mo16743Z(this);
            }
        });
        return ofFloat;
    }

    /* renamed from: y0 */
    private static float m16851y0(TransitionValues transitionValues, float f) {
        float f2 = f;
        if (transitionValues != null) {
            Float f3 = (Float) transitionValues.f5271a.get("android:fade:transitionAlpha");
            f2 = f;
            if (f3 != null) {
                f2 = f3.floatValue();
            }
        }
        return f2;
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: m */
    public void mo8627m(@NonNull TransitionValues transitionValues) {
        super.mo8627m(transitionValues);
        transitionValues.f5271a.put("android:fade:transitionAlpha", Float.valueOf(ViewUtils.m16689c(transitionValues.f5272b)));
    }

    @Override // androidx.transition.Visibility
    /* renamed from: s0 */
    public Animator mo8587s0(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        float f = 0.0f;
        float y0 = m16851y0(transitionValues, 0.0f);
        if (y0 != 1.0f) {
            f = y0;
        }
        return m16852x0(view, f, 1.0f);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: u0 */
    public Animator mo8586u0(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        ViewUtils.m16687e(view);
        return m16852x0(view, m16851y0(transitionValues, 1.0f), 0.0f);
    }
}
