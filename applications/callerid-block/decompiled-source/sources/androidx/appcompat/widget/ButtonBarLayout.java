package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import d.a.f;
import d.a.j;
import d.h.m.t;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ButtonBarLayout.class */
public class ButtonBarLayout extends LinearLayout {

    /* renamed from: b */
    private boolean f404b;

    /* renamed from: c */
    private int f405c = -1;

    /* renamed from: d */
    private int f406d = 0;

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int[] iArr = j.ButtonBarLayout;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        t.l0(this, context, iArr, attributeSet, obtainStyledAttributes, 0, 0);
        this.f404b = obtainStyledAttributes.getBoolean(j.ButtonBarLayout_allowStacking, true);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private int m14765a(int i) {
        int childCount = getChildCount();
        while (i < childCount) {
            if (getChildAt(i).getVisibility() == 0) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: b */
    private boolean m14764b() {
        boolean z = true;
        if (getOrientation() != 1) {
            z = false;
        }
        return z;
    }

    private void setStacked(boolean z) {
        setOrientation(z ? 1 : 0);
        setGravity(z ? 5 : 80);
        View findViewById = findViewById(f.spacer);
        if (findViewById != null) {
            findViewById.setVisibility(z ? 8 : 4);
        }
        for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
            bringChildToFront(getChildAt(childCount));
        }
    }

    @Override // android.view.View
    public int getMinimumHeight() {
        return Math.max(this.f406d, super.getMinimumHeight());
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int size = View.MeasureSpec.getSize(i);
        int i4 = 0;
        if (this.f404b) {
            if (size > this.f405c && m14764b()) {
                setStacked(false);
            }
            this.f405c = size;
        }
        if (m14764b() || View.MeasureSpec.getMode(i) != 1073741824) {
            i3 = i;
            z = false;
        } else {
            i3 = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z = true;
        }
        super.onMeasure(i3, i2);
        boolean z2 = z;
        if (this.f404b) {
            z2 = z;
            if (!m14764b()) {
                z2 = z;
                if ((getMeasuredWidthAndState() & (-16777216)) == 16777216) {
                    setStacked(true);
                    z2 = true;
                }
            }
        }
        if (z2) {
            super.onMeasure(i, i2);
        }
        int a = m14765a(0);
        if (a >= 0) {
            View childAt = getChildAt(a);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            int paddingTop = getPaddingTop() + childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin + 0;
            if (m14764b()) {
                int a2 = m14765a(a + 1);
                i4 = paddingTop;
                if (a2 >= 0) {
                    i4 = paddingTop + getChildAt(a2).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f));
                }
            } else {
                i4 = paddingTop + getPaddingBottom();
            }
        }
        if (t.C(this) != i4) {
            setMinimumHeight(i4);
        }
    }

    public void setAllowStacking(boolean z) {
        if (this.f404b != z) {
            this.f404b = z;
            if (!z && getOrientation() == 1) {
                setStacked(false);
            }
            requestLayout();
        }
    }
}
