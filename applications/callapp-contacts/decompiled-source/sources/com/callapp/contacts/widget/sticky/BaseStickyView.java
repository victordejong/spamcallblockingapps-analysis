package com.callapp.contacts.widget.sticky;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/BaseStickyView.class */
public class BaseStickyView extends ConstraintLayout {
    public BaseStickyView(Context context) {
        this(context, null);
    }

    public BaseStickyView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseStickyView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected int getLayout() {
        return 0;
    }
}
