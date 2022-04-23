package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ScrollView;
import com.callapp.contacts.R;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/MaxHeightScrollView.class */
public class MaxHeightScrollView extends ScrollView {

    /* renamed from: a  reason: collision with root package name */
    private final int f16533a;

    /* renamed from: b  reason: collision with root package name */
    private OnSizeChangedListener f16534b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f16535c;

    public MaxHeightScrollView(Context context) {
        this(context, null);
    }

    public MaxHeightScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaxHeightScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16535c = true;
        int i2 = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MaxHeightScrollView, i, 0);
            i2 = (int) obtainStyledAttributes.getDimension(1, BitmapDescriptorFactory.HUE_RED);
            this.f16535c = obtainStyledAttributes.getBoolean(0, this.f16535c);
            obtainStyledAttributes.recycle();
        }
        this.f16533a = i2;
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = this.f16533a;
        if (i3 > 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(i3, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.ScrollView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        OnSizeChangedListener onSizeChangedListener = this.f16534b;
        if (onSizeChangedListener != null) {
            onSizeChangedListener.a(i2);
        }
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f16535c) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    public void setOnSizeChangedListener(OnSizeChangedListener onSizeChangedListener) {
        this.f16534b = onSizeChangedListener;
    }
}
