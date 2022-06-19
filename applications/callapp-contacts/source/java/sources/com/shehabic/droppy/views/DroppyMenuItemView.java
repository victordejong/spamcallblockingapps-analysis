package com.shehabic.droppy.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.shehabic.droppy.C17101f;
/* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/views/DroppyMenuItemView.class */
public class DroppyMenuItemView extends LinearLayout {
    public DroppyMenuItemView(Context context) {
        this(context, null);
    }

    public DroppyMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C17101f.C17102a.droppyMenuItemStyle);
    }

    public DroppyMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C17101f.C17107f.DroppyMenuItemView, i, 0);
        Drawable drawable = getResources().getDrawable(C17101f.C17106e.default_menu_item_background);
        float dimension = getResources().getDimension(C17101f.C17105d.default_menu_item_minWidth);
        float dimension2 = getResources().getDimension(C17101f.C17105d.default_menu_item_minHeight);
        boolean z = getResources().getBoolean(C17101f.C17103b.default_menu_item_clickable);
        float dimension3 = obtainStyledAttributes.getDimension(C17101f.C17107f.DroppyMenuItemView_android_minWidth, dimension);
        float dimension4 = obtainStyledAttributes.getDimension(C17101f.C17107f.DroppyMenuItemView_android_minHeight, dimension2);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        setMinimumWidth((int) dimension3);
        setMinimumHeight((int) dimension4);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(C17101f.C17107f.DroppyMenuItemView_android_layout_width, -1);
        int layoutDimension2 = obtainStyledAttributes.getLayoutDimension(C17101f.C17107f.DroppyMenuItemView_android_layout_height, -2);
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(layoutDimension, layoutDimension2);
        } else {
            layoutParams.width = layoutDimension;
            layoutParams.height = layoutDimension2;
        }
        setClickable(obtainStyledAttributes.getBoolean(C17101f.C17107f.DroppyMenuItemView_android_clickable, z));
        setOrientation(0);
        setGravity(obtainStyledAttributes.getInteger(C17101f.C17107f.DroppyMenuItemView_android_gravity, 16));
        setPadding((int) obtainStyledAttributes.getDimension(C17101f.C17107f.DroppyMenuItemView_android_paddingLeft, (int) getResources().getDimension(C17101f.C17105d.default_menu_item_paddingLeft)), (int) obtainStyledAttributes.getDimension(C17101f.C17107f.DroppyMenuItemView_android_paddingTop, (int) getResources().getDimension(C17101f.C17105d.default_menu_item_paddingTop)), (int) obtainStyledAttributes.getDimension(C17101f.C17107f.DroppyMenuItemView_android_paddingRight, (int) getResources().getDimension(C17101f.C17105d.default_menu_item_paddingRight)), (int) obtainStyledAttributes.getDimension(C17101f.C17107f.DroppyMenuItemView_android_paddingBottom, (int) getResources().getDimension(C17101f.C17105d.default_menu_item_paddingBottom)));
        Drawable drawable2 = obtainStyledAttributes.getDrawable(C17101f.C17107f.DroppyMenuItemView_android_background);
        if (drawable2 != null) {
            setBackgroundDrawable(drawable2);
        } else {
            setBackgroundDrawable(drawable);
        }
        setLayoutParams(layoutParams);
        obtainStyledAttributes.recycle();
    }
}
