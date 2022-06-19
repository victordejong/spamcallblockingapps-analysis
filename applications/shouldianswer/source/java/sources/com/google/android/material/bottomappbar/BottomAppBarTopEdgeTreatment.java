package com.google.android.material.bottomappbar;

import com.google.android.flexbox.FlexItem;
import com.google.android.material.shape.EdgeTreatment;
import com.google.android.material.shape.ShapePath;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment.class */
public class BottomAppBarTopEdgeTreatment extends EdgeTreatment {
    private static final int ANGLE_LEFT = 180;
    private static final int ANGLE_UP = 270;
    private static final int ARC_HALF = 180;
    private static final int ARC_QUARTER = 90;
    private float cradleVerticalOffset;
    private float fabDiameter;
    private float fabMargin;
    private float horizontalOffset;
    private float roundedCornerRadius;

    public BottomAppBarTopEdgeTreatment(float f, float f2, float f3) {
        this.fabMargin = f;
        this.roundedCornerRadius = f2;
        this.cradleVerticalOffset = f3;
        if (f3 >= FlexItem.FLEX_GROW_DEFAULT) {
            this.horizontalOffset = FlexItem.FLEX_GROW_DEFAULT;
            return;
        }
        throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
    }

    public float getCradleVerticalOffset() {
        return this.cradleVerticalOffset;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f, float f2, ShapePath shapePath) {
        float f3 = this.fabDiameter;
        if (f3 == FlexItem.FLEX_GROW_DEFAULT) {
            shapePath.lineTo(f, FlexItem.FLEX_GROW_DEFAULT);
            return;
        }
        float f4 = ((this.fabMargin * 2.0f) + f3) / 2.0f;
        float f5 = f2 * this.roundedCornerRadius;
        float f6 = (f / 2.0f) + this.horizontalOffset;
        float f7 = (this.cradleVerticalOffset * f2) + ((1.0f - f2) * f4);
        if (f7 / f4 >= 1.0f) {
            shapePath.lineTo(f, FlexItem.FLEX_GROW_DEFAULT);
            return;
        }
        float f8 = f4 + f5;
        float f9 = f7 + f5;
        float sqrt = (float) Math.sqrt((f8 * f8) - (f9 * f9));
        float f10 = f6 - sqrt;
        float f11 = f6 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan(sqrt / f9));
        float f12 = 90.0f - degrees;
        float f13 = f10 - f5;
        shapePath.lineTo(f13, FlexItem.FLEX_GROW_DEFAULT);
        float f14 = f5 * 2.0f;
        shapePath.addArc(f13, FlexItem.FLEX_GROW_DEFAULT, f10 + f5, f14, 270.0f, degrees);
        shapePath.addArc(f6 - f4, (-f4) - f7, f6 + f4, f4 - f7, 180.0f - f12, (f12 * 2.0f) - 180.0f);
        shapePath.addArc(f11 - f5, FlexItem.FLEX_GROW_DEFAULT, f11 + f5, f14, 270.0f - degrees, degrees);
        shapePath.lineTo(f, FlexItem.FLEX_GROW_DEFAULT);
    }

    public float getFabCradleMargin() {
        return this.fabMargin;
    }

    public float getFabCradleRoundedCornerRadius() {
        return this.roundedCornerRadius;
    }

    public float getFabDiameter() {
        return this.fabDiameter;
    }

    public float getHorizontalOffset() {
        return this.horizontalOffset;
    }

    public void setCradleVerticalOffset(float f) {
        this.cradleVerticalOffset = f;
    }

    public void setFabCradleMargin(float f) {
        this.fabMargin = f;
    }

    public void setFabCradleRoundedCornerRadius(float f) {
        this.roundedCornerRadius = f;
    }

    public void setFabDiameter(float f) {
        this.fabDiameter = f;
    }

    public void setHorizontalOffset(float f) {
        this.horizontalOffset = f;
    }
}
