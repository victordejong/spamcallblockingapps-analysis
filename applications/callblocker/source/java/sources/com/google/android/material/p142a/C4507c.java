package com.google.android.material.p142a;

import android.animation.TypeEvaluator;
/* renamed from: com.google.android.material.a.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/a/c.class */
public class C4507c implements TypeEvaluator<Integer> {

    /* renamed from: a */
    private static final C4507c f19574a = new C4507c();

    /* renamed from: a */
    public static C4507c m3853a() {
        return f19574a;
    }

    /* renamed from: a */
    public Integer evaluate(float f, Integer num, Integer num2) {
        int intValue = num.intValue();
        float f2 = ((intValue >> 24) & 255) / 255.0f;
        float f3 = ((intValue >> 16) & 255) / 255.0f;
        float f4 = ((intValue >> 8) & 255) / 255.0f;
        float f5 = (intValue & 255) / 255.0f;
        int intValue2 = num2.intValue();
        float f6 = ((intValue2 >> 24) & 255) / 255.0f;
        float f7 = ((intValue2 >> 16) & 255) / 255.0f;
        float f8 = ((intValue2 >> 8) & 255) / 255.0f;
        float f9 = (intValue2 & 255) / 255.0f;
        float pow = (float) Math.pow(f3, 2.2d);
        float pow2 = (float) Math.pow(f4, 2.2d);
        float pow3 = (float) Math.pow(f5, 2.2d);
        float pow4 = (float) Math.pow(f7, 2.2d);
        float pow5 = (float) Math.pow(f8, 2.2d);
        float pow6 = (float) Math.pow(f9, 2.2d);
        float pow7 = (float) Math.pow(pow + ((pow4 - pow) * f), 0.45454545454545453d);
        float pow8 = (float) Math.pow(pow2 + ((pow5 - pow2) * f), 0.45454545454545453d);
        return Integer.valueOf(Math.round(((float) Math.pow(pow3 + ((pow6 - pow3) * f), 0.45454545454545453d)) * 255.0f) | (Math.round((f2 + ((f6 - f2) * f)) * 255.0f) << 24) | (Math.round(pow7 * 255.0f) << 16) | (Math.round(pow8 * 255.0f) << 8));
    }
}
