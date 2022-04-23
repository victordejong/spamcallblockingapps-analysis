package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.a;
import androidx.core.view.v;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ButtonBarLayout.class */
public class ButtonBarLayout extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private boolean f943a;

    /* renamed from: b  reason: collision with root package name */
    private int f944b = -1;

    /* renamed from: c  reason: collision with root package name */
    private int f945c = 0;

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.ButtonBarLayout);
        v.a(this, context, a.j.ButtonBarLayout, attributeSet, obtainStyledAttributes, 0);
        this.f943a = obtainStyledAttributes.getBoolean(a.j.ButtonBarLayout_allowStacking, true);
        obtainStyledAttributes.recycle();
    }

    private int a(int i) {
        int childCount = getChildCount();
        while (i < childCount) {
            if (getChildAt(i).getVisibility() == 0) {
                return i;
            }
            i++;
        }
        return -1;
    }

    private void a(boolean z) {
        setOrientation(z ? 1 : 0);
        setGravity(z ? 5 : 80);
        View findViewById = findViewById(a.f.spacer);
        if (findViewById != null) {
            findViewById.setVisibility(z ? 8 : 4);
        }
        for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
            bringChildToFront(getChildAt(childCount));
        }
    }

    private boolean a() {
        return getOrientation() == 1;
    }

    @Override // android.view.View
    public int getMinimumHeight() {
        return Math.max(this.f945c, super.getMinimumHeight());
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int size = View.MeasureSpec.getSize(i);
        int i4 = 0;
        if (this.f943a) {
            if (size > this.f944b && a()) {
                a(false);
            }
            this.f944b = size;
        }
        if (a() || View.MeasureSpec.getMode(i) != 1073741824) {
            i3 = i;
            z = false;
        } else {
            i3 = View.MeasureSpec.makeMeasureSpec(size, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            z = true;
        }
        super.onMeasure(i3, i2);
        boolean z2 = z;
        if (this.f943a) {
            z2 = z;
            if (!a()) {
                z2 = z;
                if ((getMeasuredWidthAndState() & (-16777216)) == 16777216) {
                    a(true);
                    z2 = true;
                }
            }
        }
        if (z2) {
            super.onMeasure(i, i2);
        }
        int a2 = a(0);
        if (a2 >= 0) {
            View childAt = getChildAt(a2);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            int paddingTop = getPaddingTop() + childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin + 0;
            if (a()) {
                int a3 = a(a2 + 1);
                i4 = paddingTop;
                if (a3 >= 0) {
                    i4 = paddingTop + getChildAt(a3).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f));
                }
            } else {
                i4 = paddingTop + getPaddingBottom();
            }
        }
        if (v.l(this) != i4) {
            setMinimumHeight(i4);
        }
    }

    public void setAllowStacking(boolean z) {
        if (this.f943a != z) {
            this.f943a = z;
            if (!z && getOrientation() == 1) {
                a(false);
            }
            requestLayout();
        }
    }
}
