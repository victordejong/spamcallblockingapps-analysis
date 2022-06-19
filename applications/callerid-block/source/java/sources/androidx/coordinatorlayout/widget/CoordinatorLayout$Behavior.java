package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import d.h.m.b0;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior.class */
public abstract class CoordinatorLayout$Behavior<V extends View> {
    public CoordinatorLayout$Behavior() {
    }

    public CoordinatorLayout$Behavior(Context context, AttributeSet attributeSet) {
    }

    /* renamed from: A */
    public boolean m13757A(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        if (i2 == 0) {
            return m13728z(coordinatorLayout, v, view, view2, i);
        }
        return false;
    }

    @Deprecated
    /* renamed from: B */
    public void m13756B(CoordinatorLayout coordinatorLayout, V v, View view) {
    }

    /* renamed from: C */
    public void m13755C(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
        if (i == 0) {
            m13756B(coordinatorLayout, v, view);
        }
    }

    /* renamed from: D */
    public boolean m13754D(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        return false;
    }

    /* renamed from: a */
    public boolean m13753a(CoordinatorLayout coordinatorLayout, V v) {
        return m13750d(coordinatorLayout, v) > 0.0f;
    }

    /* renamed from: b */
    public boolean m13752b(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
        return false;
    }

    /* renamed from: c */
    public int m13751c(CoordinatorLayout coordinatorLayout, V v) {
        return -16777216;
    }

    /* renamed from: d */
    public float m13750d(CoordinatorLayout coordinatorLayout, V v) {
        return 0.0f;
    }

    /* renamed from: e */
    public boolean m13749e(CoordinatorLayout coordinatorLayout, V v, View view) {
        return false;
    }

    /* renamed from: f */
    public b0 m13748f(CoordinatorLayout coordinatorLayout, V v, b0 b0Var) {
        return b0Var;
    }

    /* renamed from: g */
    public void m13747g(CoordinatorLayout$e coordinatorLayout$e) {
    }

    /* renamed from: h */
    public boolean m13746h(CoordinatorLayout coordinatorLayout, V v, View view) {
        return false;
    }

    /* renamed from: i */
    public void m13745i(CoordinatorLayout coordinatorLayout, V v, View view) {
    }

    /* renamed from: j */
    public void m13744j() {
    }

    /* renamed from: k */
    public boolean m13743k(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        return false;
    }

    /* renamed from: l */
    public boolean m13742l(CoordinatorLayout coordinatorLayout, V v, int i) {
        return false;
    }

    /* renamed from: m */
    public boolean m13741m(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
        return false;
    }

    /* renamed from: n */
    public boolean m13740n(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2, boolean z) {
        return false;
    }

    /* renamed from: o */
    public boolean m13739o(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
        return false;
    }

    @Deprecated
    /* renamed from: p */
    public void m13738p(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr) {
    }

    /* renamed from: q */
    public void m13737q(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            m13738p(coordinatorLayout, v, view, i, i2, iArr);
        }
    }

    @Deprecated
    /* renamed from: r */
    public void m13736r(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
    }

    @Deprecated
    /* renamed from: s */
    public void m13735s(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            m13736r(coordinatorLayout, v, view, i, i2, i3, i4);
        }
    }

    /* renamed from: t */
    public void m13734t(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        iArr[0] = iArr[0] + i3;
        iArr[1] = iArr[1] + i4;
        m13735s(coordinatorLayout, v, view, i, i2, i3, i4, i5);
    }

    @Deprecated
    /* renamed from: u */
    public void m13733u(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
    }

    /* renamed from: v */
    public void m13732v(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        if (i2 == 0) {
            m13733u(coordinatorLayout, v, view, view2, i);
        }
    }

    /* renamed from: w */
    public boolean m13731w(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
        return false;
    }

    /* renamed from: x */
    public void m13730x(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
    }

    /* renamed from: y */
    public Parcelable m13729y(CoordinatorLayout coordinatorLayout, V v) {
        return View.BaseSavedState.EMPTY_STATE;
    }

    @Deprecated
    /* renamed from: z */
    public boolean m13728z(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        return false;
    }
}
