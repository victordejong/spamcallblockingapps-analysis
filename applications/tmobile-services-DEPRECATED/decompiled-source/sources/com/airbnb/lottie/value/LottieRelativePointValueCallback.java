package com.airbnb.lottie.value;

import android.graphics.PointF;
import com.airbnb.lottie.utils.MiscUtils;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/value/LottieRelativePointValueCallback.class */
public class LottieRelativePointValueCallback extends LottieValueCallback<PointF> {

    /* renamed from: c */
    private final PointF f6428c = new PointF();

    /* renamed from: d */
    public PointF m15658d(LottieFrameInfo<PointF> lottieFrameInfo) {
        T t = this.f6430b;
        if (t != 0) {
            return (PointF) t;
        }
        throw new IllegalArgumentException("You must provide a static value in the constructor , call setValue, or override getValue.");
    }

    /* renamed from: e */
    public final PointF mo15656a(LottieFrameInfo<PointF> lottieFrameInfo) {
        this.f6428c.set(MiscUtils.m15700k(lottieFrameInfo.m15668d().x, lottieFrameInfo.m15671a().x, lottieFrameInfo.m15670b()), MiscUtils.m15700k(lottieFrameInfo.m15668d().y, lottieFrameInfo.m15671a().y, lottieFrameInfo.m15670b()));
        PointF d = m15658d(lottieFrameInfo);
        this.f6428c.offset(d.x, d.y);
        return this.f6428c;
    }
}
