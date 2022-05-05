package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/material/shape/RelativeCornerSize.class */
public final class RelativeCornerSize implements CornerSize {

    /* renamed from: a */
    private final float f11108a;

    public RelativeCornerSize(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.f11108a = f;
    }

    @Override // com.google.android.material.shape.CornerSize
    /* renamed from: a */
    public float mo9279a(@NonNull RectF rectF) {
        return this.f11108a * rectF.height();
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RelativeCornerSize)) {
            return false;
        }
        if (this.f11108a != ((RelativeCornerSize) obj).f11108a) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f11108a)});
    }
}
