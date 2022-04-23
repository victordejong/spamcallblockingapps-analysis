package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/HeaderScrollingViewBehavior.class */
public abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {

    /* renamed from: d */
    public final Rect f7289d = new Rect();

    /* renamed from: e */
    public final Rect f7290e = new Rect();

    /* renamed from: f */
    public int f7291f = 0;

    /* renamed from: g */
    public int f7292g;

    public HeaderScrollingViewBehavior() {
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: c */
    public static int m31554c(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 8388659;
        }
        return i2;
    }

    /* renamed from: a */
    public final int m31560a(View view) {
        int i = 0;
        if (this.f7292g != 0) {
            float b = mo31556b(view);
            int i2 = this.f7292g;
            i = MathUtils.clamp((int) (b * i2), 0, i2);
        }
        return i;
    }

    /* renamed from: a */
    public abstract View mo31559a(List<View> list);

    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    /* renamed from: a */
    public void mo31550a(CoordinatorLayout coordinatorLayout, View view, int i) {
        View a = mo31559a(coordinatorLayout.getDependencies(view));
        if (a != null) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
            Rect rect = this.f7289d;
            rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, a.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((coordinatorLayout.getHeight() + a.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
            WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
                rect.left += lastWindowInsets.getSystemWindowInsetLeft();
                rect.right -= lastWindowInsets.getSystemWindowInsetRight();
            }
            Rect rect2 = this.f7290e;
            GravityCompat.apply(m31554c(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
            int a2 = m31560a(a);
            view.layout(rect2.left, rect2.top - a2, rect2.right, rect2.bottom - a2);
            this.f7291f = rect2.top - a.getBottom();
            return;
        }
        super.mo31550a(coordinatorLayout, view, i);
        this.f7291f = 0;
    }

    /* renamed from: b */
    public float mo31556b(View view) {
        return 1.0f;
    }

    /* renamed from: b */
    public final int m31558b() {
        return this.f7292g;
    }

    /* renamed from: b */
    public final void m31557b(int i) {
        this.f7292g = i;
    }

    /* renamed from: c */
    public final int m31555c() {
        return this.f7291f;
    }

    /* renamed from: c */
    public int mo31553c(View view) {
        return view.getMeasuredHeight();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        View a;
        int i5 = view.getLayoutParams().height;
        if ((i5 != -1 && i5 != -2) || (a = mo31559a(coordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        if (ViewCompat.getFitsSystemWindows(a) && !ViewCompat.getFitsSystemWindows(view)) {
            ViewCompat.setFitsSystemWindows(view, true);
            if (ViewCompat.getFitsSystemWindows(view)) {
                view.requestLayout();
                return true;
            }
        }
        int size = View.MeasureSpec.getSize(i3);
        int i6 = size;
        if (size == 0) {
            i6 = coordinatorLayout.getHeight();
        }
        int measuredHeight = a.getMeasuredHeight();
        coordinatorLayout.onMeasureChild(view, i, i2, View.MeasureSpec.makeMeasureSpec((i6 - measuredHeight) + mo31553c(a), i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
        return true;
    }
}
