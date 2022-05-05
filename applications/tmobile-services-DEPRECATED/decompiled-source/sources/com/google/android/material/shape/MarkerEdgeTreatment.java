package com.google.android.material.shape;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/material/shape/MarkerEdgeTreatment.class */
public final class MarkerEdgeTreatment extends EdgeTreatment {

    /* renamed from: a */
    private final float f11057a;

    public MarkerEdgeTreatment(float f) {
        this.f11057a = f - 0.001f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.shape.EdgeTreatment
    /* renamed from: a */
    public boolean mo9280a() {
        return true;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    /* renamed from: b */
    public void mo9150b(float f, float f2, float f3, @NonNull ShapePath shapePath) {
        float sqrt = (float) ((this.f11057a * Math.sqrt(2.0d)) / 2.0d);
        float sqrt2 = (float) Math.sqrt(Math.pow(this.f11057a, 2.0d) - Math.pow(sqrt, 2.0d));
        shapePath.m9190n(f2 - sqrt, ((float) (-((this.f11057a * Math.sqrt(2.0d)) - this.f11057a))) + sqrt2);
        shapePath.m9191m(f2, (float) (-((this.f11057a * Math.sqrt(2.0d)) - this.f11057a)));
        shapePath.m9191m(f2 + sqrt, ((float) (-((this.f11057a * Math.sqrt(2.0d)) - this.f11057a))) + sqrt2);
    }
}
