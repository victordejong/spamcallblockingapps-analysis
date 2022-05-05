package com.rey.material.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Checkable;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/CheckedImageView.class */
public class CheckedImageView extends ImageView implements Checkable {
    private static final int[] STATE_CHECKED = {16842912};
    private boolean mChecked = false;

    public CheckedImageView(Context context) {
        super(context);
    }

    public CheckedImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CheckedImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.mChecked;
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        int[] iArr = this.mChecked ? STATE_CHECKED : null;
        if (iArr != null) {
            mergeDrawableStates(onCreateDrawableState, iArr);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.mChecked != z) {
            this.mChecked = z;
            refreshDrawableState();
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }
}
