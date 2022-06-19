package p101g3;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.List;
import java.util.WeakHashMap;
import p015b0.C0713a;
import p163m0.C3551b0;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: g3.c */
/* loaded from: classes-dex2jar.jar:g3/c.class */
public abstract class AbstractC2807c extends C2808d<View> {

    /* renamed from: c */
    public final Rect f9538c = new Rect();

    /* renamed from: d */
    public final Rect f9539d = new Rect();

    /* renamed from: e */
    public int f9540e = 0;

    /* renamed from: f */
    public int f9541f;

    public AbstractC2807c() {
    }

    public AbstractC2807c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: i */
    public boolean mo2981i(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        View mo2980v;
        int i5;
        int i6 = view.getLayoutParams().height;
        if ((i6 == -1 || i6 == -2) && (mo2980v = mo2980v(coordinatorLayout.m8336e(view))) != null) {
            int size = View.MeasureSpec.getSize(i3);
            if (size > 0) {
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                i5 = size;
                if (C3589v.C3593d.m2092b(mo2980v)) {
                    C3551b0 lastWindowInsets = coordinatorLayout.getLastWindowInsets();
                    i5 = size;
                    if (lastWindowInsets != null) {
                        i5 = size + lastWindowInsets.m2181b() + lastWindowInsets.m2178e();
                    }
                }
            } else {
                i5 = coordinatorLayout.getHeight();
            }
            int mo2977y = mo2977y(mo2980v);
            coordinatorLayout.m8327t(view, i, i2, View.MeasureSpec.makeMeasureSpec((mo2977y + i5) - mo2980v.getMeasuredHeight(), i6 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
            return true;
        }
        return false;
    }

    @Override // p101g3.C2808d
    /* renamed from: t */
    public void mo2974t(CoordinatorLayout coordinatorLayout, View view, int i) {
        View mo2980v = mo2980v(coordinatorLayout.m8336e(view));
        if (mo2980v == null) {
            coordinatorLayout.m8328s(view, i);
            this.f9540e = 0;
            return;
        }
        CoordinatorLayout.C0324f c0324f = (CoordinatorLayout.C0324f) view.getLayoutParams();
        Rect rect = this.f9538c;
        rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0324f).leftMargin, mo2980v.getBottom() + ((ViewGroup.MarginLayoutParams) c0324f).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) c0324f).rightMargin, ((mo2980v.getBottom() + coordinatorLayout.getHeight()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) c0324f).bottomMargin);
        C3551b0 lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            if (C3589v.C3593d.m2092b(coordinatorLayout) && !C3589v.C3593d.m2092b(view)) {
                rect.left = lastWindowInsets.m2180c() + rect.left;
                rect.right -= lastWindowInsets.m2179d();
            }
        }
        Rect rect2 = this.f9539d;
        int i2 = c0324f.f1460c;
        if (i2 == 0) {
            i2 = 8388659;
        }
        Gravity.apply(i2, view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
        int m2979w = m2979w(mo2980v);
        view.layout(rect2.left, rect2.top - m2979w, rect2.right, rect2.bottom - m2979w);
        this.f9540e = rect2.top - mo2980v.getBottom();
    }

    /* renamed from: v */
    public abstract View mo2980v(List<View> list);

    /* renamed from: w */
    public final int m2979w(View view) {
        int i = 0;
        if (this.f9541f != 0) {
            float mo2978x = mo2978x(view);
            int i2 = this.f9541f;
            i = C0713a.m7443d((int) (mo2978x * i2), 0, i2);
        }
        return i;
    }

    /* renamed from: x */
    public float mo2978x(View view) {
        return 1.0f;
    }

    /* renamed from: y */
    public int mo2977y(View view) {
        return view.getMeasuredHeight();
    }
}
