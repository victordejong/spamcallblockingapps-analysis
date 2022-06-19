package com.google.android.material.shape;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/shape/EdgeTreatment.class */
public class EdgeTreatment {
    public boolean forceIntersection() {
        return false;
    }

    public void getEdgePath(float f, float f2, float f3, ShapePath shapePath) {
        shapePath.lineTo(f, 0.0f);
    }

    @Deprecated
    public void getEdgePath(float f, float f2, ShapePath shapePath) {
        getEdgePath(f, f / 2.0f, f2, shapePath);
    }
}
