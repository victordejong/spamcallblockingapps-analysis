package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ScaleKeyframeAnimation;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.ScaleXY;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/animatable/AnimatableScaleValue.class */
public class AnimatableScaleValue extends BaseAnimatableValue<ScaleXY, ScaleXY> {
    AnimatableScaleValue() {
        this(new ScaleXY(1.0f, 1.0f));
    }

    public AnimatableScaleValue(ScaleXY scaleXY) {
        super(scaleXY);
    }

    public AnimatableScaleValue(List<Keyframe<ScaleXY>> list) {
        super((List) list);
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    /* renamed from: a */
    public BaseKeyframeAnimation<ScaleXY, ScaleXY> mo16063a() {
        return new ScaleKeyframeAnimation(this.f6105a);
    }
}
