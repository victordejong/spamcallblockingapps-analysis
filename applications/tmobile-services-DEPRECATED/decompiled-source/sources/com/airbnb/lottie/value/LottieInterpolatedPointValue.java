package com.airbnb.lottie.value;

import android.graphics.PointF;
import com.airbnb.lottie.utils.MiscUtils;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/value/LottieInterpolatedPointValue.class */
public class LottieInterpolatedPointValue extends LottieInterpolatedValue<PointF> {

    /* renamed from: f */
    private final PointF f6424f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public PointF mo15663d(PointF pointF, PointF pointF2, float f) {
        this.f6424f.set(MiscUtils.m15700k(pointF.x, pointF2.x, f), MiscUtils.m15700k(pointF.y, pointF2.y, f));
        return this.f6424f;
    }
}
