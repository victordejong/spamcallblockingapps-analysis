package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.List;
import p020b.p041h.p045g.C1542a;
import p020b.p041h.p050l.C1614e;
import p020b.p041h.p050l.C1615e0;
import p020b.p041h.p050l.C1679w;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/HeaderScrollingViewBehavior.class */
public abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {

    /* renamed from: d */
    final Rect f36078d = new Rect();

    /* renamed from: e */
    final Rect f36079e = new Rect();

    /* renamed from: f */
    private int f36080f = 0;

    /* renamed from: g */
    private int f36081g;

    public HeaderScrollingViewBehavior() {
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: N */
    private static int m5676N(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 8388659;
        }
        return i2;
    }

    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    /* renamed from: F */
    public void mo5669F(CoordinatorLayout coordinatorLayout, View view, int i) {
        View mo5682H = mo5682H(coordinatorLayout.m33559v(view));
        if (mo5682H == null) {
            super.mo5669F(coordinatorLayout, view, i);
            this.f36080f = 0;
            return;
        }
        CoordinatorLayout.C0532e c0532e = (CoordinatorLayout.C0532e) view.getLayoutParams();
        Rect rect = this.f36078d;
        rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0532e).leftMargin, mo5682H.getBottom() + ((ViewGroup.MarginLayoutParams) c0532e).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) c0532e).rightMargin, ((coordinatorLayout.getHeight() + mo5682H.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) c0532e).bottomMargin);
        C1615e0 lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && C1679w.m29258z(coordinatorLayout) && !C1679w.m29258z(view)) {
            rect.left += lastWindowInsets.m29590j();
            rect.right -= lastWindowInsets.m29589k();
        }
        Rect rect2 = this.f36079e;
        C1614e.m29601a(m5676N(c0532e.f2764c), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
        int m5681I = m5681I(mo5682H);
        view.layout(rect2.left, rect2.top - m5681I, rect2.right, rect2.bottom - m5681I);
        this.f36080f = rect2.top - mo5682H.getBottom();
    }

    /* renamed from: H */
    abstract View mo5682H(List<View> list);

    /* renamed from: I */
    public final int m5681I(View view) {
        int i = 0;
        if (this.f36081g != 0) {
            float mo5680J = mo5680J(view);
            int i2 = this.f36081g;
            i = C1542a.m29769b((int) (mo5680J * i2), 0, i2);
        }
        return i;
    }

    /* renamed from: J */
    float mo5680J(View view) {
        return 1.0f;
    }

    /* renamed from: K */
    public final int m5679K() {
        return this.f36081g;
    }

    /* renamed from: L */
    public int mo5678L(View view) {
        return view.getMeasuredHeight();
    }

    /* renamed from: M */
    public final int m5677M() {
        return this.f36080f;
    }

    /* renamed from: O */
    public final void m5675O(int i) {
        this.f36081g = i;
    }

    /* renamed from: P */
    protected boolean m5674P() {
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: m */
    public boolean mo5673m(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        View mo5682H;
        int i5;
        int i6 = view.getLayoutParams().height;
        if ((i6 == -1 || i6 == -2) && (mo5682H = mo5682H(coordinatorLayout.m33559v(view))) != null) {
            int size = View.MeasureSpec.getSize(i3);
            if (size > 0) {
                i5 = size;
                if (C1679w.m29258z(mo5682H)) {
                    C1615e0 lastWindowInsets = coordinatorLayout.getLastWindowInsets();
                    i5 = size;
                    if (lastWindowInsets != null) {
                        i5 = size + lastWindowInsets.m29588l() + lastWindowInsets.m29591i();
                    }
                }
            } else {
                i5 = coordinatorLayout.getHeight();
            }
            int mo5678L = i5 + mo5678L(mo5682H);
            int measuredHeight = mo5682H.getMeasuredHeight();
            if (m5674P()) {
                view.setTranslationY(-measuredHeight);
            } else {
                mo5678L -= measuredHeight;
            }
            coordinatorLayout.m33585N(view, i, i2, View.MeasureSpec.makeMeasureSpec(mo5678L, i6 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
            return true;
        }
        return false;
    }
}
