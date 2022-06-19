package com.google.android.material.appbar;

import android.view.View;
import androidx.core.p023g.C0552u;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/ViewOffsetHelper.class */
class ViewOffsetHelper {
    private int layoutLeft;
    private int layoutTop;
    private int offsetLeft;
    private int offsetTop;
    private final View view;

    public ViewOffsetHelper(View view) {
        this.view = view;
    }

    private void updateOffsets() {
        View view = this.view;
        C0552u.m6246e(view, this.offsetTop - (view.getTop() - this.layoutTop));
        View view2 = this.view;
        C0552u.m6244f(view2, this.offsetLeft - (view2.getLeft() - this.layoutLeft));
    }

    public int getLayoutLeft() {
        return this.layoutLeft;
    }

    public int getLayoutTop() {
        return this.layoutTop;
    }

    public int getLeftAndRightOffset() {
        return this.offsetLeft;
    }

    public int getTopAndBottomOffset() {
        return this.offsetTop;
    }

    public void onViewLayout() {
        this.layoutTop = this.view.getTop();
        this.layoutLeft = this.view.getLeft();
        updateOffsets();
    }

    public boolean setLeftAndRightOffset(int i) {
        if (this.offsetLeft != i) {
            this.offsetLeft = i;
            updateOffsets();
            return true;
        }
        return false;
    }

    public boolean setTopAndBottomOffset(int i) {
        if (this.offsetTop != i) {
            this.offsetTop = i;
            updateOffsets();
            return true;
        }
        return false;
    }
}
