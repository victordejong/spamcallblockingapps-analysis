package com.airbnb.lottie.value;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/value/LottieValueCallback.class */
public class LottieValueCallback<T> {

    /* renamed from: a */
    private final LottieFrameInfo<T> f6429a;
    @Nullable

    /* renamed from: b */
    protected T f6430b;

    public LottieValueCallback() {
        this.f6429a = new LottieFrameInfo<>();
        this.f6430b = null;
    }

    public LottieValueCallback(@Nullable T t) {
        this.f6429a = new LottieFrameInfo<>();
        this.f6430b = null;
        this.f6430b = t;
    }

    @Nullable
    /* renamed from: a */
    public T mo15656a(LottieFrameInfo<T> lottieFrameInfo) {
        return this.f6430b;
    }

    @Nullable
    @RestrictTo
    /* renamed from: b */
    public final T m15655b(float f, float f2, T t, T t2, float f3, float f4, float f5) {
        LottieFrameInfo<T> lottieFrameInfo = this.f6429a;
        lottieFrameInfo.m15667e(f, f2, t, t2, f3, f4, f5);
        return mo15656a(lottieFrameInfo);
    }

    @RestrictTo
    /* renamed from: c */
    public final void m15654c(@Nullable BaseKeyframeAnimation<?, ?> baseKeyframeAnimation) {
    }
}
