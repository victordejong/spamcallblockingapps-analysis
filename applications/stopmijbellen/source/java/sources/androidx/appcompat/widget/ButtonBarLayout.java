package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p117h8.C3035k;
import p163m0.C3589v;
import p163m0.C3611y;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ButtonBarLayout.class */
public class ButtonBarLayout extends LinearLayout {

    /* renamed from: a */
    public boolean f604a;

    /* renamed from: b */
    public boolean f605b;

    /* renamed from: c */
    public int f606c = -1;

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int[] iArr = C3035k.f10224k;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        C3589v.m2104t(this, context, iArr, attributeSet, obtainStyledAttributes, 0, 0);
        this.f604a = obtainStyledAttributes.getBoolean(0, true);
        obtainStyledAttributes.recycle();
        if (getOrientation() == 1) {
            setStacked(this.f604a);
        }
    }

    private void setStacked(boolean z) {
        if (this.f605b != z) {
            if (z && !this.f604a) {
                return;
            }
            this.f605b = z;
            setOrientation(z ? 1 : 0);
            setGravity(z ? 8388613 : 80);
            View findViewById = findViewById(C3681R.C3684id.spacer);
            if (findViewById != null) {
                findViewById.setVisibility(z ? 8 : 4);
            }
            for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
                bringChildToFront(getChildAt(childCount));
            }
        }
    }

    /* renamed from: a */
    public final int m8657a(int i) {
        int childCount = getChildCount();
        while (i < childCount) {
            if (getChildAt(i).getVisibility() == 0) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int size = View.MeasureSpec.getSize(i);
        if (this.f604a) {
            if (size > this.f606c && this.f605b) {
                setStacked(false);
            }
            this.f606c = size;
        }
        if (this.f605b || View.MeasureSpec.getMode(i) != 1073741824) {
            i3 = i;
            z = false;
        } else {
            i3 = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z = true;
        }
        super.onMeasure(i3, i2);
        boolean z2 = z;
        if (this.f604a) {
            z2 = z;
            if (!this.f605b) {
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
        int m8657a = m8657a(0);
        int i4 = 0;
        if (m8657a >= 0) {
            View childAt = getChildAt(m8657a);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            i4 = childAt.getMeasuredHeight() + getPaddingTop() + layoutParams.topMargin + layoutParams.bottomMargin + 0;
            if (this.f605b) {
                int m8657a2 = m8657a(m8657a + 1);
                if (m8657a2 >= 0) {
                    i4 = getChildAt(m8657a2).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f)) + i4;
                }
            } else {
                i4 = getPaddingBottom() + i4;
            }
        }
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if (C3589v.C3593d.m2090d(this) != i4) {
            setMinimumHeight(i4);
            if (i2 != 0) {
                return;
            }
            super.onMeasure(i, i2);
        }
    }

    public void setAllowStacking(boolean z) {
        if (this.f604a != z) {
            this.f604a = z;
            if (!z && this.f605b) {
                setStacked(false);
            }
            requestLayout();
        }
    }
}
