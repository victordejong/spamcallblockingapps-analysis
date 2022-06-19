package com.razorpay;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes3-dex2jar.jar:com/razorpay/X$_8_.class */
public final class X$_8_ extends Animation {

    /* renamed from: a */
    private int f9429a;

    /* renamed from: b */
    private int f9430b;

    /* renamed from: c */
    private View f9431c;

    public X$_8_(View view, int i) {
        this.f9431c = view;
        this.f9429a = i;
        this.f9430b = view.getWidth();
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f, Transformation transformation) {
        int i = this.f9430b;
        this.f9431c.getLayoutParams().width = i + ((int) ((this.f9429a - i) * f));
        this.f9431c.requestLayout();
    }

    @Override // android.view.animation.Animation
    public final void initialize(int i, int i2, int i3, int i4) {
        super.initialize(i, i2, i3, i4);
    }

    @Override // android.view.animation.Animation
    public final boolean willChangeBounds() {
        return true;
    }
}
