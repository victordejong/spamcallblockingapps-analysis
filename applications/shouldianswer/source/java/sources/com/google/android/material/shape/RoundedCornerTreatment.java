package com.google.android.material.shape;

import com.google.android.flexbox.FlexItem;
/* loaded from: classes-dex2jar.jar:com/google/android/material/shape/RoundedCornerTreatment.class */
public class RoundedCornerTreatment extends CornerTreatment {
    private final float radius;

    public RoundedCornerTreatment(float f) {
        this.radius = f;
    }

    @Override // com.google.android.material.shape.CornerTreatment
    public void getCornerPath(float f, float f2, ShapePath shapePath) {
        shapePath.reset(FlexItem.FLEX_GROW_DEFAULT, this.radius * f2);
        float f3 = this.radius;
        shapePath.addArc(FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, f3 * 2.0f * f2, f3 * 2.0f * f2, f + 180.0f, 90.0f);
    }
}
