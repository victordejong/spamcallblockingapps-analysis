package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.Arrays;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/shape/AdjustedCornerSize.class */
public final class AdjustedCornerSize implements CornerSize {

    /* renamed from: a */
    private final CornerSize f11048a;

    /* renamed from: b */
    private final float f11049b;

    public AdjustedCornerSize(float f, @NonNull CornerSize cornerSize) {
        while (cornerSize instanceof AdjustedCornerSize) {
            cornerSize = ((AdjustedCornerSize) cornerSize).f11048a;
            f += ((AdjustedCornerSize) cornerSize).f11049b;
        }
        this.f11048a = cornerSize;
        this.f11049b = f;
    }

    @Override // com.google.android.material.shape.CornerSize
    /* renamed from: a */
    public float mo9279a(@NonNull RectF rectF) {
        return Math.max(0.0f, this.f11048a.mo9279a(rectF) + this.f11049b);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdjustedCornerSize)) {
            return false;
        }
        AdjustedCornerSize adjustedCornerSize = (AdjustedCornerSize) obj;
        if (!this.f11048a.equals(adjustedCornerSize.f11048a) || this.f11049b != adjustedCornerSize.f11049b) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f11048a, Float.valueOf(this.f11049b)});
    }
}
