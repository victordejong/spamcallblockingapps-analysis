package com.google.android.material.transition;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.NonNull;
import androidx.transition.PathMotion;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/MaterialArcMotion.class */
public final class MaterialArcMotion extends PathMotion {
    /* renamed from: b */
    private static PointF m8630b(float f, float f2, float f3, float f4) {
        return f2 > f4 ? new PointF(f3, f2) : new PointF(f, f4);
    }

    @Override // androidx.transition.PathMotion
    @NonNull
    /* renamed from: a */
    public Path mo8631a(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(f, f2);
        PointF b = m8630b(f, f2, f3, f4);
        path.quadTo(b.x, b.y, f3, f4);
        return path;
    }
}
