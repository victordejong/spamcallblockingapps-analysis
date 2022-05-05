package com.android.contacts.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
/* loaded from: classes-dex2jar.jar:com/android/contacts/widget/FrameLayoutWithOverlay.class */
public class FrameLayoutWithOverlay extends FrameLayout {
    private final AlphaTouchInterceptorOverlay mOverlay;

    public FrameLayoutWithOverlay(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mOverlay = new AlphaTouchInterceptorOverlay(context);
        addView(this.mOverlay);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        this.mOverlay.bringToFront();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setAlphaLayer(View view) {
        this.mOverlay.setAlphaLayer(view);
    }

    public void setAlphaLayerValue(float f) {
        this.mOverlay.setAlphaLayerValue(f);
    }

    public void setOverlayClickable(boolean z) {
        this.mOverlay.setOverlayClickable(z);
    }

    public void setOverlayOnClickListener(View.OnClickListener onClickListener) {
        this.mOverlay.setOverlayOnClickListener(onClickListener);
    }
}
