package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.value.Keyframe;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation.class */
public class GradientColorKeyframeAnimation extends KeyframeAnimation<GradientColor> {

    /* renamed from: i */
    private final GradientColor f6013i;

    public GradientColorKeyframeAnimation(List<Keyframe<GradientColor>> list) {
        super(list);
        int i = 0;
        GradientColor gradientColor = list.get(0).f6407b;
        i = gradientColor != null ? gradientColor.m16053c() : i;
        this.f6013i = new GradientColor(new float[i], new int[i]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public GradientColor mo16112i(Keyframe<GradientColor> keyframe, float f) {
        this.f6013i.m16052d(keyframe.f6407b, keyframe.f6408c, f);
        return this.f6013i;
    }
}
