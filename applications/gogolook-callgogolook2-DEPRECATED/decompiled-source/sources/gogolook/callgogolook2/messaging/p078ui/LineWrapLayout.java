package gogolook.callgogolook2.messaging.p078ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.ArrayList;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: gogolook.callgogolook2.messaging.ui.LineWrapLayout */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/LineWrapLayout.class */
public class LineWrapLayout extends ViewGroup {

    /* renamed from: gogolook.callgogolook2.messaging.ui.LineWrapLayout$LayoutParams */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/LineWrapLayout$LayoutParams.class */
    public static final class LayoutParams extends FrameLayout.LayoutParams {
        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        /* renamed from: a */
        public int m27366a() {
            return getMarginEnd();
        }

        /* renamed from: b */
        public int m27365b() {
            return getMarginStart();
        }
    }

    public LineWrapLayout(Context context) {
        this(context, null);
    }

    public LineWrapLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int c = C12212s0.m6784c(this);
        int width = (getWidth() - c) - C12212s0.m6786b(this);
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        ArrayList arrayList = new ArrayList();
        int i5 = c;
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int b = layoutParams.m27365b();
                int a = layoutParams.m27366a();
                int i8 = i6;
                int i9 = i5;
                int i10 = b;
                if (i5 + measuredWidth + b + a > width) {
                    arrayList.add(Integer.valueOf(i6));
                    i9 = c;
                    i8 = 0;
                    i10 = 0;
                }
                i6 = Math.max(i8, measuredHeight + ((FrameLayout.LayoutParams) layoutParams).topMargin + ((FrameLayout.LayoutParams) layoutParams).bottomMargin);
                i5 = i9 + measuredWidth + i10 + a;
            }
        }
        arrayList.add(Integer.valueOf(i6));
        int i11 = c;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt2 = getChildAt(i14);
            if (childAt2.getVisibility() == 8) {
                paddingTop = paddingTop;
                i13 = i13;
            } else {
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                int measuredWidth2 = childAt2.getMeasuredWidth();
                int measuredHeight2 = childAt2.getMeasuredHeight();
                int b2 = layoutParams2.m27365b();
                int a2 = layoutParams2.m27366a();
                int i15 = i11;
                paddingTop = paddingTop;
                int i16 = i12;
                i13 = i13;
                int i17 = b2;
                if (i11 + measuredWidth2 + b2 + a2 > width) {
                    paddingTop += i12;
                    i13++;
                    i15 = c;
                    i16 = 0;
                    i17 = 0;
                }
                int i18 = i15 + i17;
                int i19 = ((FrameLayout.LayoutParams) layoutParams2).topMargin + paddingTop;
                int i20 = ((FrameLayout.LayoutParams) layoutParams2).gravity & 112;
                if (i20 != 48 && arrayList.size() > i13) {
                    int intValue = ((Integer) arrayList.get(i13)).intValue();
                    if (i20 == 16) {
                        i19 = paddingTop + ((intValue - measuredHeight2) / 2);
                    } else if (i20 == 80) {
                        i19 = ((intValue + paddingTop) - measuredHeight2) - ((FrameLayout.LayoutParams) layoutParams2).bottomMargin;
                    }
                }
                if (getResources().getConfiguration().getLayoutDirection() == 1) {
                    int i21 = width - i18;
                    childAt2.layout(i21 - measuredWidth2, i19, i21, i19 + measuredHeight2);
                } else {
                    childAt2.layout(i18, i19, i18 + measuredWidth2, i19 + measuredHeight2);
                }
                i12 = Math.max(i16, measuredHeight2 + ((FrameLayout.LayoutParams) layoutParams2).topMargin + ((FrameLayout.LayoutParams) layoutParams2).bottomMargin);
                i11 = i15 + measuredWidth2 + i17 + a2;
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int c = C12212s0.m6784c(this);
        int b = C12212s0.m6786b(this);
        int mode = View.MeasureSpec.getMode(i);
        int size = (View.MeasureSpec.getSize(i) - c) - b;
        boolean z = mode == 1073741824;
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
        int i3 = c;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int b2 = layoutParams.m27365b();
                int a = layoutParams.m27366a();
                childAt.measure(makeMeasureSpec, 0);
                int measuredWidth = childAt.getMeasuredWidth() + b2 + a;
                int measuredHeight = childAt.getMeasuredHeight();
                int i9 = ((FrameLayout.LayoutParams) layoutParams).topMargin;
                int i10 = ((FrameLayout.LayoutParams) layoutParams).bottomMargin;
                i4 = i4;
                int i11 = i5;
                int i12 = i3;
                if (i3 + measuredWidth > size) {
                    i4 += i5;
                    i12 = c;
                    i11 = 0;
                    i7 = 0;
                }
                i3 = i12 + measuredWidth;
                i7 += measuredWidth;
                i5 = Math.max(i11, measuredHeight + i9 + i10);
                i6 = Math.max(i7, i6);
            }
        }
        if (z) {
            i6 = size;
        }
        setMeasuredDimension(i6 + c + b, i4 + i5 + getPaddingTop() + getPaddingBottom());
    }
}
