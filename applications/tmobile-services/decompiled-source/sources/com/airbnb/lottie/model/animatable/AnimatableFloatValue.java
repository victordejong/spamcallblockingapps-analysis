package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.value.Keyframe;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/animatable/AnimatableFloatValue.class */
public class AnimatableFloatValue extends BaseAnimatableValue<Float, Float> {
    AnimatableFloatValue() {
        super(Float.valueOf(0.0f));
    }

    public AnimatableFloatValue(List<Keyframe<Float>> list) {
        super((List) list);
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    /* renamed from: a */
    public BaseKeyframeAnimation<Float, Float> mo16063a() {
        return new FloatKeyframeAnimation(this.f6105a);
    }
}
