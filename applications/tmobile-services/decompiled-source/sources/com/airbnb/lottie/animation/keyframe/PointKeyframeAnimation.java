package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/PointKeyframeAnimation.class */
public class PointKeyframeAnimation extends KeyframeAnimation<PointF> {

    /* renamed from: i */
    private final PointF f6023i = new PointF();

    public PointKeyframeAnimation(List<Keyframe<PointF>> list) {
        super(list);
    }

    /* renamed from: o */
    public PointF mo16112i(Keyframe<PointF> keyframe, float f) {
        PointF pointF;
        PointF pointF2;
        PointF pointF3 = keyframe.f6407b;
        if (pointF3 == null || (pointF = keyframe.f6408c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        PointF pointF4 = pointF3;
        PointF pointF5 = pointF;
        LottieValueCallback<A> lottieValueCallback = this.f6003e;
        if (lottieValueCallback != 0 && (pointF2 = (PointF) lottieValueCallback.m15655b(keyframe.f6410e, keyframe.f6411f.floatValue(), pointF4, pointF5, f, m16158e(), m16157f())) != null) {
            return pointF2;
        }
        PointF pointF6 = this.f6023i;
        float f2 = pointF4.x;
        float f3 = pointF5.x;
        float f4 = pointF4.y;
        pointF6.set(f2 + ((f3 - f2) * f), f4 + (f * (pointF5.y - f4)));
        return this.f6023i;
    }
}
