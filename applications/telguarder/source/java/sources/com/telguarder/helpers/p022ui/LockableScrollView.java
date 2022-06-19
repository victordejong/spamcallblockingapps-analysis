package com.telguarder.helpers.p022ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;
/* renamed from: com.telguarder.helpers.ui.LockableScrollView */
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/LockableScrollView.class */
public class LockableScrollView extends ScrollView {
    private boolean mScrollable = true;

    public LockableScrollView(Context context) {
        super(context);
    }

    public LockableScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LockableScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public LockableScrollView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public boolean isScrollable() {
        return this.mScrollable;
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.mScrollable && super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (motionEvent.getAction() == 0 && !(z = this.mScrollable)) {
            return z;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setScrollingEnabled(boolean z) {
        this.mScrollable = z;
    }
}
