package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import com.airbnb.lottie.value.ScaleXY;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation.class */
public class ScaleKeyframeAnimation extends KeyframeAnimation<ScaleXY> {

    /* renamed from: i */
    private final ScaleXY f6024i = new ScaleXY();

    public ScaleKeyframeAnimation(List<Keyframe<ScaleXY>> list) {
        super(list);
    }

    /* renamed from: o */
    public ScaleXY mo16112i(Keyframe<ScaleXY> keyframe, float f) {
        ScaleXY scaleXY;
        ScaleXY scaleXY2;
        ScaleXY scaleXY3 = keyframe.f6407b;
        if (scaleXY3 == null || (scaleXY = keyframe.f6408c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        ScaleXY scaleXY4 = scaleXY3;
        ScaleXY scaleXY5 = scaleXY;
        LottieValueCallback<A> lottieValueCallback = this.f6003e;
        if (lottieValueCallback != 0 && (scaleXY2 = (ScaleXY) lottieValueCallback.m15655b(keyframe.f6410e, keyframe.f6411f.floatValue(), scaleXY4, scaleXY5, f, m16158e(), m16157f())) != null) {
            return scaleXY2;
        }
        this.f6024i.m15650d(MiscUtils.m15700k(scaleXY4.m15652b(), scaleXY5.m15652b(), f), MiscUtils.m15700k(scaleXY4.m15651c(), scaleXY5.m15651c(), f));
        return this.f6024i;
    }
}
