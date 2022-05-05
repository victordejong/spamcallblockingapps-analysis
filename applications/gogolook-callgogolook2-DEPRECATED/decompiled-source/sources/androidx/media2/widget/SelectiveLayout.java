package androidx.media2.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/SelectiveLayout.class */
public class SelectiveLayout extends MediaViewGroup {

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/SelectiveLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.LayoutParams {
        public boolean forceMatchParent;

        public LayoutParams() {
            this(-1, -1);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public SelectiveLayout(@NonNull Context context) {
        super(context);
    }

    public SelectiveLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SelectiveLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
    }

    private int getPositivePaddingBottom() {
        return Math.max(getPaddingBottom(), 0);
    }

    private int getPositivePaddingLeft() {
        return Math.max(getPaddingLeft(), 0);
    }

    private int getPositivePaddingRight() {
        return Math.max(getPaddingRight(), 0);
    }

    private int getPositivePaddingTop() {
        return Math.max(getPaddingTop(), 0);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? layoutParams : new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int positivePaddingLeft = getPositivePaddingLeft();
        int positivePaddingRight = getPositivePaddingRight();
        int positivePaddingTop = getPositivePaddingTop();
        int positivePaddingBottom = getPositivePaddingBottom();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = (((((i3 - i) - positivePaddingRight) - positivePaddingLeft) - measuredWidth) / 2) + positivePaddingLeft;
                int i7 = (((((i4 - i2) - positivePaddingBottom) - positivePaddingTop) - measuredHeight) / 2) + positivePaddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            i3 = i3;
            i4 = i4;
            i5 = i5;
            if (childAt.getVisibility() != 8) {
                i3 = i3;
                i4 = i4;
                i5 = i5;
                if (!layoutParams.forceMatchParent) {
                    measureChild(childAt, i, i2);
                    i3 = Math.max(i3, childAt.getMeasuredWidth());
                    i4 = Math.max(i4, childAt.getMeasuredHeight());
                    i5 |= childAt.getMeasuredState();
                }
            }
        }
        int positivePaddingLeft = getPositivePaddingLeft();
        int positivePaddingRight = getPositivePaddingRight();
        int positivePaddingTop = getPositivePaddingTop();
        int positivePaddingBottom = getPositivePaddingBottom();
        int max = Math.max(i3 + positivePaddingLeft + positivePaddingRight, getSuggestedMinimumWidth());
        int max2 = Math.max(i4 + positivePaddingTop + positivePaddingBottom, getSuggestedMinimumHeight());
        int i7 = max;
        int i8 = max2;
        if (Build.VERSION.SDK_INT >= 23) {
            Drawable foreground = getForeground();
            i7 = max;
            i8 = max2;
            if (foreground != null) {
                i7 = Math.max(max, foreground.getMinimumWidth());
                i8 = Math.max(max2, foreground.getMinimumHeight());
            }
        }
        setMeasuredDimension(ViewGroup.resolveSizeAndState(i7, i, i5), ViewGroup.resolveSizeAndState(i8, i2, i5 << 16));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth() - (getPositivePaddingLeft() + getPositivePaddingRight()), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() - (getPositivePaddingTop() + getPositivePaddingBottom()), 1073741824);
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt2 = getChildAt(i9);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (childAt2.getVisibility() != 8 && layoutParams2.forceMatchParent) {
                childAt2.measure(makeMeasureSpec, makeMeasureSpec2);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
