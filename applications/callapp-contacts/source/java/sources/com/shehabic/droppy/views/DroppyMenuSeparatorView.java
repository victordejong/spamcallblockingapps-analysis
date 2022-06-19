package com.shehabic.droppy.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.shehabic.droppy.C17101f;
/* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/views/DroppyMenuSeparatorView.class */
public class DroppyMenuSeparatorView extends LinearLayout {
    public DroppyMenuSeparatorView(Context context) {
        this(context, null);
    }

    public DroppyMenuSeparatorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C17101f.C17102a.droppyMenuSeparatorStyle);
    }

    public DroppyMenuSeparatorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C17101f.C17107f.DroppyMenuSeparatorView, i, 0);
        Drawable drawable = getResources().getDrawable(C17101f.C17106e.droppy_separator_background);
        int dimensionPixelSize = getResources().getDimensionPixelSize(C17101f.C17105d.default_menu_separator_height);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(C17101f.C17107f.DroppyMenuSeparatorView_android_layout_width, -1);
        int layoutDimension2 = obtainStyledAttributes.getLayoutDimension(C17101f.C17107f.DroppyMenuSeparatorView_android_layout_height, dimensionPixelSize);
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(layoutDimension, layoutDimension2);
        } else {
            layoutParams.width = layoutDimension;
            layoutParams.height = layoutDimension2;
        }
        setOrientation(0);
        Drawable drawable2 = obtainStyledAttributes.getDrawable(C17101f.C17107f.DroppyMenuSeparatorView_android_background);
        if (drawable2 != null) {
            setBackgroundDrawable(drawable2);
        } else {
            setBackgroundDrawable(drawable);
        }
        setLayoutParams(layoutParams);
        obtainStyledAttributes.recycle();
    }
}
