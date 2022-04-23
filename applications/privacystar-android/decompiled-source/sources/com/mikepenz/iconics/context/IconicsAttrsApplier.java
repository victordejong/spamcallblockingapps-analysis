package com.mikepenz.iconics.context;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.util.AttributeSet;
import com.mikepenz.iconics.IconicsDrawable;
import com.mikepenz.iconics.core.C1486R;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/context/IconicsAttrsApplier.class */
public class IconicsAttrsApplier {
    @Nullable
    public static IconicsDrawable getIconicsDrawable(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1486R.styleable.Iconics);
        try {
            return new IconicsAttrsExtractor(context, obtainStyledAttributes).iconId(C1486R.styleable.Iconics_ico_icon).colorsId(C1486R.styleable.Iconics_ico_color).sizeId(C1486R.styleable.Iconics_ico_size).paddingId(C1486R.styleable.Iconics_ico_padding).contourColorId(C1486R.styleable.Iconics_ico_contour_color).contourWidthId(C1486R.styleable.Iconics_ico_contour_width).backgroundColorId(C1486R.styleable.Iconics_ico_background_color).cornerRadiusId(C1486R.styleable.Iconics_ico_corner_radius).backgroundContourColorId(C1486R.styleable.Iconics_ico_background_contour_color).backgroundContourWidthId(C1486R.styleable.Iconics_ico_background_contour_width).offsetXId(C1486R.styleable.Iconics_ico_offset_x).offsetYId(C1486R.styleable.Iconics_ico_offset_y).extractWithOffsets();
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
