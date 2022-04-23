package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.h;
import androidx.core.view.v;
import com.google.android.material.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/FlowLayout.class */
public class FlowLayout extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private int f30591a;

    /* renamed from: b  reason: collision with root package name */
    private int f30592b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f30593c;

    /* renamed from: d  reason: collision with root package name */
    private int f30594d;

    public FlowLayout(Context context) {
        this(context, null);
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f30593c = false;
        a(context, attributeSet);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f30593c = false;
        a(context, attributeSet);
    }

    private static int a(int i, int i2, int i3) {
        return i2 != Integer.MIN_VALUE ? i2 != 1073741824 ? i3 : i : Math.min(i3, i);
    }

    public static int a(View view) {
        Object tag = view.getTag(a.f.row_index_key);
        if (!(tag instanceof Integer)) {
            return -1;
        }
        return ((Integer) tag).intValue();
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, a.l.FlowLayout, 0, 0);
        this.f30591a = obtainStyledAttributes.getDimensionPixelSize(a.l.FlowLayout_lineSpacing, 0);
        this.f30592b = obtainStyledAttributes.getDimensionPixelSize(a.l.FlowLayout_itemSpacing, 0);
        obtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i) {
        this.f30591a = i;
    }

    public boolean a() {
        return this.f30593c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int b() {
        return this.f30594d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(int i) {
        this.f30592b = i;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (getChildCount() == 0) {
            this.f30594d = 0;
            return;
        }
        this.f30594d = 1;
        boolean z2 = v.f(this) == 1;
        int paddingRight = z2 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z2 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int i7 = (i3 - i) - paddingLeft;
        int i8 = paddingRight;
        int i9 = paddingTop;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 8) {
                childAt.setTag(a.f.row_index_key, -1);
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i6 = h.a(marginLayoutParams);
                    i5 = h.b(marginLayoutParams);
                } else {
                    i5 = 0;
                    i6 = 0;
                }
                int measuredWidth = childAt.getMeasuredWidth();
                int i11 = i8;
                int i12 = i9;
                if (!this.f30593c) {
                    i11 = i8;
                    i12 = i9;
                    if (i8 + i6 + measuredWidth > i7) {
                        i12 = this.f30591a + paddingTop;
                        this.f30594d++;
                        i11 = paddingRight;
                    }
                }
                childAt.setTag(a.f.row_index_key, Integer.valueOf(this.f30594d - 1));
                int i13 = i11 + i6;
                int measuredWidth2 = childAt.getMeasuredWidth() + i13;
                paddingTop = childAt.getMeasuredHeight() + i12;
                if (z2) {
                    childAt.layout(i7 - measuredWidth2, i12, (i7 - i11) - i6, paddingTop);
                } else {
                    childAt.layout(i13, i12, measuredWidth2, paddingTop);
                }
                i8 = i11 + i6 + i5 + childAt.getMeasuredWidth() + this.f30592b;
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
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
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
                if (paddingLeft + i4 + childAt.getMeasuredWidth() <= i6 - paddingRight || a()) {
                    i5 = paddingLeft;
                } else {
                    i5 = getPaddingLeft();
                    i7 = this.f30591a + paddingTop;
                }
                int measuredWidth = i5 + i4 + childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i10 = i8;
                if (measuredWidth > i8) {
                    i10 = measuredWidth;
                }
                paddingLeft = i5 + i4 + i3 + childAt.getMeasuredWidth() + this.f30592b;
                i8 = i10;
                if (i9 == getChildCount() - 1) {
                    i8 = i10 + i3;
                }
                paddingTop = i7 + measuredHeight;
            }
        }
        setMeasuredDimension(a(size, mode, i8 + getPaddingRight()), a(size2, mode2, paddingTop + getPaddingBottom()));
    }

    public void setSingleLine(boolean z) {
        this.f30593c = z;
    }
}
