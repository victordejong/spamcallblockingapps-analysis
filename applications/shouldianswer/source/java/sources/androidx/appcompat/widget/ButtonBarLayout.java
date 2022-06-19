package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.C0051a;
import androidx.core.p023g.C0552u;
import androidx.customview.p026a.AbstractC0610a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ButtonBarLayout.class */
public class ButtonBarLayout extends LinearLayout {

    /* renamed from: a */
    private boolean f966a;

    /* renamed from: b */
    private int f967b = -1;

    /* renamed from: c */
    private int f968c = 0;

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0051a.C0061j.ButtonBarLayout);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, C0051a.C0061j.ButtonBarLayout, attributeSet, obtainStyledAttributes, 0, 0);
        }
        this.f966a = obtainStyledAttributes.getBoolean(C0051a.C0061j.ButtonBarLayout_allowStacking, true);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private int m7394a(int i) {
        int childCount = getChildCount();
        while (i < childCount) {
            if (getChildAt(i).getVisibility() == 0) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: a */
    private boolean m7395a() {
        boolean z = true;
        if (getOrientation() != 1) {
            z = false;
        }
        return z;
    }

    private void setStacked(boolean z) {
        setOrientation(z ? 1 : 0);
        setGravity(z ? 5 : 80);
        View findViewById = findViewById(C0051a.C0057f.spacer);
        if (findViewById != null) {
            findViewById.setVisibility(z ? 8 : 4);
        }
        for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
            bringChildToFront(getChildAt(childCount));
        }
    }

    @Override // android.view.View
    public int getMinimumHeight() {
        return Math.max(this.f968c, super.getMinimumHeight());
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int size = View.MeasureSpec.getSize(i);
        if (this.f966a) {
            if (size > this.f967b && m7395a()) {
                setStacked(false);
            }
            this.f967b = size;
        }
        if (m7395a() || View.MeasureSpec.getMode(i) != 1073741824) {
            i3 = i;
            z = false;
        } else {
            i3 = View.MeasureSpec.makeMeasureSpec(size, AbstractC0610a.INVALID_ID);
            z = true;
        }
        super.onMeasure(i3, i2);
        boolean z2 = z;
        if (this.f966a) {
            z2 = z;
            if (!m7395a()) {
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
        int m7394a = m7394a(0);
        int i4 = 0;
        if (m7394a >= 0) {
            View childAt = getChildAt(m7394a);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            int paddingTop = getPaddingTop() + childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin + 0;
            if (m7395a()) {
                int m7394a2 = m7394a(m7394a + 1);
                i4 = paddingTop;
                if (m7394a2 >= 0) {
                    i4 = paddingTop + getChildAt(m7394a2).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f));
                }
            } else {
                i4 = paddingTop + getPaddingBottom();
            }
        }
        if (C0552u.m6234m(this) != i4) {
            setMinimumHeight(i4);
        }
    }

    public void setAllowStacking(boolean z) {
        if (this.f966a != z) {
            this.f966a = z;
            if (!this.f966a && getOrientation() == 1) {
                setStacked(false);
            }
            requestLayout();
        }
    }
}
