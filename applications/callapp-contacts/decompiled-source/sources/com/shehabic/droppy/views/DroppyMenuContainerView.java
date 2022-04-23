package com.shehabic.droppy.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.shehabic.droppy.f;
/* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/views/DroppyMenuContainerView.class */
public class DroppyMenuContainerView extends LinearLayout {
    public DroppyMenuContainerView(Context context) {
        this(context, null);
    }

    public DroppyMenuContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, f.a.droppyMenuStyle);
    }

    public DroppyMenuContainerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setOrientation(1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f.C0553f.DroppyMenuPopupView, i, 0);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(f.C0553f.DroppyMenuContainerView_android_layout_height, -2);
        int layoutDimension2 = obtainStyledAttributes.getLayoutDimension(f.C0553f.DroppyMenuContainerView_android_layout_width, -2);
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(layoutDimension2, layoutDimension);
        } else {
            layoutParams.width = layoutDimension2;
            layoutParams.height = layoutDimension;
        }
        setLayoutParams(layoutParams);
        obtainStyledAttributes.recycle();
    }
}
