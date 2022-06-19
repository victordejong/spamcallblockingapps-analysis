package com.p051a.p052a.p053a.p054a.p058c;

import android.view.animation.Interpolator;
import com.google.android.flexbox.FlexItem;
/* renamed from: com.a.a.a.a.c.c */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/c/c.class */
public class animationInterpolatorC1134c implements Interpolator {

    /* renamed from: a */
    private final float f3544a;

    /* renamed from: b */
    private final float f3545b;

    /* renamed from: c */
    private final float f3546c;

    public animationInterpolatorC1134c() {
        this(0.3f);
    }

    public animationInterpolatorC1134c(float f) {
        if (f < FlexItem.FLEX_GROW_DEFAULT || f >= 0.5f) {
            throw new IllegalArgumentException("Invalid threshold range: " + f);
        }
        float f2 = 1.0f - (2.0f * f);
        this.f3544a = f;
        this.f3545b = 0.5f * f2;
        this.f3546c = 1.0f / f2;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (Math.abs(f - 0.5f) < this.f3545b) {
            return (f - this.f3544a) * this.f3546c;
        }
        return f < 0.5f ? 0.0f : 1.0f;
    }
}
