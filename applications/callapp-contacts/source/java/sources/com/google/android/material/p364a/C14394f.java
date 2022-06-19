package com.google.android.material.p364a;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
/* renamed from: com.google.android.material.a.f */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/a/f.class */
public final class C14394f extends Property<ImageView, Matrix> {

    /* renamed from: a */
    private final Matrix f52377a = new Matrix();

    public C14394f() {
        super(Matrix.class, "imageMatrixProperty");
    }

    @Override // android.util.Property
    public final /* synthetic */ Matrix get(ImageView imageView) {
        this.f52377a.set(imageView.getImageMatrix());
        return this.f52377a;
    }

    @Override // android.util.Property
    public final /* synthetic */ void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
