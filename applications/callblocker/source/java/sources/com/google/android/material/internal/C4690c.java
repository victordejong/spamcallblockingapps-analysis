package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p026h.C0580f;
import androidx.core.p026h.C0595u;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C4492a;
/* renamed from: com.google.android.material.internal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/c.class */
public class C4690c extends ViewGroup {

    /* renamed from: a */
    private int f20363a;

    /* renamed from: b */
    private int f20364b;

    /* renamed from: c */
    private boolean f20365c;

    public C4690c(Context context) {
        this(context, null);
    }

    public C4690c(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C4690c(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f20365c = false;
        m2853a(context, attributeSet);
    }

    @TargetApi(21)
    public C4690c(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f20365c = false;
        m2853a(context, attributeSet);
    }

    /* renamed from: a */
    private static int m2854a(int i, int i2, int i3) {
        int i4 = i;
        switch (i2) {
            case RecyclerView.UNDEFINED_DURATION /* -2147483648 */:
                i4 = Math.min(i3, i);
                break;
            case 1073741824:
                break;
            default:
                i4 = i3;
                break;
        }
        return i4;
    }

    /* renamed from: a */
    private void m2853a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C4492a.C4504l.FlowLayout, 0, 0);
        this.f20363a = obtainStyledAttributes.getDimensionPixelSize(C4492a.C4504l.FlowLayout_lineSpacing, 0);
        this.f20364b = obtainStyledAttributes.getDimensionPixelSize(C4492a.C4504l.FlowLayout_itemSpacing, 0);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: b */
    public boolean mo2852b() {
        return this.f20365c;
    }

    protected int getItemSpacing() {
        return this.f20364b;
    }

    protected int getLineSpacing() {
        return this.f20363a;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        if (getChildCount() == 0) {
            return;
        }
        boolean z2 = C0595u.m20320g(this) == 1;
        int paddingRight = z2 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z2 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int i6 = (i3 - i) - paddingLeft;
        int i7 = paddingTop;
        int i8 = paddingTop;
        int i9 = paddingRight;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                int i11 = 0;
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i11 = C0580f.m20410a(marginLayoutParams);
                    i5 = C0580f.m20408b(marginLayoutParams);
                } else {
                    i5 = 0;
                }
                int measuredWidth = childAt.getMeasuredWidth();
                int i12 = i8;
                int i13 = i9;
                if (!this.f20365c) {
                    i12 = i8;
                    i13 = i9;
                    if (i9 + i11 + measuredWidth > i6) {
                        i12 = i7 + this.f20363a;
                        i13 = paddingRight;
                    }
                }
                int measuredWidth2 = childAt.getMeasuredWidth() + i13 + i11;
                i7 = childAt.getMeasuredHeight() + i12;
                if (z2) {
                    childAt.layout(i6 - measuredWidth2, i12, (i6 - i13) - i11, i7);
                } else {
                    childAt.layout(i13 + i11, i12, measuredWidth2, i7);
                }
                i9 = i13 + i5 + i11 + childAt.getMeasuredWidth() + this.f20364b;
                i8 = i12;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i5 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i6 = 0;
        int paddingRight = getPaddingRight();
        int i7 = 0;
        int i8 = paddingTop;
        while (true) {
            int i9 = i8;
            if (i7 >= getChildCount()) {
                setMeasuredDimension(m2854a(size, mode, getPaddingRight() + i6), m2854a(size2, mode2, getPaddingBottom() + i9));
                return;
            }
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() == 8) {
                i4 = i9;
            } else {
                measureChild(childAt, i, i2);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                int i10 = 0;
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i10 = 0 + marginLayoutParams.leftMargin;
                    i3 = marginLayoutParams.rightMargin + 0;
                } else {
                    i3 = 0;
                }
                int i11 = paddingTop;
                int i12 = paddingLeft;
                if (paddingLeft + i10 + childAt.getMeasuredWidth() > i5 - paddingRight) {
                    i11 = paddingTop;
                    i12 = paddingLeft;
                    if (!mo2852b()) {
                        i12 = getPaddingLeft();
                        i11 = i9 + this.f20363a;
                    }
                }
                int measuredWidth = i12 + i10 + childAt.getMeasuredWidth();
                int measuredHeight = i11 + childAt.getMeasuredHeight();
                int i13 = i6;
                if (measuredWidth > i6) {
                    i13 = measuredWidth;
                }
                int measuredWidth2 = i12 + i10 + i3 + childAt.getMeasuredWidth() + this.f20364b;
                if (i7 == getChildCount() - 1) {
                    i6 = i13 + i3;
                    paddingTop = i11;
                    i4 = measuredHeight;
                    paddingLeft = measuredWidth2;
                } else {
                    int i14 = i11;
                    i6 = i13;
                    i4 = measuredHeight;
                    paddingTop = i14;
                    paddingLeft = measuredWidth2;
                }
            }
            i7++;
            i8 = i4;
        }
    }

    public void setItemSpacing(int i) {
        this.f20364b = i;
    }

    public void setLineSpacing(int i) {
        this.f20363a = i;
    }

    public void setSingleLine(boolean z) {
        this.f20365c = z;
    }
}
