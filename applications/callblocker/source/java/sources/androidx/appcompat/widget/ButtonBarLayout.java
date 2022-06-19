package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.C0083a;
import androidx.core.p026h.C0595u;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ButtonBarLayout.class */
public class ButtonBarLayout extends LinearLayout {

    /* renamed from: a */
    private boolean f1028a;

    /* renamed from: b */
    private int f1029b = -1;

    /* renamed from: c */
    private int f1030c = 0;

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0083a.C0093j.ButtonBarLayout);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, C0083a.C0093j.ButtonBarLayout, attributeSet, obtainStyledAttributes, 0, 0);
        }
        this.f1028a = obtainStyledAttributes.getBoolean(C0083a.C0093j.ButtonBarLayout_allowStacking, true);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private int m21697a(int i) {
        int childCount = getChildCount();
        while (true) {
            if (i >= childCount) {
                i = -1;
                break;
            } else if (getChildAt(i).getVisibility() == 0) {
                break;
            } else {
                i++;
            }
        }
        return i;
    }

    /* renamed from: a */
    private boolean m21698a() {
        boolean z = true;
        if (getOrientation() != 1) {
            z = false;
        }
        return z;
    }

    private void setStacked(boolean z) {
        setOrientation(z ? 1 : 0);
        setGravity(z ? 5 : 80);
        View findViewById = findViewById(C0083a.C0089f.spacer);
        if (findViewById != null) {
            findViewById.setVisibility(z ? 8 : 4);
        }
        for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
            bringChildToFront(getChildAt(childCount));
        }
    }

    @Override // android.view.View
    public int getMinimumHeight() {
        return Math.max(this.f1030c, super.getMinimumHeight());
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int i4;
        int size = View.MeasureSpec.getSize(i);
        if (this.f1028a) {
            if (size > this.f1029b && m21698a()) {
                setStacked(false);
            }
            this.f1029b = size;
        }
        if (m21698a() || View.MeasureSpec.getMode(i) != 1073741824) {
            i3 = i;
            z = false;
        } else {
            i3 = View.MeasureSpec.makeMeasureSpec(size, RecyclerView.UNDEFINED_DURATION);
            z = true;
        }
        super.onMeasure(i3, i2);
        boolean z2 = z;
        if (this.f1028a) {
            z2 = z;
            if (!m21698a()) {
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
        int m21697a = m21697a(0);
        if (m21697a >= 0) {
            View childAt = getChildAt(m21697a);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = layoutParams.bottomMargin + childAt.getMeasuredHeight() + getPaddingTop() + layoutParams.topMargin + 0;
            if (m21698a()) {
                int m21697a2 = m21697a(m21697a + 1);
                i4 = measuredHeight;
                if (m21697a2 >= 0) {
                    i4 = measuredHeight + getChildAt(m21697a2).getPaddingTop() + ((int) (16.0f * getResources().getDisplayMetrics().density));
                }
            } else {
                i4 = measuredHeight + getPaddingBottom();
            }
        } else {
            i4 = 0;
        }
        if (C0595u.m20312l(this) != i4) {
            setMinimumHeight(i4);
        }
    }

    public void setAllowStacking(boolean z) {
        if (this.f1028a != z) {
            this.f1028a = z;
            if (!this.f1028a && getOrientation() == 1) {
                setStacked(false);
            }
            requestLayout();
        }
    }
}
