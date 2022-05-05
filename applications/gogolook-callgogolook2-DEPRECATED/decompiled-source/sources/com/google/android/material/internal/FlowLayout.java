package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RestrictTo;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$styleable;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/FlowLayout.class */
public class FlowLayout extends ViewGroup {

    /* renamed from: a */
    public int f7494a;

    /* renamed from: b */
    public int f7495b;

    /* renamed from: c */
    public boolean f7496c;

    public FlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7496c = false;
        m31340a(context, attributeSet);
    }

    /* renamed from: a */
    public static int m31341a(int i, int i2, int i3) {
        return i2 != Integer.MIN_VALUE ? i2 != 1073741824 ? i3 : i : Math.min(i3, i);
    }

    /* renamed from: a */
    public void m31342a(int i) {
        this.f7495b = i;
    }

    /* renamed from: a */
    public final void m31340a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.FlowLayout, 0, 0);
        this.f7494a = obtainStyledAttributes.getDimensionPixelSize(R$styleable.FlowLayout_lineSpacing, 0);
        this.f7495b = obtainStyledAttributes.getDimensionPixelSize(R$styleable.FlowLayout_itemSpacing, 0);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public void m31339a(boolean z) {
        this.f7496c = z;
    }

    /* renamed from: a */
    public boolean m31343a() {
        return this.f7496c;
    }

    /* renamed from: b */
    public void m31338b(int i) {
        this.f7494a = i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (getChildCount() != 0) {
            boolean z2 = true;
            if (ViewCompat.getLayoutDirection(this) != 1) {
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
                        i6 = MarginLayoutParamsCompat.getMarginStart(marginLayoutParams);
                        i5 = MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams);
                    } else {
                        i5 = 0;
                        i6 = 0;
                    }
                    int measuredWidth = childAt.getMeasuredWidth();
                    int i11 = i8;
                    int i12 = i9;
                    if (!this.f7496c) {
                        i11 = i8;
                        i12 = i9;
                        if (i8 + i6 + measuredWidth > i7) {
                            i12 = paddingTop + this.f7494a;
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
                    i8 = i11 + i6 + i5 + childAt.getMeasuredWidth() + this.f7495b;
                    i9 = i12;
                }
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i5 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int i6 = paddingTop;
        int i7 = 0;
        int i8 = paddingTop;
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() == 8) {
                i6 = i6;
            } else {
                measureChild(childAt, i, i2);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i4 = marginLayoutParams.leftMargin + 0;
                    i3 = marginLayoutParams.rightMargin + 0;
                } else {
                    i4 = 0;
                    i3 = 0;
                }
                i6 = i6;
                int i10 = paddingLeft;
                if (paddingLeft + i4 + childAt.getMeasuredWidth() > i5 - paddingRight) {
                    i6 = i6;
                    i10 = paddingLeft;
                    if (!m31343a()) {
                        i10 = getPaddingLeft();
                        i6 = this.f7494a + i8;
                    }
                }
                int measuredWidth = i10 + i4 + childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                i7 = i7;
                if (measuredWidth > i7) {
                    i7 = measuredWidth;
                }
                i8 = measuredHeight + i6;
                paddingLeft = i10 + i4 + i3 + childAt.getMeasuredWidth() + this.f7495b;
            }
        }
        setMeasuredDimension(m31341a(size, mode, i7), m31341a(size2, mode2, i8));
    }
}
