package com.google.android.material.a;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/a/g.class */
public class g implements TypeEvaluator<Matrix> {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f30182a = new float[9];

    /* renamed from: b  reason: collision with root package name */
    private final float[] f30183b = new float[9];

    /* renamed from: c  reason: collision with root package name */
    private final Matrix f30184c = new Matrix();

    /* renamed from: a */
    public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.f30182a);
        matrix2.getValues(this.f30183b);
        for (int i = 0; i < 9; i++) {
            float[] fArr = this.f30183b;
            float f2 = fArr[i];
            float[] fArr2 = this.f30182a;
            fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
        }
        this.f30184c.setValues(this.f30183b);
        return this.f30184c;
    }
}
