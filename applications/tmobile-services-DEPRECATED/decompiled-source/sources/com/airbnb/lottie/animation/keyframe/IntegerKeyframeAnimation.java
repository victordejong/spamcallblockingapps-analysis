package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation.class */
public class IntegerKeyframeAnimation extends KeyframeAnimation<Integer> {
    public IntegerKeyframeAnimation(List<Keyframe<Integer>> list) {
        super(list);
    }

    /* renamed from: o */
    public int m16139o() {
        return m16138p(m16160b(), m16159d());
    }

    /* renamed from: p */
    int m16138p(Keyframe<Integer> keyframe, float f) {
        Integer num;
        if (keyframe.f6407b == null || keyframe.f6408c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        LottieValueCallback<A> lottieValueCallback = this.f6003e;
        return (lottieValueCallback == 0 || (num = (Integer) lottieValueCallback.m15655b(keyframe.f6410e, keyframe.f6411f.floatValue(), keyframe.f6407b, keyframe.f6408c, f, m16158e(), m16157f())) == null) ? MiscUtils.m15699l(keyframe.m15673g(), keyframe.m15676d(), f) : num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public Integer mo16112i(Keyframe<Integer> keyframe, float f) {
        return Integer.valueOf(m16138p(keyframe, f));
    }
}
