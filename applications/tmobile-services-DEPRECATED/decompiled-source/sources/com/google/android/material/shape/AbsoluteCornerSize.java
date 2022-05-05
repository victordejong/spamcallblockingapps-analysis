package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/material/shape/AbsoluteCornerSize.class */
public final class AbsoluteCornerSize implements CornerSize {

    /* renamed from: a */
    private final float f11047a;

    public AbsoluteCornerSize(float f) {
        this.f11047a = f;
    }

    @Override // com.google.android.material.shape.CornerSize
    /* renamed from: a */
    public float mo9279a(@NonNull RectF rectF) {
        return this.f11047a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbsoluteCornerSize)) {
            return false;
        }
        if (this.f11047a != ((AbsoluteCornerSize) obj).f11047a) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f11047a)});
    }
}
