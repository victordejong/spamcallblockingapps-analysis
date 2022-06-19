package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import p020b.p041h.p050l.C1664h;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.C1896l;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/FlowLayout.class */
public class FlowLayout extends ViewGroup {

    /* renamed from: d */
    private int f36877d;

    /* renamed from: e */
    private int f36878e;

    /* renamed from: f */
    private boolean f36879f;

    /* renamed from: g */
    private int f36880g;

    public FlowLayout(Context context) {
        this(context, null);
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f36879f = false;
        m4646d(context, attributeSet);
    }

    /* renamed from: a */
    private static int m4649a(int i, int i2, int i3) {
        return i2 != Integer.MIN_VALUE ? i2 != 1073741824 ? i3 : i : Math.min(i3, i);
    }

    /* renamed from: d */
    private void m4646d(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C1896l.FlowLayout, 0, 0);
        this.f36877d = obtainStyledAttributes.getDimensionPixelSize(C1896l.FlowLayout_lineSpacing, 0);
        this.f36878e = obtainStyledAttributes.getDimensionPixelSize(C1896l.FlowLayout_itemSpacing, 0);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: b */
    public int m4648b(View view) {
        Object tag = view.getTag(C1890f.row_index_key);
        if (!(tag instanceof Integer)) {
            return -1;
        }
        return ((Integer) tag).intValue();
    }

    /* renamed from: c */
    public boolean mo4647c() {
        return this.f36879f;
    }

    protected int getItemSpacing() {
        return this.f36878e;
    }

    protected int getLineSpacing() {
        return this.f36877d;
    }

    public int getRowCount() {
        return this.f36880g;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (getChildCount() == 0) {
            this.f36880g = 0;
            return;
        }
        this.f36880g = 1;
        boolean z2 = C1679w.m29346C(this) == 1;
        int paddingRight = z2 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z2 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int i7 = (i3 - i) - paddingLeft;
        int i8 = paddingRight;
        int i9 = paddingTop;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 8) {
                childAt.setTag(C1890f.row_index_key, -1);
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i6 = C1664h.m29401b(marginLayoutParams);
                    i5 = C1664h.m29402a(marginLayoutParams);
                } else {
                    i5 = 0;
                    i6 = 0;
                }
                int measuredWidth = childAt.getMeasuredWidth();
                int i11 = i8;
                int i12 = i9;
                if (!this.f36879f) {
                    i11 = i8;
                    i12 = i9;
                    if (i8 + i6 + measuredWidth > i7) {
                        i12 = this.f36877d + paddingTop;
                        this.f36880g++;
                        i11 = paddingRight;
                    }
                }
                childAt.setTag(C1890f.row_index_key, Integer.valueOf(this.f36880g - 1));
                int i13 = i11 + i6;
                int measuredWidth2 = childAt.getMeasuredWidth() + i13;
                paddingTop = childAt.getMeasuredHeight() + i12;
                if (z2) {
                    childAt.layout(i7 - measuredWidth2, i12, (i7 - i11) - i6, paddingTop);
                } else {
                    childAt.layout(i13, i12, measuredWidth2, paddingTop);
                }
                i8 = i11 + i6 + i5 + childAt.getMeasuredWidth() + this.f36878e;
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
                if (paddingLeft + i4 + childAt.getMeasuredWidth() <= i6 - paddingRight || mo4647c()) {
                    i5 = paddingLeft;
                } else {
                    int paddingLeft2 = getPaddingLeft();
                    i7 = this.f36877d + paddingTop;
                    i5 = paddingLeft2;
                }
                int measuredWidth = i5 + i4 + childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i10 = i8;
                if (measuredWidth > i8) {
                    i10 = measuredWidth;
                }
                int measuredWidth2 = i5 + i4 + i3 + childAt.getMeasuredWidth() + this.f36878e;
                i8 = i10;
                if (i9 == getChildCount() - 1) {
                    i8 = i10 + i3;
                }
                paddingTop = i7 + measuredHeight;
                paddingLeft = measuredWidth2;
            }
        }
        setMeasuredDimension(m4649a(size, mode, i8 + getPaddingRight()), m4649a(size2, mode2, paddingTop + getPaddingBottom()));
    }

    public void setItemSpacing(int i) {
        this.f36878e = i;
    }

    public void setLineSpacing(int i) {
        this.f36877d = i;
    }

    public void setSingleLine(boolean z) {
        this.f36879f = z;
    }
}
