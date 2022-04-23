package com.google.android.material.shape;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/material/shape/RoundedCornerTreatment.class */
public class RoundedCornerTreatment extends CornerTreatment {

    /* renamed from: a */
    float f11109a = -1.0f;

    @Override // com.google.android.material.shape.CornerTreatment
    /* renamed from: b */
    public void mo9278b(@NonNull ShapePath shapePath, float f, float f2, float f3) {
        shapePath.m9189o(0.0f, f3 * f2, 180.0f, 180.0f - f);
        float f4 = f3 * 2.0f * f2;
        shapePath.m9203a(0.0f, 0.0f, f4, f4, 180.0f, f);
    }
}
