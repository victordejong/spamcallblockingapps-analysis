package com.android.contacts.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:com/android/contacts/widget/LayoutSuppressingImageView.class */
public class LayoutSuppressingImageView extends ImageView {
    public LayoutSuppressingImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public void requestLayout() {
        forceLayout();
    }
}
