package com.uservoice.uservoicesdk.ui;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.LinearLayout;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/ui/ColorfulLinearLayout.class */
public class ColorfulLinearLayout extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f4772a;

    public ColorfulLinearLayout(Context context) {
        super(context);
    }

    public ColorfulLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ColorfulLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        boolean z = (getWindowSystemUiVisibility() & 256) != 0;
        int i = this.f4772a;
        if (!z) {
            this.f4772a = 0;
        } else {
            this.f4772a = rect.bottom;
        }
        if (this.f4772a != i) {
            ((ViewGroup.MarginLayoutParams) getLayoutParams()).bottomMargin = this.f4772a;
            requestLayout();
        }
        return z;
    }
}
