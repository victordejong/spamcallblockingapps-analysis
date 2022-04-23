package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.mopub.mobileads.resource.DrawableConstants;
import p012b.p016b.C0579f;
import p012b.p016b.C0583j;
import p012b.p042i.p054p.C1002u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ButtonBarLayout.class */
public class ButtonBarLayout extends LinearLayout {

    /* renamed from: a */
    public boolean f600a;

    /* renamed from: b */
    public int f601b = -1;

    /* renamed from: c */
    public int f602c = 0;

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0583j.ButtonBarLayout);
        C1002u.m35244a(this, context, C0583j.ButtonBarLayout, attributeSet, obtainStyledAttributes, 0, 0);
        this.f600a = obtainStyledAttributes.getBoolean(C0583j.ButtonBarLayout_allowStacking, true);
        obtainStyledAttributes.recycle();
    }

    private void setStacked(boolean z) {
        setOrientation(z ? 1 : 0);
        setGravity(z ? 5 : 80);
        View findViewById = findViewById(C0579f.spacer);
        if (findViewById != null) {
            findViewById.setVisibility(z ? 8 : 4);
        }
        for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
            bringChildToFront(getChildAt(childCount));
        }
    }

    /* renamed from: a */
    public final int m38990a(int i) {
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
    public final boolean m38991a() {
        boolean z = true;
        if (getOrientation() != 1) {
            z = false;
        }
        return z;
    }

    @Override // android.view.View
    public int getMinimumHeight() {
        return Math.max(this.f602c, super.getMinimumHeight());
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int size = View.MeasureSpec.getSize(i);
        int i4 = 0;
        if (this.f600a) {
            if (size > this.f601b && m38991a()) {
                setStacked(false);
            }
            this.f601b = size;
        }
        if (m38991a() || View.MeasureSpec.getMode(i) != 1073741824) {
            i3 = i;
            z = false;
        } else {
            i3 = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z = true;
        }
        super.onMeasure(i3, i2);
        boolean z2 = z;
        if (this.f600a) {
            z2 = z;
            if (!m38991a()) {
                z2 = z;
                if ((getMeasuredWidthAndState() & DrawableConstants.CtaButton.BACKGROUND_COLOR) == 16777216) {
                    setStacked(true);
                    z2 = true;
                }
            }
        }
        if (z2) {
            super.onMeasure(i, i2);
        }
        int a = m38990a(0);
        if (a >= 0) {
            View childAt = getChildAt(a);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            int paddingTop = getPaddingTop() + childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin + 0;
            if (m38991a()) {
                int a2 = m38990a(a + 1);
                i4 = paddingTop;
                if (a2 >= 0) {
                    i4 = paddingTop + getChildAt(a2).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f));
                }
            } else {
                i4 = paddingTop + getPaddingBottom();
            }
        }
        if (C1002u.m35207o(this) != i4) {
            setMinimumHeight(i4);
        }
    }

    public void setAllowStacking(boolean z) {
        if (this.f600a != z) {
            this.f600a = z;
            if (!z && getOrientation() == 1) {
                setStacked(false);
            }
            requestLayout();
        }
    }
}
