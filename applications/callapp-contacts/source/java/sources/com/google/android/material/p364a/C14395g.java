package com.google.android.material.p364a;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
/* renamed from: com.google.android.material.a.g */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/a/g.class */
public class C14395g implements TypeEvaluator<Matrix> {

    /* renamed from: a */
    private final float[] f52378a = new float[9];

    /* renamed from: b */
    private final float[] f52379b = new float[9];

    /* renamed from: c */
    private final Matrix f52380c = new Matrix();

    /* renamed from: a */
    public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.f52378a);
        matrix2.getValues(this.f52379b);
        for (int i = 0; i < 9; i++) {
            float[] fArr = this.f52379b;
            float f2 = fArr[i];
            float[] fArr2 = this.f52378a;
            fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
        }
        this.f52380c.setValues(this.f52379b);
        return this.f52380c;
    }
}
