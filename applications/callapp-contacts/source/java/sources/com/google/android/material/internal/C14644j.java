package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.transition.C2914x;
import androidx.transition.Transition;
import java.util.Map;
/* renamed from: com.google.android.material.internal.j */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/j.class */
public final class C14644j extends Transition {
    /* renamed from: d */
    private static void m10511d(C2914x c2914x) {
        if (c2914x.f10934b instanceof TextView) {
            c2914x.f10933a.put("android:textscale:scale", Float.valueOf(((TextView) c2914x.f10934b).getScaleX()));
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final Animator mo10514a(ViewGroup viewGroup, C2914x c2914x, C2914x c2914x2) {
        ValueAnimator valueAnimator = null;
        if (c2914x != null) {
            valueAnimator = null;
            if (c2914x2 != null) {
                valueAnimator = null;
                if (c2914x.f10934b instanceof TextView) {
                    if (!(c2914x2.f10934b instanceof TextView)) {
                        valueAnimator = null;
                    } else {
                        final TextView textView = (TextView) c2914x2.f10934b;
                        Map<String, Object> map = c2914x.f10933a;
                        Map<String, Object> map2 = c2914x2.f10933a;
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
    /* renamed from: a */
    public final void mo10513a(C2914x c2914x) {
        m10511d(c2914x);
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public final void mo10512b(C2914x c2914x) {
        m10511d(c2914x);
    }
}
