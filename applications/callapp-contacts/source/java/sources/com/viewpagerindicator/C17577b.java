package com.viewpagerindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;
/* renamed from: com.viewpagerindicator.b */
/* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/b.class */
final class C17577b extends LinearLayout {

    /* renamed from: a */
    private static final int[] f62306a = {16843049, 16843561, 16843562};

    /* renamed from: b */
    private Drawable f62307b;

    /* renamed from: c */
    private int f62308c;

    /* renamed from: d */
    private int f62309d;

    /* renamed from: e */
    private int f62310e;

    /* renamed from: f */
    private int f62311f;

    public C17577b(Context context, int i) {
        super(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, f62306a, i, 0);
        setDividerDrawable(obtainStyledAttributes.getDrawable(0));
        this.f62311f = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.f62310e = obtainStyledAttributes.getInteger(1, 0);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private void m4904a(Canvas canvas, int i) {
        this.f62307b.setBounds(getPaddingLeft() + this.f62311f, i, (getWidth() - getPaddingRight()) - this.f62311f, this.f62309d + i);
        this.f62307b.draw(canvas);
    }

    /* renamed from: a */
    private boolean m4905a(int i) {
        boolean z = false;
        if (i != 0) {
            if (i == getChildCount()) {
                z = false;
            } else {
                z = false;
                if ((this.f62310e & 2) != 0) {
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

    /* renamed from: b */
    private void m4903b(Canvas canvas, int i) {
        this.f62307b.setBounds(i, getPaddingTop() + this.f62311f, this.f62308c + i, (getHeight() - getPaddingBottom()) - this.f62311f);
        this.f62307b.draw(canvas);
    }

    @Override // android.view.ViewGroup
    protected final void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        int indexOfChild = indexOfChild(view);
        int orientation = getOrientation();
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (m4905a(indexOfChild)) {
            if (orientation == 1) {
                layoutParams.topMargin = this.f62309d;
            } else {
                layoutParams.leftMargin = this.f62308c;
            }
        }
        int childCount = getChildCount();
        if (indexOfChild == childCount - 1 && m4905a(childCount)) {
            if (orientation == 1) {
                layoutParams.bottomMargin = this.f62309d;
            } else {
                layoutParams.rightMargin = this.f62308c;
            }
        }
        super.measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected final void onDraw(Canvas canvas) {
        if (this.f62307b != null) {
            if (getOrientation() == 1) {
                int childCount = getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = getChildAt(i);
                    if (childAt != null && childAt.getVisibility() != 8 && m4905a(i)) {
                        m4904a(canvas, childAt.getTop() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).topMargin);
                    }
                }
                if (m4905a(childCount)) {
                    View childAt2 = getChildAt(childCount - 1);
                    m4904a(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f62309d : childAt2.getBottom());
                }
            } else {
                int childCount2 = getChildCount();
                for (int i2 = 0; i2 < childCount2; i2++) {
                    View childAt3 = getChildAt(i2);
                    if (childAt3 != null && childAt3.getVisibility() != 8 && m4905a(i2)) {
                        m4903b(canvas, childAt3.getLeft() - ((LinearLayout.LayoutParams) childAt3.getLayoutParams()).leftMargin);
                    }
                }
                if (m4905a(childCount2)) {
                    View childAt4 = getChildAt(childCount2 - 1);
                    m4903b(canvas, childAt4 == null ? (getWidth() - getPaddingRight()) - this.f62308c : childAt4.getRight());
                }
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.LinearLayout
    public final void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f62307b) {
            return;
        }
        this.f62307b = drawable;
        boolean z = false;
        if (drawable != null) {
            this.f62308c = drawable.getIntrinsicWidth();
            this.f62309d = drawable.getIntrinsicHeight();
        } else {
            this.f62308c = 0;
            this.f62309d = 0;
        }
        if (drawable == null) {
            z = true;
        }
        setWillNotDraw(z);
        requestLayout();
    }
}
