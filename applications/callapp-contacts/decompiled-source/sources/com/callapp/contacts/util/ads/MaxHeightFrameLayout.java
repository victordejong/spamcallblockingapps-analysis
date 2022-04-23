package com.callapp.contacts.util.ads;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.callapp.contacts.R;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/MaxHeightFrameLayout.class */
public class MaxHeightFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private static int f16075a = -1;

    /* renamed from: b  reason: collision with root package name */
    private int f16076b = f16075a;

    public MaxHeightFrameLayout(Context context) {
        super(context);
    }

    public MaxHeightFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public MaxHeightFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    public MaxHeightFrameLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MaxHeightLayout);
            try {
                this.f16076b = obtainStyledAttributes.getDimensionPixelSize(0, f16075a);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = this.f16076b;
        if (i3 != f16075a) {
            i2 = View.MeasureSpec.makeMeasureSpec(i3, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        }
        super.onMeasure(i, i2);
    }
}
