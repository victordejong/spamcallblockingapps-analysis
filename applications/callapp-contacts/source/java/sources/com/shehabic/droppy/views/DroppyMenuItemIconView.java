package com.shehabic.droppy.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.shehabic.droppy.C17101f;
/* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/views/DroppyMenuItemIconView.class */
public class DroppyMenuItemIconView extends AppCompatImageView {
    public DroppyMenuItemIconView(Context context) {
        this(context, null);
    }

    public DroppyMenuItemIconView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C17101f.C17102a.droppyMenuItemIconStyle);
    }

    public DroppyMenuItemIconView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int dimension = (int) getResources().getDimension(C17101f.C17105d.default_menu_item_icon_maxWidth);
        int dimension2 = (int) getResources().getDimension(C17101f.C17105d.default_menu_item_icon_maxHeight);
        int dimension3 = (int) getResources().getDimension(C17101f.C17105d.default_menu_item_icon_marginLeft);
        int dimension4 = (int) getResources().getDimension(C17101f.C17105d.default_menu_item_icon_marginRight);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C17101f.C17107f.DroppyMenuItemIconView, i, 0);
        int dimension5 = (int) obtainStyledAttributes.getDimension(C17101f.C17107f.DroppyMenuItemIconView_android_maxWidth, dimension);
        int dimension6 = (int) obtainStyledAttributes.getDimension(C17101f.C17107f.DroppyMenuItemIconView_android_maxHeight, dimension2);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(C17101f.C17107f.DroppyMenuItemIconView_android_layout_width, -2);
        int layoutDimension2 = obtainStyledAttributes.getLayoutDimension(C17101f.C17107f.DroppyMenuItemIconView_android_layout_height, -2);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(layoutDimension, layoutDimension2);
        layoutParams.rightMargin = obtainStyledAttributes.getDimensionPixelSize(C17101f.C17107f.DroppyMenuItemIconView_android_layout_marginRight, dimension4);
        layoutParams.leftMargin = obtainStyledAttributes.getDimensionPixelSize(C17101f.C17107f.DroppyMenuItemIconView_android_layout_marginLeft, dimension3);
        layoutParams.width = layoutDimension;
        layoutParams.height = layoutDimension2;
        layoutParams.weight = obtainStyledAttributes.getFloat(C17101f.C17107f.DroppyMenuItemIconView_android_layout_weight, BitmapDescriptorFactory.HUE_RED);
        layoutParams.gravity = obtainStyledAttributes.getInteger(C17101f.C17107f.DroppyMenuItemIconView_android_layout_gravity, 8388627);
        setMaxHeight(dimension5);
        setMaxHeight(dimension6);
        setLayoutParams(layoutParams);
        obtainStyledAttributes.recycle();
    }
}
