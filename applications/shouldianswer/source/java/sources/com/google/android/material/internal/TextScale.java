package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.p045j.AbstractC0838n;
import androidx.p045j.C0855t;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/TextScale.class */
public class TextScale extends AbstractC0838n {
    private static final String PROPNAME_SCALE = "android:textscale:scale";

    private void captureValues(C0855t c0855t) {
        if (c0855t.f2698b instanceof TextView) {
            c0855t.f2697a.put(PROPNAME_SCALE, Float.valueOf(((TextView) c0855t.f2698b).getScaleX()));
        }
    }

    @Override // androidx.p045j.AbstractC0838n
    public void captureEndValues(C0855t c0855t) {
        captureValues(c0855t);
    }

    @Override // androidx.p045j.AbstractC0838n
    public void captureStartValues(C0855t c0855t) {
        captureValues(c0855t);
    }

    @Override // androidx.p045j.AbstractC0838n
    public Animator createAnimator(ViewGroup viewGroup, C0855t c0855t, C0855t c0855t2) {
        ValueAnimator valueAnimator = null;
        if (c0855t != null) {
            valueAnimator = null;
            if (c0855t2 != null) {
                valueAnimator = null;
                if (c0855t.f2698b instanceof TextView) {
                    if (!(c0855t2.f2698b instanceof TextView)) {
                        valueAnimator = null;
                    } else {
                        final TextView textView = (TextView) c0855t2.f2698b;
                        Map<String, Object> map = c0855t.f2697a;
                        Map<String, Object> map2 = c0855t2.f2697a;
                        float f = 1.0f;
                        float floatValue = map.get(PROPNAME_SCALE) != null ? ((Float) map.get(PROPNAME_SCALE)).floatValue() : 1.0f;
                        if (map2.get(PROPNAME_SCALE) != null) {
                            f = ((Float) map2.get(PROPNAME_SCALE)).floatValue();
                        }
                        if (floatValue == f) {
                            return null;
                        }
                        valueAnimator = ValueAnimator.ofFloat(floatValue, f);
                        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.internal.TextScale.1
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
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
