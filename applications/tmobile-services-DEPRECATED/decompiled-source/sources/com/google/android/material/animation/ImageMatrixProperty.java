package com.google.android.material.animation;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/material/animation/ImageMatrixProperty.class */
public class ImageMatrixProperty extends Property<ImageView, Matrix> {

    /* renamed from: a */
    private final Matrix f9932a = new Matrix();

    public ImageMatrixProperty() {
        super(Matrix.class, "imageMatrixProperty");
    }

    @NonNull
    /* renamed from: a */
    public Matrix get(@NonNull ImageView imageView) {
        this.f9932a.set(imageView.getImageMatrix());
        return this.f9932a;
    }

    /* renamed from: b */
    public void set(@NonNull ImageView imageView, @NonNull Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
