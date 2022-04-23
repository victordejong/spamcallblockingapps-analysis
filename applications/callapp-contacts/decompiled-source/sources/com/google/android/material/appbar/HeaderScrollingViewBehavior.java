package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.b.a;
import androidx.core.view.ac;
import androidx.core.view.e;
import androidx.core.view.v;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/HeaderScrollingViewBehavior.class */
public abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {

    /* renamed from: c  reason: collision with root package name */
    int f30234c;

    /* renamed from: a  reason: collision with root package name */
    final Rect f30232a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    final Rect f30233b = new Rect();

    /* renamed from: d  reason: collision with root package name */
    private int f30235d = 0;

    public HeaderScrollingViewBehavior() {
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    float a(View view) {
        return 1.0f;
    }

    abstract View a(List<View> list);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        View a2;
        int i5;
        int i6 = view.getLayoutParams().height;
        if ((i6 != -1 && i6 != -2) || (a2 = a(coordinatorLayout.b(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i3);
        if (size > 0) {
            i5 = size;
            if (v.s(a2)) {
                ac acVar = coordinatorLayout.e;
                i5 = size;
                if (acVar != null) {
                    i5 = size + acVar.b() + acVar.d();
                }
            }
        } else {
            i5 = coordinatorLayout.getHeight();
        }
        int b2 = b(a2);
        coordinatorLayout.a(view, i, i2, View.MeasureSpec.makeMeasureSpec((i5 + b2) - a2.getMeasuredHeight(), i6 == -1 ? 1073741824 : BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), i4);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b() {
        return this.f30235d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(View view) {
        return view.getMeasuredHeight();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    public final void b(CoordinatorLayout coordinatorLayout, View view, int i) {
        View a2 = a(coordinatorLayout.b(view));
        if (a2 != null) {
            CoordinatorLayout.d dVar = (CoordinatorLayout.d) view.getLayoutParams();
            Rect rect = this.f30232a;
            rect.set(coordinatorLayout.getPaddingLeft() + dVar.leftMargin, a2.getBottom() + dVar.topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - dVar.rightMargin, ((coordinatorLayout.getHeight() + a2.getBottom()) - coordinatorLayout.getPaddingBottom()) - dVar.bottomMargin);
            ac acVar = coordinatorLayout.e;
            if (acVar != null && v.s(coordinatorLayout) && !v.s(view)) {
                rect.left += acVar.a();
                rect.right -= acVar.c();
            }
            Rect rect2 = this.f30233b;
            int i2 = dVar.f1665c;
            if (i2 == 0) {
                i2 = 8388659;
            }
            e.a(i2, view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
            int c2 = c(a2);
            view.layout(rect2.left, rect2.top - c2, rect2.right, rect2.bottom - c2);
            this.f30235d = rect2.top - a2.getBottom();
            return;
        }
        super.b(coordinatorLayout, (CoordinatorLayout) view, i);
        this.f30235d = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int c(View view) {
        if (this.f30234c == 0) {
            return 0;
        }
        float a2 = a(view);
        int i = this.f30234c;
        return a.a((int) (a2 * i), 0, i);
    }
}
