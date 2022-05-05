package com.airbnb.lottie.value;

import androidx.annotation.RestrictTo;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/value/LottieFrameInfo.class */
public class LottieFrameInfo<T> {

    /* renamed from: a */
    private T f6420a;

    /* renamed from: b */
    private T f6421b;

    /* renamed from: c */
    private float f6422c;

    /* renamed from: d */
    private float f6423d;

    /* renamed from: a */
    public T m15671a() {
        return this.f6421b;
    }

    /* renamed from: b */
    public float m15670b() {
        return this.f6422c;
    }

    /* renamed from: c */
    public float m15669c() {
        return this.f6423d;
    }

    /* renamed from: d */
    public T m15668d() {
        return this.f6420a;
    }

    @RestrictTo
    /* renamed from: e */
    public LottieFrameInfo<T> m15667e(float f, float f2, T t, T t2, float f3, float f4, float f5) {
        this.f6420a = t;
        this.f6421b = t2;
        this.f6422c = f4;
        this.f6423d = f5;
        return this;
    }
}
