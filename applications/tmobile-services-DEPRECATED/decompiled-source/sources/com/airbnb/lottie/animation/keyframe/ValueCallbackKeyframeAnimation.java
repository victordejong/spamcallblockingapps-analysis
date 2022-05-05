package com.airbnb.lottie.animation.keyframe;

import androidx.annotation.Nullable;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation.class */
public class ValueCallbackKeyframeAnimation<K, A> extends BaseKeyframeAnimation<K, A> {

    /* renamed from: i */
    private final A f6044i;

    public ValueCallbackKeyframeAnimation(LottieValueCallback<A> lottieValueCallback) {
        this(lottieValueCallback, null);
    }

    public ValueCallbackKeyframeAnimation(LottieValueCallback<A> lottieValueCallback, @Nullable A a) {
        super(Collections.emptyList());
        m16154m(lottieValueCallback);
        this.f6044i = a;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    /* renamed from: c */
    float mo16114c() {
        return 1.0f;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    /* renamed from: h */
    public A mo16113h() {
        LottieValueCallback<A> lottieValueCallback = this.f6003e;
        A a = this.f6044i;
        return lottieValueCallback.m15655b(0.0f, 0.0f, a, a, m16157f(), m16157f(), m16157f());
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    /* renamed from: i */
    A mo16112i(Keyframe<K> keyframe, float f) {
        return mo16113h();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    /* renamed from: j */
    public void mo16111j() {
        if (this.f6003e != null) {
            super.mo16111j();
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    /* renamed from: l */
    public void mo16110l(float f) {
        this.f6002d = f;
    }
}
