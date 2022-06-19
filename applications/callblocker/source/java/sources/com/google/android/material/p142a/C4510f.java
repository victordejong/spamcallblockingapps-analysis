package com.google.android.material.p142a;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
/* renamed from: com.google.android.material.a.f */
/* loaded from: classes-dex2jar.jar:com/google/android/material/a/f.class */
public class C4510f extends Property<ImageView, Matrix> {

    /* renamed from: a */
    private final Matrix f19578a = new Matrix();

    public C4510f() {
        super(Matrix.class, "imageMatrixProperty");
    }

    /* renamed from: a */
    public Matrix get(ImageView imageView) {
        this.f19578a.set(imageView.getImageMatrix());
        return this.f19578a;
    }

    /* renamed from: a */
    public void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
