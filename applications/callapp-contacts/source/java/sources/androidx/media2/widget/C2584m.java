package androidx.media2.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.media2.widget.m */
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/m.class */
class C2584m extends AbstractC2569i {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.widget.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/m$a.class */
    public static final class C2585a extends ViewGroup.LayoutParams {

        /* renamed from: a */
        public boolean f9783a;

        public C2585a() {
            this(-1, -1);
        }

        C2585a(int i, int i2) {
            super(i, i2);
        }

        C2585a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        C2585a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    C2584m(Context context) {
        super(context);
    }

    C2584m(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public C2584m(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    private int m40606a() {
        return Math.max(getPaddingLeft(), 0);
    }

    /* renamed from: b */
    private int m40605b() {
        return Math.max(getPaddingRight(), 0);
    }

    /* renamed from: c */
    private int m40604c() {
        return Math.max(getPaddingTop(), 0);
    }

    /* renamed from: d */
    private int m40603d() {
        return Math.max(getPaddingBottom(), 0);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C2585a;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C2585a(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C2585a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C2585a ? layoutParams : new C2585a(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int m40606a = m40606a();
        int m40605b = m40605b();
        int m40604c = m40604c();
        int m40603d = m40603d();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = (((((i3 - i) - m40605b) - m40606a) - measuredWidth) / 2) + m40606a;
                int i7 = (((((i4 - i2) - m40603d) - m40604c) - measuredHeight) / 2) + m40604c;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int childCount = getChildCount();
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i3 = i7;
            if (i4 >= childCount) {
                break;
            }
            View childAt = getChildAt(i4);
            C2585a c2585a = (C2585a) childAt.getLayoutParams();
            int i8 = i5;
            int i9 = i6;
            int i10 = i3;
            if (childAt.getVisibility() != 8) {
                i8 = i5;
                i9 = i6;
                i10 = i3;
                if (!c2585a.f9783a) {
                    measureChild(childAt, i, i2);
                    i8 = Math.max(i5, childAt.getMeasuredWidth());
                    i9 = Math.max(i6, childAt.getMeasuredHeight());
                    i10 = i3 | childAt.getMeasuredState();
                }
            }
            i4++;
            i5 = i8;
            i6 = i9;
            i7 = i10;
        }
        int m40606a = m40606a();
        int m40605b = m40605b();
        int m40604c = m40604c();
        int m40603d = m40603d();
        int max = Math.max(i5 + m40606a + m40605b, getSuggestedMinimumWidth());
        int max2 = Math.max(i6 + m40604c + m40603d, getSuggestedMinimumHeight());
        int i11 = max;
        int i12 = max2;
        if (Build.VERSION.SDK_INT >= 23) {
            Drawable foreground = getForeground();
            i11 = max;
            i12 = max2;
            if (foreground != null) {
                i11 = Math.max(max, foreground.getMinimumWidth());
                i12 = Math.max(max2, foreground.getMinimumHeight());
            }
        }
        setMeasuredDimension(resolveSizeAndState(i11, i, i3), resolveSizeAndState(i12, i2, i3 << 16));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth() - (m40606a() + m40605b()), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() - (m40604c() + m40603d()), 1073741824);
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt2 = getChildAt(i13);
            C2585a c2585a2 = (C2585a) childAt2.getLayoutParams();
            if (childAt2.getVisibility() != 8 && c2585a2.f9783a) {
                childAt2.measure(makeMeasureSpec, makeMeasureSpec2);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
