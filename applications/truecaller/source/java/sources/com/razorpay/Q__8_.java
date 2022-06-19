package com.razorpay;

import android.animation.ValueAnimator;
/* loaded from: classes3-dex2jar.jar:com/razorpay/Q__8_.class */
public final class Q__8_ implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    private /* synthetic */ CircularProgressView f9420a;

    public Q__8_(CircularProgressView circularProgressView) {
        this.f9420a = circularProgressView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f9420a.indeterminateRotateOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }
}
