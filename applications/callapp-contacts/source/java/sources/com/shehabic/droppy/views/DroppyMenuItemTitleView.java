package com.shehabic.droppy.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.shehabic.droppy.C17101f;
/* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/views/DroppyMenuItemTitleView.class */
public class DroppyMenuItemTitleView extends AppCompatTextView {
    public DroppyMenuItemTitleView(Context context) {
        this(context, null);
    }

    public DroppyMenuItemTitleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C17101f.C17102a.droppyMenuItemTitleStyle);
    }

    public DroppyMenuItemTitleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int dimension = (int) getResources().getDimension(C17101f.C17105d.default_menu_item_title_minWidth);
        int dimension2 = (int) getResources().getDimension(C17101f.C17105d.default_menu_item_title_minHeight);
        int color = getResources().getColor(C17101f.C17104c.default_menu_item_title_textColor);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C17101f.C17107f.DroppyMenuItemTitleView, i, 0);
        int dimension3 = (int) obtainStyledAttributes.getDimension(C17101f.C17107f.DroppyMenuItemTitleView_android_minWidth, dimension);
        int dimension4 = (int) obtainStyledAttributes.getDimension(C17101f.C17107f.DroppyMenuItemTitleView_android_minHeight, dimension2);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(C17101f.C17107f.DroppyMenuItemTitleView_android_layout_width, -1);
        int layoutDimension2 = obtainStyledAttributes.getLayoutDimension(C17101f.C17107f.DroppyMenuItemTitleView_android_layout_height, -2);
        int color2 = obtainStyledAttributes.getColor(C17101f.C17107f.DroppyMenuItemTitleView_android_textColor, color);
        setGravity(obtainStyledAttributes.getInt(C17101f.C17107f.DroppyMenuItemTitleView_android_gravity, 16));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(layoutDimension, layoutDimension2);
        layoutParams.width = layoutDimension;
        layoutParams.height = layoutDimension2;
        layoutParams.weight = obtainStyledAttributes.getFloat(C17101f.C17107f.DroppyMenuItemTitleView_android_layout_weight, 1.0f);
        layoutParams.gravity = obtainStyledAttributes.getInteger(C17101f.C17107f.DroppyMenuItemTitleView_android_layout_gravity, 8388629);
        setLayoutParams(layoutParams);
        setMinHeight(dimension3);
        setMinHeight(dimension4);
        setTextColor(color2);
        obtainStyledAttributes.recycle();
    }
}
