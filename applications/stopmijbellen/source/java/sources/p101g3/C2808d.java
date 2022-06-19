package p101g3;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* renamed from: g3.d */
/* loaded from: classes-dex2jar.jar:g3/d.class */
public class C2808d<V extends View> extends CoordinatorLayout.AbstractC0321c<V> {

    /* renamed from: a */
    public C2809e f9542a;

    /* renamed from: b */
    public int f9543b = 0;

    public C2808d() {
    }

    public C2808d(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: h */
    public boolean mo2976h(CoordinatorLayout coordinatorLayout, V v, int i) {
        mo2974t(coordinatorLayout, v, i);
        if (this.f9542a == null) {
            this.f9542a = new C2809e(v);
        }
        C2809e c2809e = this.f9542a;
        c2809e.f9545b = c2809e.f9544a.getTop();
        c2809e.f9546c = c2809e.f9544a.getLeft();
        this.f9542a.m2972a();
        int i2 = this.f9543b;
        if (i2 != 0) {
            C2809e c2809e2 = this.f9542a;
            if (c2809e2.f9547d != i2) {
                c2809e2.f9547d = i2;
                c2809e2.m2972a();
            }
            this.f9543b = 0;
            return true;
        }
        return true;
    }

    /* renamed from: s */
    public int m2975s() {
        C2809e c2809e = this.f9542a;
        return c2809e != null ? c2809e.f9547d : 0;
    }

    /* renamed from: t */
    public void mo2974t(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.m8328s(v, i);
    }

    /* renamed from: u */
    public boolean m2973u(int i) {
        C2809e c2809e = this.f9542a;
        boolean z = false;
        if (c2809e == null) {
            this.f9543b = i;
            return false;
        }
        if (c2809e.f9547d != i) {
            c2809e.f9547d = i;
            c2809e.m2972a();
            z = true;
        }
        return z;
    }
}
