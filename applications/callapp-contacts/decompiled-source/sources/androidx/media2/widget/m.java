package androidx.media2.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/m.class */
class m extends i {

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/m$a.class */
    static final class a extends ViewGroup.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public boolean f5260a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
            this(-1, -1);
        }

        a(int i, int i2) {
            super(i, i2);
        }

        a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    m(Context context) {
        super(context);
    }

    m(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private int a() {
        return Math.max(getPaddingLeft(), 0);
    }

    private int b() {
        return Math.max(getPaddingRight(), 0);
    }

    private int c() {
        return Math.max(getPaddingTop(), 0);
    }

    private int d() {
        return Math.max(getPaddingBottom(), 0);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new a(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a ? layoutParams : new a(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int a2 = a();
        int b2 = b();
        int c2 = c();
        int d2 = d();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = (((((i3 - i) - b2) - a2) - measuredWidth) / 2) + a2;
                int i7 = (((((i4 - i2) - d2) - c2) - measuredHeight) / 2) + c2;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            a aVar = (a) childAt.getLayoutParams();
            i3 = i3;
            i4 = i4;
            i5 = i5;
            if (childAt.getVisibility() != 8) {
                i3 = i3;
                i4 = i4;
                i5 = i5;
                if (!aVar.f5260a) {
                    measureChild(childAt, i, i2);
                    i3 = Math.max(i3, childAt.getMeasuredWidth());
                    i4 = Math.max(i4, childAt.getMeasuredHeight());
                    i5 |= childAt.getMeasuredState();
                }
            }
        }
        int a2 = a();
        int b2 = b();
        int c2 = c();
        int d2 = d();
        int max = Math.max(i3 + a2 + b2, getSuggestedMinimumWidth());
        int max2 = Math.max(i4 + c2 + d2, getSuggestedMinimumHeight());
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
        setMeasuredDimension(resolveSizeAndState(i7, i, i5), resolveSizeAndState(i8, i2, i5 << 16));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth() - (a() + b()), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() - (c() + d()), 1073741824);
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt2 = getChildAt(i9);
            a aVar2 = (a) childAt2.getLayoutParams();
            if (childAt2.getVisibility() != 8 && aVar2.f5260a) {
                childAt2.measure(makeMeasureSpec, makeMeasureSpec2);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
