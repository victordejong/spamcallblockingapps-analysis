package com.airbnb.lottie.utils;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/utils/MeanCalculator.class */
public class MeanCalculator {

    /* renamed from: a */
    private float f6397a;

    /* renamed from: b */
    private int f6398b;

    /* renamed from: a */
    public void m15711a(float f) {
        float f2 = this.f6397a + f;
        this.f6397a = f2;
        int i = this.f6398b + 1;
        this.f6398b = i;
        if (i == Integer.MAX_VALUE) {
            this.f6397a = f2 / 2.0f;
            this.f6398b = i / 2;
        }
    }
}
