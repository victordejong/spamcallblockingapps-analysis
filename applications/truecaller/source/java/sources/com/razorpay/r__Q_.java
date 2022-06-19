package com.razorpay;

import android.animation.ValueAnimator;
/* loaded from: classes3-dex2jar.jar:com/razorpay/r__Q_.class */
public final class r__Q_ implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    private /* synthetic */ CircularProgressView f9475a;

    public r__Q_(CircularProgressView circularProgressView) {
        this.f9475a = circularProgressView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f9475a.indeterminateRotateOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }
}
