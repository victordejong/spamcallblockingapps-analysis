package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import java.util.Map;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/TextScale.class */
public class TextScale extends Transition {
    /* renamed from: p0 */
    private void m9453p0(@NonNull TransitionValues transitionValues) {
        View view = transitionValues.f5272b;
        if (view instanceof TextView) {
            transitionValues.f5271a.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: i */
    public void mo8628i(@NonNull TransitionValues transitionValues) {
        m9453p0(transitionValues);
    }

    @Override // androidx.transition.Transition
    /* renamed from: m */
    public void mo8627m(@NonNull TransitionValues transitionValues) {
        m9453p0(transitionValues);
    }

    @Override // androidx.transition.Transition
    /* renamed from: q */
    public Animator mo8625q(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        ValueAnimator valueAnimator = null;
        if (transitionValues != null) {
            valueAnimator = null;
            if (transitionValues2 != null) {
                valueAnimator = null;
                if (transitionValues.f5272b instanceof TextView) {
                    View view = transitionValues2.f5272b;
                    if (!(view instanceof TextView)) {
                        valueAnimator = null;
                    } else {
                        final TextView textView = (TextView) view;
                        Map<String, Object> map = transitionValues.f5271a;
                        Map<String, Object> map2 = transitionValues2.f5271a;
                        float f = 1.0f;
                        float floatValue = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
                        if (map2.get("android:textscale:scale") != null) {
                            f = ((Float) map2.get("android:textscale:scale")).floatValue();
                        }
                        if (floatValue == f) {
                            return null;
                        }
                        valueAnimator = ValueAnimator.ofFloat(floatValue, f);
                        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.google.android.material.internal.TextScale.1
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator2) {
                                float floatValue2 = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                                textView.setScaleX(floatValue2);
                                textView.setScaleY(floatValue2);
                            }
                        });
                    }
                }
            }
        }
        return valueAnimator;
    }
}
