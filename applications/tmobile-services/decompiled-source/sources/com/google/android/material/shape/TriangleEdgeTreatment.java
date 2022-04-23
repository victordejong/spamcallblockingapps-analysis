package com.google.android.material.shape;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/material/shape/TriangleEdgeTreatment.class */
public class TriangleEdgeTreatment extends EdgeTreatment {

    /* renamed from: a */
    private final float f11186a;

    /* renamed from: b */
    private final boolean f11187b;

    @Override // com.google.android.material.shape.EdgeTreatment
    /* renamed from: b */
    public void mo9150b(float f, float f2, float f3, @NonNull ShapePath shapePath) {
        shapePath.m9191m(f2 - (this.f11186a * f3), 0.0f);
        shapePath.m9191m(f2, (this.f11187b ? this.f11186a : -this.f11186a) * f3);
        shapePath.m9191m(f2 + (this.f11186a * f3), 0.0f);
        shapePath.m9191m(f, 0.0f);
    }
}
