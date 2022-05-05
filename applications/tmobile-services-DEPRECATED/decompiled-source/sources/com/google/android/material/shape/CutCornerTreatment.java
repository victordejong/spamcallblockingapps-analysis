package com.google.android.material.shape;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/material/shape/CutCornerTreatment.class */
public class CutCornerTreatment extends CornerTreatment {

    /* renamed from: a */
    float f11050a = -1.0f;

    @Override // com.google.android.material.shape.CornerTreatment
    /* renamed from: b */
    public void mo9278b(@NonNull ShapePath shapePath, float f, float f2, float f3) {
        shapePath.m9189o(0.0f, f3 * f2, 180.0f, 180.0f - f);
        double d = f3;
        double d2 = f2;
        shapePath.m9191m((float) (Math.sin(Math.toRadians(f)) * d * d2), (float) (Math.sin(Math.toRadians(90.0f - f)) * d * d2));
    }
}
