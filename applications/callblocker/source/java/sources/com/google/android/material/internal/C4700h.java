package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.p045j.AbstractC0807m;
import androidx.p045j.C0823s;
import java.util.Map;
/* renamed from: com.google.android.material.internal.h */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/h.class */
public class C4700h extends AbstractC0807m {
    /* renamed from: d */
    private void m2829d(C0823s c0823s) {
        if (c0823s.f2823b instanceof TextView) {
            c0823s.f2822a.put("android:textscale:scale", Float.valueOf(((TextView) c0823s.f2823b).getScaleX()));
        }
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: a */
    public Animator mo2832a(ViewGroup viewGroup, C0823s c0823s, C0823s c0823s2) {
        ValueAnimator valueAnimator;
        float f = 1.0f;
        if (c0823s == null || c0823s2 == null || !(c0823s.f2823b instanceof TextView) || !(c0823s2.f2823b instanceof TextView)) {
            valueAnimator = null;
        } else {
            final TextView textView = (TextView) c0823s2.f2823b;
            Map<String, Object> map = c0823s.f2822a;
            Map<String, Object> map2 = c0823s2.f2822a;
            float floatValue = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
            if (map2.get("android:textscale:scale") != null) {
                f = ((Float) map2.get("android:textscale:scale")).floatValue();
            }
            if (floatValue == f) {
                valueAnimator = null;
            } else {
                valueAnimator = ValueAnimator.ofFloat(floatValue, f);
                valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.internal.h.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        float floatValue2 = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        textView.setScaleX(floatValue2);
                        textView.setScaleY(floatValue2);
                    }
                });
            }
        }
        return valueAnimator;
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: a */
    public void mo2831a(C0823s c0823s) {
        m2829d(c0823s);
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: b */
    public void mo2830b(C0823s c0823s) {
        m2829d(c0823s);
    }
}
