package com.airbnb.lottie.value;

import com.airbnb.lottie.utils.MiscUtils;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/value/LottieRelativeIntegerValueCallback.class */
public class LottieRelativeIntegerValueCallback extends LottieValueCallback<Integer> {
    /* renamed from: d */
    public Integer m15660d(LottieFrameInfo<Integer> lottieFrameInfo) {
        T t = this.f6430b;
        if (t != 0) {
            return (Integer) t;
        }
        throw new IllegalArgumentException("You must provide a static value in the constructor , call setValue, or override getValue.");
    }

    /* renamed from: e */
    public Integer mo15656a(LottieFrameInfo<Integer> lottieFrameInfo) {
        return Integer.valueOf(MiscUtils.m15699l(lottieFrameInfo.m15668d().intValue(), lottieFrameInfo.m15671a().intValue(), lottieFrameInfo.m15670b()) + m15660d(lottieFrameInfo).intValue());
    }
}
