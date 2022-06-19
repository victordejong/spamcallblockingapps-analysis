package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p032b.C0770a;
import androidx.core.view.C0889ac;
import androidx.core.view.C0908e;
import androidx.core.view.C0926v;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/HeaderScrollingViewBehavior.class */
public abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {

    /* renamed from: c */
    int f52474c;

    /* renamed from: a */
    final Rect f52472a = new Rect();

    /* renamed from: b */
    final Rect f52473b = new Rect();

    /* renamed from: d */
    private int f52475d = 0;

    public HeaderScrollingViewBehavior() {
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    float mo11256a(View view) {
        return 1.0f;
    }

    /* renamed from: a */
    abstract View mo11254a(List<View> list);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public boolean mo11255a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        View mo11254a;
        int i5;
        int i6 = view.getLayoutParams().height;
        if ((i6 == -1 || i6 == -2) && (mo11254a = mo11254a(coordinatorLayout.m44656b(view))) != null) {
            int size = View.MeasureSpec.getSize(i3);
            if (size > 0) {
                i5 = size;
                if (C0926v.m44080s(mo11254a)) {
                    C0889ac c0889ac = coordinatorLayout.f3179e;
                    i5 = size;
                    if (c0889ac != null) {
                        i5 = size + c0889ac.m44227b() + c0889ac.m44224d();
                    }
                }
            } else {
                i5 = coordinatorLayout.getHeight();
            }
            int mo11252b = mo11252b(mo11254a);
            coordinatorLayout.m44662a(view, i, i2, View.MeasureSpec.makeMeasureSpec((i5 + mo11252b) - mo11254a.getMeasuredHeight(), i6 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public final int m11253b() {
        return this.f52475d;
    }

    /* renamed from: b */
    public int mo11252b(View view) {
        return view.getMeasuredHeight();
    }

    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    /* renamed from: b */
    public final void mo11249b(CoordinatorLayout coordinatorLayout, View view, int i) {
        View mo11254a = mo11254a(coordinatorLayout.m44656b(view));
        if (mo11254a == null) {
            super.mo11249b(coordinatorLayout, (CoordinatorLayout) view, i);
            this.f52475d = 0;
            return;
        }
        CoordinatorLayout.C0702d c0702d = (CoordinatorLayout.C0702d) view.getLayoutParams();
        Rect rect = this.f52472a;
        rect.set(coordinatorLayout.getPaddingLeft() + c0702d.leftMargin, mo11254a.getBottom() + c0702d.topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - c0702d.rightMargin, ((coordinatorLayout.getHeight() + mo11254a.getBottom()) - coordinatorLayout.getPaddingBottom()) - c0702d.bottomMargin);
        C0889ac c0889ac = coordinatorLayout.f3179e;
        if (c0889ac != null && C0926v.m44080s(coordinatorLayout) && !C0926v.m44080s(view)) {
            rect.left += c0889ac.m44231a();
            rect.right -= c0889ac.m44225c();
        }
        Rect rect2 = this.f52473b;
        int i2 = c0702d.f3202c;
        if (i2 == 0) {
            i2 = 8388659;
        }
        C0908e.m44194a(i2, view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
        int m11251c = m11251c(mo11254a);
        view.layout(rect2.left, rect2.top - m11251c, rect2.right, rect2.bottom - m11251c);
        this.f52475d = rect2.top - mo11254a.getBottom();
    }

    /* renamed from: c */
    public final int m11251c(View view) {
        if (this.f52474c == 0) {
            return 0;
        }
        float mo11256a = mo11256a(view);
        int i = this.f52474c;
        return C0770a.m44521a((int) (mo11256a * i), 0, i);
    }
}
