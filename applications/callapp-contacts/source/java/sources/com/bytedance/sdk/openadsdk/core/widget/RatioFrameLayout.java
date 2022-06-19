package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout.class */
public class RatioFrameLayout extends FrameLayout {

    /* renamed from: a */
    public float f17451a;

    public RatioFrameLayout(Context context) {
        this(context, null);
    }

    public RatioFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RatioFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f17451a = BitmapDescriptorFactory.HUE_RED;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int i3 = getLayoutParams().width;
        int i4 = getLayoutParams().height;
        float f = this.f17451a;
        int i5 = mode;
        int i6 = mode2;
        int i7 = size;
        int i8 = size2;
        if (f > BitmapDescriptorFactory.HUE_RED) {
            if (i3 == -2) {
                i7 = (int) (size2 * f);
                i5 = 1073741824;
                i6 = mode2;
                i8 = size2;
            } else {
                i5 = mode;
                i6 = mode2;
                i7 = size;
                i8 = size2;
                if (i4 == -2) {
                    i8 = (int) (size / f);
                    i6 = 1073741824;
                    i7 = size;
                    i5 = mode;
                }
            }
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(i7, i5), View.MeasureSpec.makeMeasureSpec(i8, i6));
    }

    public void setRatio(float f) {
        this.f17451a = f;
    }
}
