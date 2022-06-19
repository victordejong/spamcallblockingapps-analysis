package com.google.android.material.p142a;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
/* renamed from: com.google.android.material.a.g */
/* loaded from: classes-dex2jar.jar:com/google/android/material/a/g.class */
public class C4511g implements TypeEvaluator<Matrix> {

    /* renamed from: a */
    private final float[] f19579a = new float[9];

    /* renamed from: b */
    private final float[] f19580b = new float[9];

    /* renamed from: c */
    private final Matrix f19581c = new Matrix();

    /* renamed from: a */
    public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.f19579a);
        matrix2.getValues(this.f19580b);
        for (int i = 0; i < 9; i++) {
            this.f19580b[i] = ((this.f19580b[i] - this.f19579a[i]) * f) + this.f19579a[i];
        }
        this.f19581c.setValues(this.f19580b);
        return this.f19581c;
    }
}
