package com.android.contacts.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.QuickContactBadge;
/* loaded from: classes-dex2jar.jar:com/android/contacts/widget/LayoutSuppressingQuickContactBadge.class */
public class LayoutSuppressingQuickContactBadge extends QuickContactBadge {
    public LayoutSuppressingQuickContactBadge(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public void requestLayout() {
        forceLayout();
    }
}
