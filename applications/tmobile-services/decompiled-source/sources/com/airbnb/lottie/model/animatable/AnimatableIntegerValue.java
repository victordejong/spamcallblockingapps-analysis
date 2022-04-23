package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.IntegerKeyframeAnimation;
import com.airbnb.lottie.value.Keyframe;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/animatable/AnimatableIntegerValue.class */
public class AnimatableIntegerValue extends BaseAnimatableValue<Integer, Integer> {
    public AnimatableIntegerValue() {
        super(100);
    }

    public AnimatableIntegerValue(List<Keyframe<Integer>> list) {
        super((List) list);
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    /* renamed from: a */
    public BaseKeyframeAnimation<Integer, Integer> mo16063a() {
        return new IntegerKeyframeAnimation(this.f6105a);
    }
}
