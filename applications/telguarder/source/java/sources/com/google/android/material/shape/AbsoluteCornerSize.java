package com.google.android.material.shape;

import android.graphics.RectF;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/shape/AbsoluteCornerSize.class */
public final class AbsoluteCornerSize implements CornerSize {
    private final float size;

    public AbsoluteCornerSize(float f) {
        this.size = f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbsoluteCornerSize)) {
            return false;
        }
        if (this.size != ((AbsoluteCornerSize) obj).size) {
            z = false;
        }
        return z;
    }

    public float getCornerSize() {
        return this.size;
    }

    @Override // com.google.android.material.shape.CornerSize
    public float getCornerSize(RectF rectF) {
        return this.size;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.size)});
    }
}
