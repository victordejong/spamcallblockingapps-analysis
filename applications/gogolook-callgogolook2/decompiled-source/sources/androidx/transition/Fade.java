package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
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

    /* renamed from: IN */
    public static final int f126IN = 1;
    public static final String LOG_TAG = "Fade";
    public static final int OUT = 2;
    public static final String PROPNAME_TRANSITION_ALPHA = "android:fade:transitionAlpha";

    /* loaded from: classes-dex2jar.jar:androidx/transition/Fade$FadeAnimatorListener.class */
    public static class FadeAnimatorListener extends AnimatorListenerAdapter {
        public boolean mLayerTypeChanged = false;
        public final View mView;

        public FadeAnimatorListener(View view) {
            this.mView = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ViewUtils.setTransitionAlpha(this.mView, 1.0f);
            if (this.mLayerTypeChanged) {
                this.mView.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (ViewCompat.hasOverlappingRendering(this.mView) && this.mView.getLayerType() == 0) {
                this.mLayerTypeChanged = true;
                this.mView.setLayerType(2, null);
            }
        }
    }

    public Fade() {
    }

    public Fade(int i) {
        setMode(i);
    }

    public Fade(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.FADE);
        setMode(TypedArrayUtils.getNamedInt(obtainStyledAttributes, (XmlResourceParser) attributeSet, "fadingMode", 0, getMode()));
        obtainStyledAttributes.recycle();
    }

    private Animator createAnimation(final View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        ViewUtils.setTransitionAlpha(view, f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, ViewUtils.TRANSITION_ALPHA, f2);
        ofFloat.addListener(new FadeAnimatorListener(view));
        addListener(new TransitionListenerAdapter() { // from class: androidx.transition.Fade.1
            @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            public void onTransitionEnd(@NonNull Transition transition) {
                ViewUtils.setTransitionAlpha(view, 1.0f);
                ViewUtils.clearNonTransitionAlpha(view);
                transition.removeListener(this);
            }
        });
        return ofFloat;
    }

    public static float getStartAlpha(TransitionValues transitionValues, float f) {
        float f2 = f;
        if (transitionValues != null) {
            Float f3 = (Float) transitionValues.values.get(PROPNAME_TRANSITION_ALPHA);
            f2 = f;
            if (f3 != null) {
                f2 = f3.floatValue();
            }
        }
        return f2;
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        transitionValues.values.put(PROPNAME_TRANSITION_ALPHA, Float.valueOf(ViewUtils.getTransitionAlpha(transitionValues.view)));
    }

    @Override // androidx.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        r11 = 0.0f;
        float startAlpha = getStartAlpha(transitionValues, 0.0f);
        if (startAlpha == 1.0f) {
        }
        return createAnimation(view, startAlpha, 1.0f);
    }

    @Override // androidx.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        ViewUtils.saveNonTransitionAlpha(view);
        return createAnimation(view, getStartAlpha(transitionValues, 1.0f), 0.0f);
    }
}
