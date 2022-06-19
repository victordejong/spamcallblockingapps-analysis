package com.razorpay;

import android.animation.ValueAnimator;
/* loaded from: classes3-dex2jar.jar:com/razorpay/l__9_.class */
public final class l__9_ implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    private /* synthetic */ CircularProgressView f9463a;

    public l__9_(CircularProgressView circularProgressView) {
        this.f9463a = circularProgressView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f9463a.actualProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f9463a.invalidate();
    }
}
