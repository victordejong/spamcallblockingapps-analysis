package com.callapp.contacts.util.ads;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.callapp.contacts.C5563R;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/MaxHeightFrameLayout.class */
public class MaxHeightFrameLayout extends FrameLayout {

    /* renamed from: a */
    private static int f28027a = -1;

    /* renamed from: b */
    private int f28028b = f28027a;

    public MaxHeightFrameLayout(Context context) {
        super(context);
    }

    public MaxHeightFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m27222a(context, attributeSet);
    }

    public MaxHeightFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m27222a(context, attributeSet);
    }

    public MaxHeightFrameLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m27222a(context, attributeSet);
    }

    /* renamed from: a */
    private void m27222a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5563R.styleable.MaxHeightLayout);
            try {
                this.f28028b = obtainStyledAttributes.getDimensionPixelSize(0, f28027a);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = this.f28028b;
        if (i3 != f28027a) {
            i2 = View.MeasureSpec.makeMeasureSpec(i3, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        }
        super.onMeasure(i, i2);
    }
}
