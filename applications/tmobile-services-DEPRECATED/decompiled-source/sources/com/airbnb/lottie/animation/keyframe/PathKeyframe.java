package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/PathKeyframe.class */
public class PathKeyframe extends Keyframe<PointF> {
    @Nullable

    /* renamed from: o */
    private Path f6017o;

    /* renamed from: p */
    private final Keyframe<PointF> f6018p;

    public PathKeyframe(LottieComposition lottieComposition, Keyframe<PointF> keyframe) {
        super(lottieComposition, keyframe.f6407b, keyframe.f6408c, keyframe.f6409d, keyframe.f6410e, keyframe.f6411f);
        this.f6018p = keyframe;
        m16133i();
    }

    /* renamed from: i */
    public void m16133i() {
        T t;
        T t2 = this.f6408c;
        boolean z = (t2 == 0 || (t = this.f6407b) == 0 || !((PointF) t).equals(((PointF) t2).x, ((PointF) t2).y)) ? false : true;
        T t3 = this.f6408c;
        if (t3 != 0 && !z) {
            PointF pointF = (PointF) this.f6407b;
            PointF pointF2 = (PointF) t3;
            Keyframe<PointF> keyframe = this.f6018p;
            this.f6017o = Utils.m15694d(pointF, pointF2, keyframe.f6418m, keyframe.f6419n);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: j */
    public Path m16132j() {
        return this.f6017o;
    }
}
