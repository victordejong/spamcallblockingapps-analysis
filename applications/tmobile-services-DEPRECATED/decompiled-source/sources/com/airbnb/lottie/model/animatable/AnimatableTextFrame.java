package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.value.Keyframe;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/animatable/AnimatableTextFrame.class */
public class AnimatableTextFrame extends BaseAnimatableValue<DocumentData, DocumentData> {
    public AnimatableTextFrame(List<Keyframe<DocumentData>> list) {
        super((List) list);
    }

    /* renamed from: d */
    public TextKeyframeAnimation mo16063a() {
        return new TextKeyframeAnimation(this.f6105a);
    }
}
