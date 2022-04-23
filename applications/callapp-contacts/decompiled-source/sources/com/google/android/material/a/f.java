package com.google.android.material.a;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/a/f.class */
public final class f extends Property<ImageView, Matrix> {

    /* renamed from: a  reason: collision with root package name */
    private final Matrix f30181a = new Matrix();

    public f() {
        super(Matrix.class, "imageMatrixProperty");
    }

    @Override // android.util.Property
    public final /* synthetic */ Matrix get(ImageView imageView) {
        this.f30181a.set(imageView.getImageMatrix());
        return this.f30181a;
    }

    @Override // android.util.Property
    public final /* synthetic */ void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
