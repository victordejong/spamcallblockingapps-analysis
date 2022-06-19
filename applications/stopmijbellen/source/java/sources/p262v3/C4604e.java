package p262v3;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.WeakHashMap;
import p134j4.C3260w0;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: v3.e */
/* loaded from: classes-dex2jar.jar:v3/e.class */
public class C4604e extends ViewGroup {

    /* renamed from: a */
    public int f14242a;

    /* renamed from: b */
    public int f14243b;

    /* renamed from: c */
    public boolean f14244c;

    /* renamed from: d */
    public int f14245d;

    public C4604e(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C4604e(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f14244c = false;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C3260w0.f11033n, 0, 0);
        this.f14242a = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.f14243b = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public boolean mo718a() {
        return this.f14244c;
    }

    public int getItemSpacing() {
        return this.f14243b;
    }

    public int getLineSpacing() {
        return this.f14242a;
    }

    public int getRowCount() {
        return this.f14245d;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (getChildCount() == 0) {
            this.f14245d = 0;
            return;
        }
        this.f14245d = 1;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        boolean z2 = C3589v.C3594e.m2071d(this) == 1;
        int paddingRight = z2 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z2 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int i7 = (i3 - i) - paddingLeft;
        int i8 = paddingRight;
        int i9 = paddingTop;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 8) {
                childAt.setTag(2131296977, -1);
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i6 = marginLayoutParams.getMarginStart();
                    i5 = marginLayoutParams.getMarginEnd();
                } else {
                    i5 = 0;
                    i6 = 0;
                }
                int measuredWidth = childAt.getMeasuredWidth();
                int i11 = i8;
                int i12 = i9;
                if (!this.f14244c) {
                    i11 = i8;
                    i12 = i9;
                    if (measuredWidth + i8 + i6 > i7) {
                        i12 = this.f14242a + paddingTop;
                        this.f14245d++;
                        i11 = paddingRight;
                    }
                }
                childAt.setTag(2131296977, Integer.valueOf(this.f14245d - 1));
                int i13 = i11 + i6;
                int measuredWidth2 = childAt.getMeasuredWidth() + i13;
                paddingTop = childAt.getMeasuredHeight() + i12;
                if (z2) {
                    childAt.layout(i7 - measuredWidth2, i12, (i7 - i11) - i6, paddingTop);
                } else {
                    childAt.layout(i13, i12, measuredWidth2, paddingTop);
                }
                i8 = i11 + childAt.getMeasuredWidth() + i6 + i5 + this.f14243b;
                i9 = i12;
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i8 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int i9 = paddingTop;
        int i10 = 0;
        int i11 = 0;
        while (i10 < getChildCount()) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 8) {
                i5 = i9;
            } else {
                measureChild(childAt, i, i2);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i7 = marginLayoutParams.leftMargin + 0;
                    i6 = marginLayoutParams.rightMargin + 0;
                } else {
                    i6 = 0;
                    i7 = 0;
                }
                int i12 = paddingLeft;
                i5 = i9;
                if (childAt.getMeasuredWidth() + paddingLeft + i7 > i8 - paddingRight) {
                    i12 = paddingLeft;
                    i5 = i9;
                    if (!mo718a()) {
                        i12 = getPaddingLeft();
                        i5 = paddingTop + this.f14242a;
                    }
                }
                int measuredWidth = childAt.getMeasuredWidth() + i12 + i7;
                int measuredHeight = childAt.getMeasuredHeight();
                int i13 = i11;
                if (measuredWidth > i11) {
                    i13 = measuredWidth;
                }
                int measuredWidth2 = childAt.getMeasuredWidth();
                int i14 = this.f14243b;
                i11 = i13;
                if (i10 == getChildCount() - 1) {
                    i11 = i13 + i6;
                }
                paddingLeft = measuredWidth2 + i7 + i6 + i14 + i12;
                paddingTop = measuredHeight + i5;
            }
            i10++;
            i9 = i5;
        }
        int paddingRight2 = getPaddingRight() + i11;
        int paddingBottom = getPaddingBottom() + paddingTop;
        if (mode != Integer.MIN_VALUE) {
            i3 = size;
            if (mode != 1073741824) {
                i3 = paddingRight2;
            }
        } else {
            i3 = Math.min(paddingRight2, size);
        }
        if (mode2 != Integer.MIN_VALUE) {
            i4 = size2;
            if (mode2 != 1073741824) {
                i4 = paddingBottom;
            }
        } else {
            i4 = Math.min(paddingBottom, size2);
        }
        setMeasuredDimension(i3, i4);
    }

    public void setItemSpacing(int i) {
        this.f14243b = i;
    }

    public void setLineSpacing(int i) {
        this.f14242a = i;
    }

    public void setSingleLine(boolean z) {
        this.f14244c = z;
    }
}
