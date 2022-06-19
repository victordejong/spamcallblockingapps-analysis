package com.razorpay;

import android.animation.ValueAnimator;
/* loaded from: classes3-dex2jar.jar:com/razorpay/v__i_.class */
public final class v__i_ implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    private /* synthetic */ CircularProgressView f9476a;

    public v__i_(CircularProgressView circularProgressView) {
        this.f9476a = circularProgressView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f9476a.indeterminateSweep = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f9476a.invalidate();
    }
}
