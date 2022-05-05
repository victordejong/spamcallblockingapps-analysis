package com.airbnb.lottie.value;

import android.view.animation.Interpolator;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/value/LottieInterpolatedValue.class */
abstract class LottieInterpolatedValue<T> extends LottieValueCallback<T> {

    /* renamed from: c */
    private final T f6425c;

    /* renamed from: d */
    private final T f6426d;

    /* renamed from: e */
    private final Interpolator f6427e;

    @Override // com.airbnb.lottie.value.LottieValueCallback
    /* renamed from: a */
    public T mo15656a(LottieFrameInfo<T> lottieFrameInfo) {
        return mo15663d(this.f6425c, this.f6426d, this.f6427e.getInterpolation(lottieFrameInfo.m15669c()));
    }

    /* renamed from: d */
    abstract T mo15663d(T t, T t2, float f);
}
