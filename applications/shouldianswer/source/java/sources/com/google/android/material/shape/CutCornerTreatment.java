package com.google.android.material.shape;

import com.google.android.flexbox.FlexItem;
/* loaded from: classes-dex2jar.jar:com/google/android/material/shape/CutCornerTreatment.class */
public class CutCornerTreatment extends CornerTreatment {
    private final float size;

    public CutCornerTreatment(float f) {
        this.size = f;
    }

    @Override // com.google.android.material.shape.CornerTreatment
    public void getCornerPath(float f, float f2, ShapePath shapePath) {
        shapePath.reset(FlexItem.FLEX_GROW_DEFAULT, this.size * f2);
        double d = f;
        double d2 = f2;
        shapePath.lineTo((float) (Math.sin(d) * this.size * d2), (float) (Math.cos(d) * this.size * d2));
    }
}
