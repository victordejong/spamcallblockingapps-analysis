package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.C0142a;
import androidx.core.view.C0926v;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ButtonBarLayout.class */
public class ButtonBarLayout extends LinearLayout {

    /* renamed from: a */
    private boolean f1193a;

    /* renamed from: b */
    private int f1194b = -1;

    /* renamed from: c */
    private int f1195c = 0;

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0142a.C0152j.ButtonBarLayout);
        C0926v.m44133a(this, context, C0142a.C0152j.ButtonBarLayout, attributeSet, obtainStyledAttributes, 0);
        this.f1193a = obtainStyledAttributes.getBoolean(C0142a.C0152j.ButtonBarLayout_allowStacking, true);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private int m45960a(int i) {
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
    private void m45959a(boolean z) {
        setOrientation(z ? 1 : 0);
        setGravity(z ? 5 : 80);
        View findViewById = findViewById(C0142a.C0148f.spacer);
        if (findViewById != null) {
            findViewById.setVisibility(z ? 8 : 4);
        }
        for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
            bringChildToFront(getChildAt(childCount));
        }
    }

    /* renamed from: a */
    private boolean m45961a() {
        return getOrientation() == 1;
    }

    @Override // android.view.View
    public int getMinimumHeight() {
        return Math.max(this.f1195c, super.getMinimumHeight());
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int size = View.MeasureSpec.getSize(i);
        if (this.f1193a) {
            if (size > this.f1194b && m45961a()) {
                m45959a(false);
            }
            this.f1194b = size;
        }
        if (m45961a() || View.MeasureSpec.getMode(i) != 1073741824) {
            i3 = i;
            z = false;
        } else {
            i3 = View.MeasureSpec.makeMeasureSpec(size, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            z = true;
        }
        super.onMeasure(i3, i2);
        boolean z2 = z;
        if (this.f1193a) {
            z2 = z;
            if (!m45961a()) {
                z2 = z;
                if ((getMeasuredWidthAndState() & (-16777216)) == 16777216) {
                    m45959a(true);
                    z2 = true;
                }
            }
        }
        if (z2) {
            super.onMeasure(i, i2);
        }
        int m45960a = m45960a(0);
        int i4 = 0;
        if (m45960a >= 0) {
            View childAt = getChildAt(m45960a);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            int paddingTop = getPaddingTop() + childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin + 0;
            if (m45961a()) {
                int m45960a2 = m45960a(m45960a + 1);
                i4 = paddingTop;
                if (m45960a2 >= 0) {
                    i4 = paddingTop + getChildAt(m45960a2).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f));
                }
            } else {
                i4 = paddingTop + getPaddingBottom();
            }
        }
        if (C0926v.m44087l(this) != i4) {
            setMinimumHeight(i4);
        }
    }

    public void setAllowStacking(boolean z) {
        if (this.f1193a != z) {
            this.f1193a = z;
            if (!z && getOrientation() == 1) {
                m45959a(false);
            }
            requestLayout();
        }
    }
}
