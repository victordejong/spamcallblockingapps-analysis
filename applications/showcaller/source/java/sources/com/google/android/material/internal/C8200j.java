package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.transition.C1175y;
import androidx.transition.Transition;
import java.util.Map;
/* renamed from: com.google.android.material.internal.j */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/j.class */
public class C8200j extends Transition {

    /* renamed from: com.google.android.material.internal.j$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/j$a.class */
    class C8201a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        final /* synthetic */ TextView f37024a;

        C8201a(TextView textView) {
            C8200j.this = r4;
            this.f37024a = textView;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.f37024a.setScaleX(floatValue);
            this.f37024a.setScaleY(floatValue);
        }
    }

    /* renamed from: m0 */
    private void m4471m0(C1175y c1175y) {
        View view = c1175y.f4996b;
        if (view instanceof TextView) {
            c1175y.f4995a.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: i */
    public void mo4473i(C1175y c1175y) {
        m4471m0(c1175y);
    }

    @Override // androidx.transition.Transition
    /* renamed from: m */
    public void mo4472m(C1175y c1175y) {
        m4471m0(c1175y);
    }

    @Override // androidx.transition.Transition
    /* renamed from: q */
    public Animator mo4470q(ViewGroup viewGroup, C1175y c1175y, C1175y c1175y2) {
        ValueAnimator valueAnimator = null;
        if (c1175y != null) {
            valueAnimator = null;
            if (c1175y2 != null) {
                valueAnimator = null;
                if (c1175y.f4996b instanceof TextView) {
                    View view = c1175y2.f4996b;
                    if (!(view instanceof TextView)) {
                        valueAnimator = null;
                    } else {
                        TextView textView = (TextView) view;
                        Map<String, Object> map = c1175y.f4995a;
                        Map<String, Object> map2 = c1175y2.f4995a;
                        float f = 1.0f;
                        float floatValue = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
                        if (map2.get("android:textscale:scale") != null) {
                            f = ((Float) map2.get("android:textscale:scale")).floatValue();
                        }
                        if (floatValue == f) {
                            return null;
                        }
                        valueAnimator = ValueAnimator.ofFloat(floatValue, f);
                        valueAnimator.addUpdateListener(new C8201a(textView));
                    }
                }
            }
        }
        return valueAnimator;
    }
}
