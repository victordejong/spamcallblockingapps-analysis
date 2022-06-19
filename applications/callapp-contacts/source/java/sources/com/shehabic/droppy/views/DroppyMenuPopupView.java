package com.shehabic.droppy.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ScrollView;
import com.shehabic.droppy.C17101f;
/* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/views/DroppyMenuPopupView.class */
public class DroppyMenuPopupView extends ScrollView {
    public DroppyMenuPopupView(Context context) {
        this(context, null);
    }

    public DroppyMenuPopupView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C17101f.C17102a.droppyPopupStyle);
    }

    public DroppyMenuPopupView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Drawable drawable = getResources().getDrawable(C17101f.C17106e.default_popup_background);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C17101f.C17107f.DroppyMenuPopupView, i, 0);
        Drawable drawable2 = obtainStyledAttributes.getDrawable(C17101f.C17107f.DroppyMenuPopupView_android_background);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(C17101f.C17107f.DroppyMenuPopupView_android_layout_height, -2);
        int layoutDimension2 = obtainStyledAttributes.getLayoutDimension(C17101f.C17107f.DroppyMenuPopupView_android_layout_width, -2);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(layoutDimension2, layoutDimension);
        } else {
            layoutParams.width = layoutDimension2;
            layoutParams.height = layoutDimension;
        }
        setLayoutParams(layoutParams);
        if (drawable2 != null) {
            setBackgroundDrawable(drawable2);
        } else {
            setBackgroundDrawable(drawable);
        }
        obtainStyledAttributes.recycle();
    }
}
