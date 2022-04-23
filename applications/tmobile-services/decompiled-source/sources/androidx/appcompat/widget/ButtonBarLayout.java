package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.core.view.ViewCompat;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ButtonBarLayout.class */
public class ButtonBarLayout extends LinearLayout {

    /* renamed from: f */
    private boolean f1040f;

    /* renamed from: g */
    private int f1041g = -1;

    /* renamed from: h */
    private int f1042h = 0;

    public ButtonBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0042R.styleable.ButtonBarLayout);
        ViewCompat.m19187l0(this, context, C0042R.styleable.ButtonBarLayout, attributeSet, obtainStyledAttributes, 0, 0);
        this.f1040f = obtainStyledAttributes.getBoolean(C0042R.styleable.ButtonBarLayout_allowStacking, true);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private int m21516a(int i) {
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
    private boolean m21515b() {
        boolean z = true;
        if (getOrientation() != 1) {
            z = false;
        }
        return z;
    }

    private void setStacked(boolean z) {
        setOrientation(z ? 1 : 0);
        setGravity(z ? 5 : 80);
        View findViewById = findViewById(C0042R.C0045id.spacer);
        if (findViewById != null) {
            findViewById.setVisibility(z ? 8 : 4);
        }
        for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
            bringChildToFront(getChildAt(childCount));
        }
    }

    @Override // android.view.View
    public int getMinimumHeight() {
        return Math.max(this.f1042h, super.getMinimumHeight());
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int size = View.MeasureSpec.getSize(i);
        int i4 = 0;
        if (this.f1040f) {
            if (size > this.f1041g && m21515b()) {
                setStacked(false);
            }
            this.f1041g = size;
        }
        if (m21515b() || View.MeasureSpec.getMode(i) != 1073741824) {
            i3 = i;
            z = false;
        } else {
            i3 = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z = true;
        }
        super.onMeasure(i3, i2);
        boolean z2 = z;
        if (this.f1040f) {
            z2 = z;
            if (!m21515b()) {
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
        int a = m21516a(0);
        if (a >= 0) {
            View childAt = getChildAt(a);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            int paddingTop = getPaddingTop() + childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin + 0;
            if (m21515b()) {
                int a2 = m21516a(a + 1);
                i4 = paddingTop;
                if (a2 >= 0) {
                    i4 = paddingTop + getChildAt(a2).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f));
                }
            } else {
                i4 = paddingTop + getPaddingBottom();
            }
        }
        if (ViewCompat.m19242B(this) != i4) {
            setMinimumHeight(i4);
        }
    }

    public void setAllowStacking(boolean z) {
        if (this.f1040f != z) {
            this.f1040f = z;
            if (!z && getOrientation() == 1) {
                setStacked(false);
            }
            requestLayout();
        }
    }
}
