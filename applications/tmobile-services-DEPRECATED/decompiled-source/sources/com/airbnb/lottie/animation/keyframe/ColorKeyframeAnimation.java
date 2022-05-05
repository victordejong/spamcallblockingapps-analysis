package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.utils.GammaEvaluator;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation.class */
public class ColorKeyframeAnimation extends KeyframeAnimation<Integer> {
    public ColorKeyframeAnimation(List<Keyframe<Integer>> list) {
        super(list);
    }

    /* renamed from: o */
    public int m16146o() {
        return m16145p(m16160b(), m16159d());
    }

    /* renamed from: p */
    public int m16145p(Keyframe<Integer> keyframe, float f) {
        Integer num;
        Integer num2 = keyframe.f6407b;
        if (num2 == null || keyframe.f6408c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        int intValue = num2.intValue();
        int intValue2 = keyframe.f6408c.intValue();
        LottieValueCallback<A> lottieValueCallback = this.f6003e;
        return (lottieValueCallback == 0 || (num = (Integer) lottieValueCallback.m15655b(keyframe.f6410e, keyframe.f6411f.floatValue(), Integer.valueOf(intValue), Integer.valueOf(intValue2), f, m16158e(), m16157f())) == null) ? GammaEvaluator.m15744c(MiscUtils.m15708c(f, 0.0f, 1.0f), intValue, intValue2) : num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public Integer mo16112i(Keyframe<Integer> keyframe, float f) {
        return Integer.valueOf(m16145p(keyframe, f));
    }
}
