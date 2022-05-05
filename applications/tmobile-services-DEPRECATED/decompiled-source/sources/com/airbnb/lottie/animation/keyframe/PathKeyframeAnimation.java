package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/PathKeyframeAnimation.class */
public class PathKeyframeAnimation extends KeyframeAnimation<PointF> {

    /* renamed from: k */
    private PathKeyframe f6021k;

    /* renamed from: i */
    private final PointF f6019i = new PointF();

    /* renamed from: j */
    private final float[] f6020j = new float[2];

    /* renamed from: l */
    private PathMeasure f6022l = new PathMeasure();

    public PathKeyframeAnimation(List<? extends Keyframe<PointF>> list) {
        super(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: o */
    public PointF mo16112i(Keyframe<PointF> keyframe, float f) {
        PointF pointF;
        PathKeyframe pathKeyframe = (PathKeyframe) keyframe;
        Path j = pathKeyframe.m16132j();
        if (j == null) {
            return keyframe.f6407b;
        }
        LottieValueCallback<A> lottieValueCallback = this.f6003e;
        if (lottieValueCallback != 0 && (pointF = (PointF) lottieValueCallback.m15655b(pathKeyframe.f6410e, pathKeyframe.f6411f.floatValue(), pathKeyframe.f6407b, pathKeyframe.f6408c, m16158e(), f, m16157f())) != null) {
            return pointF;
        }
        if (this.f6021k != pathKeyframe) {
            this.f6022l.setPath(j, false);
            this.f6021k = pathKeyframe;
        }
        PathMeasure pathMeasure = this.f6022l;
        pathMeasure.getPosTan(f * pathMeasure.getLength(), this.f6020j, null);
        PointF pointF2 = this.f6019i;
        float[] fArr = this.f6020j;
        pointF2.set(fArr[0], fArr[1]);
        return this.f6019i;
    }
}
