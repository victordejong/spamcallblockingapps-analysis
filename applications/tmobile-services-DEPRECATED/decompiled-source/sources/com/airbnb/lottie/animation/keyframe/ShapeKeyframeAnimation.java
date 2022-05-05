package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import com.airbnb.lottie.model.content.ShapeData;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation.class */
public class ShapeKeyframeAnimation extends BaseKeyframeAnimation<ShapeData, Path> {

    /* renamed from: i */
    private final ShapeData f6025i = new ShapeData();

    /* renamed from: j */
    private final Path f6026j = new Path();

    public ShapeKeyframeAnimation(List<Keyframe<ShapeData>> list) {
        super(list);
    }

    /* renamed from: o */
    public Path mo16112i(Keyframe<ShapeData> keyframe, float f) {
        this.f6025i.m16001c(keyframe.f6407b, keyframe.f6408c, f);
        MiscUtils.m15702i(this.f6025i, this.f6026j);
        return this.f6026j;
    }
}
