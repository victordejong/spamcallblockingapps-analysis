package com.viewpagerindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;
/* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/b.class */
final class b extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f35935a = {16843049, 16843561, 16843562};

    /* renamed from: b  reason: collision with root package name */
    private Drawable f35936b;

    /* renamed from: c  reason: collision with root package name */
    private int f35937c;

    /* renamed from: d  reason: collision with root package name */
    private int f35938d;
    private int e;
    private int f;

    public b(Context context, int i) {
        super(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, f35935a, i, 0);
        setDividerDrawable(obtainStyledAttributes.getDrawable(0));
        this.f = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.e = obtainStyledAttributes.getInteger(1, 0);
        obtainStyledAttributes.recycle();
    }

    private void a(Canvas canvas, int i) {
        this.f35936b.setBounds(getPaddingLeft() + this.f, i, (getWidth() - getPaddingRight()) - this.f, this.f35938d + i);
        this.f35936b.draw(canvas);
    }

    private boolean a(int i) {
        boolean z = false;
        if (i != 0) {
            if (i == getChildCount()) {
                z = false;
            } else {
                z = false;
                if ((this.e & 2) != 0) {
                    while (true) {
                        i--;
                        z = false;
                        if (i < 0) {
                            break;
                        } else if (getChildAt(i).getVisibility() != 8) {
                            z = true;
                            break;
                        }
                    }
                }
            }
        }
        return z;
    }

    private void b(Canvas canvas, int i) {
        this.f35936b.setBounds(i, getPaddingTop() + this.f, this.f35937c + i, (getHeight() - getPaddingBottom()) - this.f);
        this.f35936b.draw(canvas);
    }

    @Override // android.view.ViewGroup
    protected final void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        int indexOfChild = indexOfChild(view);
        int orientation = getOrientation();
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (a(indexOfChild)) {
            if (orientation == 1) {
                layoutParams.topMargin = this.f35938d;
            } else {
                layoutParams.leftMargin = this.f35937c;
            }
        }
        int childCount = getChildCount();
        if (indexOfChild == childCount - 1 && a(childCount)) {
            if (orientation == 1) {
                layoutParams.bottomMargin = this.f35938d;
            } else {
                layoutParams.rightMargin = this.f35937c;
            }
        }
        super.measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected final void onDraw(Canvas canvas) {
        if (this.f35936b != null) {
            if (getOrientation() == 1) {
                int childCount = getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = getChildAt(i);
                    if (!(childAt == null || childAt.getVisibility() == 8 || !a(i))) {
                        a(canvas, childAt.getTop() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).topMargin);
                    }
                }
                if (a(childCount)) {
                    View childAt2 = getChildAt(childCount - 1);
                    a(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f35938d : childAt2.getBottom());
                }
            } else {
                int childCount2 = getChildCount();
                for (int i2 = 0; i2 < childCount2; i2++) {
                    View childAt3 = getChildAt(i2);
                    if (!(childAt3 == null || childAt3.getVisibility() == 8 || !a(i2))) {
                        b(canvas, childAt3.getLeft() - ((LinearLayout.LayoutParams) childAt3.getLayoutParams()).leftMargin);
                    }
                }
                if (a(childCount2)) {
                    View childAt4 = getChildAt(childCount2 - 1);
                    b(canvas, childAt4 == null ? (getWidth() - getPaddingRight()) - this.f35937c : childAt4.getRight());
                }
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.LinearLayout
    public final void setDividerDrawable(Drawable drawable) {
        if (drawable != this.f35936b) {
            this.f35936b = drawable;
            boolean z = false;
            if (drawable != null) {
                this.f35937c = drawable.getIntrinsicWidth();
                this.f35938d = drawable.getIntrinsicHeight();
            } else {
                this.f35937c = 0;
                this.f35938d = 0;
            }
            if (drawable == null) {
                z = true;
            }
            setWillNotDraw(z);
            requestLayout();
        }
    }
}
