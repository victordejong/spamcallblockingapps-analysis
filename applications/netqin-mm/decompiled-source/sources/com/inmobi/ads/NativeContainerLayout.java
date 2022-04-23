package com.inmobi.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeContainerLayout.class */
public class NativeContainerLayout extends ViewGroup {

    /* renamed from: a */
    public static final String f31378a = NativeContainerLayout.class.getSimpleName();

    /* renamed from: com.inmobi.ads.NativeContainerLayout$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeContainerLayout$a.class */
    public static final class C8027a extends ViewGroup.LayoutParams {

        /* renamed from: a */
        public int f31379a;

        /* renamed from: b */
        public int f31380b;

        public C8027a(int i, int i2) {
            super(i, i2);
        }

        public C8027a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public NativeContainerLayout(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C8027a;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C8027a(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C8027a(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                C8027a aVar = (C8027a) childAt.getLayoutParams();
                int i6 = aVar.f31379a;
                childAt.layout(i6, aVar.f31380b, childAt.getMeasuredWidth() + i6, aVar.f31380b + childAt.getMeasuredHeight());
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        measureChildren(i, i2);
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            i3 = i3;
            i4 = i4;
            if (childAt.getVisibility() != 8) {
                C8027a aVar = (C8027a) childAt.getLayoutParams();
                int i6 = aVar.f31379a;
                int measuredWidth = childAt.getMeasuredWidth();
                int i7 = aVar.f31380b;
                int measuredHeight = childAt.getMeasuredHeight();
                i4 = Math.max(i4, i6 + measuredWidth);
                i3 = Math.max(i3, i7 + measuredHeight);
            }
        }
        setMeasuredDimension(ViewGroup.resolveSize(Math.max(i4, getSuggestedMinimumWidth()), i), ViewGroup.resolveSize(Math.max(i3, getSuggestedMinimumHeight()), i2));
    }
}
