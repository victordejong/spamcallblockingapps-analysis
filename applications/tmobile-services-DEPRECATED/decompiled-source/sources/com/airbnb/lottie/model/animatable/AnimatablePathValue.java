package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.PathKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation;
import com.airbnb.lottie.value.Keyframe;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/animatable/AnimatablePathValue.class */
public class AnimatablePathValue implements AnimatableValue<PointF, PointF> {

    /* renamed from: a */
    private final List<Keyframe<PointF>> f6089a;

    public AnimatablePathValue() {
        this.f6089a = Collections.singletonList(new Keyframe(new PointF(0.0f, 0.0f)));
    }

    public AnimatablePathValue(List<Keyframe<PointF>> list) {
        this.f6089a = list;
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    /* renamed from: a */
    public BaseKeyframeAnimation<PointF, PointF> mo16063a() {
        return this.f6089a.get(0).m15672h() ? new PointKeyframeAnimation(this.f6089a) : new PathKeyframeAnimation(this.f6089a);
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    /* renamed from: b */
    public List<Keyframe<PointF>> mo16062b() {
        return this.f6089a;
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    /* renamed from: c */
    public boolean mo16061c() {
        boolean z = false;
        if (this.f6089a.size() == 1) {
            z = false;
            if (this.f6089a.get(0).m15672h()) {
                z = true;
            }
        }
        return z;
    }
}
