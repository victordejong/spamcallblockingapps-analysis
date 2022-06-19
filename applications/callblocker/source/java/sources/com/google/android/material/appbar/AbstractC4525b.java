package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p021c.C0486a;
import androidx.core.p026h.C0572ac;
import androidx.core.p026h.C0576c;
import androidx.core.p026h.C0595u;
import java.util.List;
/* renamed from: com.google.android.material.appbar.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/b.class */
public abstract class AbstractC4525b extends C4526c<View> {

    /* renamed from: a */
    final Rect f19638a = new Rect();

    /* renamed from: b */
    final Rect f19639b = new Rect();

    /* renamed from: c */
    private int f19640c = 0;

    /* renamed from: d */
    private int f19641d;

    public AbstractC4525b() {
    }

    public AbstractC4525b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: c */
    private static int m3750c(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 8388659;
        }
        return i2;
    }

    /* renamed from: a */
    float mo3756a(View view) {
        return 1.0f;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    public boolean mo3755a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        boolean z;
        View mo3751b;
        int height;
        int i5 = view.getLayoutParams().height;
        if ((i5 == -1 || i5 == -2) && (mo3751b = mo3751b(coordinatorLayout.m20965c(view))) != null) {
            int size = View.MeasureSpec.getSize(i3);
            if (size > 0) {
                height = size;
                if (C0595u.m20306r(mo3751b)) {
                    C0572ac lastWindowInsets = coordinatorLayout.getLastWindowInsets();
                    height = size;
                    if (lastWindowInsets != null) {
                        height = size + lastWindowInsets.m20436d() + lastWindowInsets.m20438b();
                    }
                }
            } else {
                height = coordinatorLayout.getHeight();
            }
            int mo3752b = height + mo3752b(mo3751b);
            int measuredHeight = mo3751b.getMeasuredHeight();
            if (m3754b()) {
                view.setTranslationY(-measuredHeight);
            } else {
                mo3752b -= measuredHeight;
            }
            coordinatorLayout.m20986a(view, i, i2, View.MeasureSpec.makeMeasureSpec(mo3752b, i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public int mo3752b(View view) {
        return view.getMeasuredHeight();
    }

    /* renamed from: b */
    abstract View mo3751b(List<View> list);

    /* renamed from: b */
    public final void m3753b(int i) {
        this.f19641d = i;
    }

    @Override // com.google.android.material.appbar.C4526c
    /* renamed from: b */
    public void mo3745b(CoordinatorLayout coordinatorLayout, View view, int i) {
        View mo3751b = mo3751b(coordinatorLayout.m20965c(view));
        if (mo3751b == null) {
            super.mo3745b(coordinatorLayout, (CoordinatorLayout) view, i);
            this.f19640c = 0;
            return;
        }
        CoordinatorLayout.C0426e c0426e = (CoordinatorLayout.C0426e) view.getLayoutParams();
        Rect rect = this.f19638a;
        rect.set(coordinatorLayout.getPaddingLeft() + c0426e.leftMargin, mo3751b.getBottom() + c0426e.topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - c0426e.rightMargin, ((coordinatorLayout.getHeight() + mo3751b.getBottom()) - coordinatorLayout.getPaddingBottom()) - c0426e.bottomMargin);
        C0572ac lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && C0595u.m20306r(coordinatorLayout) && !C0595u.m20306r(view)) {
            rect.left += lastWindowInsets.m20442a();
            rect.right -= lastWindowInsets.m20437c();
        }
        Rect rect2 = this.f19639b;
        C0576c.m20420a(m3750c(c0426e.f1704c), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
        int m3749c = m3749c(mo3751b);
        view.layout(rect2.left, rect2.top - m3749c, rect2.right, rect2.bottom - m3749c);
        this.f19640c = rect2.top - mo3751b.getBottom();
    }

    /* renamed from: b */
    protected boolean m3754b() {
        return false;
    }

    /* renamed from: c */
    public final int m3749c(View view) {
        int i = 0;
        if (this.f19641d != 0) {
            i = C0486a.m20726a((int) (mo3756a(view) * this.f19641d), 0, this.f19641d);
        }
        return i;
    }

    /* renamed from: d */
    public final int m3748d() {
        return this.f19640c;
    }

    /* renamed from: e */
    public final int m3747e() {
        return this.f19641d;
    }
}
