package p081h.p203i.p204a.p294f.p308n;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.n.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/n/j.class */
public class C9243j extends Transition {

    /* renamed from: h.i.a.f.n.j$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/n/j$a.class */
    public class C9244a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ TextView f21174a;

        public C9244a(C9243j jVar, TextView textView) {
            this.f21174a = textView;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.f21174a.setScaleX(floatValue);
            this.f21174a.setScaleY(floatValue);
        }
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    public final void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (view instanceof TextView) {
            transitionValues.values.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // androidx.transition.Transition
    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        ValueAnimator valueAnimator = null;
        if (transitionValues != null) {
            valueAnimator = null;
            if (transitionValues2 != null) {
                valueAnimator = null;
                if (transitionValues.view instanceof TextView) {
                    View view = transitionValues2.view;
                    if (!(view instanceof TextView)) {
                        valueAnimator = null;
                    } else {
                        TextView textView = (TextView) view;
                        Map<String, Object> map = transitionValues.values;
                        Map<String, Object> map2 = transitionValues2.values;
                        float f = 1.0f;
                        float floatValue = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
                        if (map2.get("android:textscale:scale") != null) {
                            f = ((Float) map2.get("android:textscale:scale")).floatValue();
                        }
                        if (floatValue == f) {
                            return null;
                        }
                        valueAnimator = ValueAnimator.ofFloat(floatValue, f);
                        valueAnimator.addUpdateListener(new C9244a(this, textView));
                    }
                }
            }
        }
        return valueAnimator;
    }
}
