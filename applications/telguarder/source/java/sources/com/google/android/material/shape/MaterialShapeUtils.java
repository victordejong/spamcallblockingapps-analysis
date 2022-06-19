package com.google.android.material.shape;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.internal.ViewUtils;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/shape/MaterialShapeUtils.class */
public class MaterialShapeUtils {
    private MaterialShapeUtils() {
    }

    public static CornerTreatment createCornerTreatment(int i) {
        return i != 0 ? i != 1 ? createDefaultCornerTreatment() : new CutCornerTreatment() : new RoundedCornerTreatment();
    }

    public static CornerTreatment createDefaultCornerTreatment() {
        return new RoundedCornerTreatment();
    }

    public static EdgeTreatment createDefaultEdgeTreatment() {
        return new EdgeTreatment();
    }

    public static void setElevation(View view, float f) {
        Drawable background = view.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) background).setElevation(f);
        }
    }

    public static void setParentAbsoluteElevation(View view) {
        Drawable background = view.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            setParentAbsoluteElevation(view, (MaterialShapeDrawable) background);
        }
    }

    public static void setParentAbsoluteElevation(View view, MaterialShapeDrawable materialShapeDrawable) {
        if (materialShapeDrawable.isElevationOverlayEnabled()) {
            materialShapeDrawable.setParentAbsoluteElevation(ViewUtils.getParentAbsoluteElevation(view));
        }
    }
}
