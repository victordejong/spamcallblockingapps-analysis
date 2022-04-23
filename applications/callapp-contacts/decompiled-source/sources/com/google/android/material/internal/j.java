package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.transition.Transition;
import androidx.transition.x;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/j.class */
public final class j extends Transition {
    private static void d(x xVar) {
        if (xVar.f5853b instanceof TextView) {
            xVar.f5852a.put("android:textscale:scale", Float.valueOf(((TextView) xVar.f5853b).getScaleX()));
        }
    }

    @Override // androidx.transition.Transition
    public final Animator a(ViewGroup viewGroup, x xVar, x xVar2) {
        ValueAnimator valueAnimator = null;
        if (xVar != null) {
            valueAnimator = null;
            if (xVar2 != null) {
                valueAnimator = null;
                if (xVar.f5853b instanceof TextView) {
                    if (!(xVar2.f5853b instanceof TextView)) {
                        valueAnimator = null;
                    } else {
                        final TextView textView = (TextView) xVar2.f5853b;
                        Map<String, Object> map = xVar.f5852a;
                        Map<String, Object> map2 = xVar2.f5852a;
                        float f = 1.0f;
                        float floatValue = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
                        if (map2.get("android:textscale:scale") != null) {
                            f = ((Float) map2.get("android:textscale:scale")).floatValue();
                        }
                        if (floatValue == f) {
                            return null;
                        }
                        valueAnimator = ValueAnimator.ofFloat(floatValue, f);
                        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.internal.j.1
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
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

    @Override // androidx.transition.Transition
    public final void a(x xVar) {
        d(xVar);
    }

    @Override // androidx.transition.Transition
    public final void b(x xVar) {
        d(xVar);
    }
}
