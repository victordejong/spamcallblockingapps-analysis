package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p023g.C0537f;
import androidx.core.p023g.C0552u;
import com.google.android.material.C1284R;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/FlowLayout.class */
public class FlowLayout extends ViewGroup {
    private int itemSpacing;
    private int lineSpacing;
    private boolean singleLine;

    public FlowLayout(Context context) {
        this(context, null);
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.singleLine = false;
        loadFromAttributes(context, attributeSet);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.singleLine = false;
        loadFromAttributes(context, attributeSet);
    }

    private static int getMeasuredDimension(int i, int i2, int i3) {
        return i2 != Integer.MIN_VALUE ? i2 != 1073741824 ? i3 : i : Math.min(i3, i);
    }

    private void loadFromAttributes(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C1284R.styleable.FlowLayout, 0, 0);
        this.lineSpacing = obtainStyledAttributes.getDimensionPixelSize(C1284R.styleable.FlowLayout_lineSpacing, 0);
        this.itemSpacing = obtainStyledAttributes.getDimensionPixelSize(C1284R.styleable.FlowLayout_itemSpacing, 0);
        obtainStyledAttributes.recycle();
    }

    protected int getItemSpacing() {
        return this.itemSpacing;
    }

    protected int getLineSpacing() {
        return this.lineSpacing;
    }

    protected boolean isSingleLine() {
        return this.singleLine;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (getChildCount() == 0) {
            return;
        }
        boolean z2 = true;
        if (C0552u.m6245f(this) != 1) {
            z2 = false;
        }
        int paddingRight = z2 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z2 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int i7 = (i3 - i) - paddingLeft;
        int i8 = paddingRight;
        int i9 = paddingTop;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i6 = C0537f.m6333a(marginLayoutParams);
                    i5 = C0537f.m6331b(marginLayoutParams);
                } else {
                    i5 = 0;
                    i6 = 0;
                }
                int measuredWidth = childAt.getMeasuredWidth();
                int i11 = i8;
                int i12 = i9;
                if (!this.singleLine) {
                    i11 = i8;
                    i12 = i9;
                    if (i8 + i6 + measuredWidth > i7) {
                        i12 = paddingTop + this.lineSpacing;
                        i11 = paddingRight;
                    }
                }
                int i13 = i11 + i6;
                int measuredWidth2 = childAt.getMeasuredWidth() + i13;
                paddingTop = childAt.getMeasuredHeight() + i12;
                if (z2) {
                    childAt.layout(i7 - measuredWidth2, i12, (i7 - i11) - i6, paddingTop);
                } else {
                    childAt.layout(i13, i12, measuredWidth2, paddingTop);
                }
                i8 = i11 + i6 + i5 + childAt.getMeasuredWidth() + this.itemSpacing;
                i9 = i12;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i6 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int i7 = paddingTop;
        int i8 = 0;
        int i9 = paddingTop;
        int i10 = 0;
        while (i8 < getChildCount()) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() == 8) {
                i3 = i7;
            } else {
                measureChild(childAt, i, i2);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i5 = marginLayoutParams.leftMargin + 0;
                    i4 = marginLayoutParams.rightMargin + 0;
                } else {
                    i5 = 0;
                    i4 = 0;
                }
                int measuredWidth = childAt.getMeasuredWidth();
                int i11 = paddingLeft;
                i3 = i7;
                int i12 = i11;
                if (paddingLeft + i5 + measuredWidth > i6 - paddingRight) {
                    i3 = i7;
                    i12 = i11;
                    if (!isSingleLine()) {
                        i12 = getPaddingLeft();
                        i3 = this.lineSpacing + i9;
                    }
                }
                int measuredWidth2 = i12 + i5 + childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i13 = i10;
                if (measuredWidth2 > i10) {
                    i13 = measuredWidth2;
                }
                i9 = measuredHeight + i3;
                paddingLeft = i12 + i5 + i4 + childAt.getMeasuredWidth() + this.itemSpacing;
                i10 = i13;
            }
            i8++;
            i7 = i3;
        }
        setMeasuredDimension(getMeasuredDimension(size, mode, i10), getMeasuredDimension(size2, mode2, i9));
    }

    public void setItemSpacing(int i) {
        this.itemSpacing = i;
    }

    public void setLineSpacing(int i) {
        this.lineSpacing = i;
    }

    public void setSingleLine(boolean z) {
        this.singleLine = z;
    }
}
