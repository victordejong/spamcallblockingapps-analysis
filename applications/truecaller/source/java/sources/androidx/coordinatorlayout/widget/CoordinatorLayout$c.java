package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import p1727n3.p1807k.p1821i.C26568d0;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$c.class */
public abstract class CoordinatorLayout$c<V extends View> {
    public CoordinatorLayout$c() {
    }

    public CoordinatorLayout$c(Context context, AttributeSet attributeSet) {
    }

    /* renamed from: A */
    public boolean m43022A(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        return false;
    }

    /* renamed from: a */
    public boolean m43021a(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
        return false;
    }

    /* renamed from: b */
    public int m43020b() {
        return -16777216;
    }

    /* renamed from: c */
    public float m43019c() {
        return 0.0f;
    }

    /* renamed from: d */
    public boolean m43018d(CoordinatorLayout coordinatorLayout, V v, View view) {
        return false;
    }

    /* renamed from: e */
    public C26568d0 m43017e(C26568d0 c26568d0) {
        return c26568d0;
    }

    /* renamed from: f */
    public void m43016f(CoordinatorLayout$f coordinatorLayout$f) {
    }

    /* renamed from: g */
    public boolean m43015g(CoordinatorLayout coordinatorLayout, V v, View view) {
        return false;
    }

    /* renamed from: h */
    public void m43014h(CoordinatorLayout coordinatorLayout, V v, View view) {
    }

    /* renamed from: i */
    public void m43013i() {
    }

    /* renamed from: j */
    public boolean m43012j(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        return false;
    }

    /* renamed from: k */
    public boolean m43011k(CoordinatorLayout coordinatorLayout, V v, int i) {
        return false;
    }

    /* renamed from: l */
    public boolean m43010l(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
        return false;
    }

    /* renamed from: m */
    public boolean m43009m(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2, boolean z) {
        return false;
    }

    /* renamed from: n */
    public boolean m43008n(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
        return false;
    }

    @Deprecated
    /* renamed from: o */
    public void m43007o(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr) {
    }

    /* renamed from: p */
    public void m43006p(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            m43007o(coordinatorLayout, v, view, i, i2, iArr);
        }
    }

    @Deprecated
    /* renamed from: q */
    public void m43005q() {
    }

    /* renamed from: r */
    public void m43004r(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        iArr[0] = iArr[0] + i3;
        iArr[1] = iArr[1] + i4;
        if (i5 == 0) {
            m43005q();
        }
    }

    @Deprecated
    /* renamed from: s */
    public void m43003s() {
    }

    /* renamed from: t */
    public boolean m43002t(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
        return false;
    }

    /* renamed from: u */
    public void m43001u(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
    }

    /* renamed from: v */
    public Parcelable m43000v(CoordinatorLayout coordinatorLayout, V v) {
        return View.BaseSavedState.EMPTY_STATE;
    }

    @Deprecated
    /* renamed from: w */
    public boolean m42999w(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        return false;
    }

    /* renamed from: x */
    public boolean m42998x(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        if (i2 == 0) {
            return m42999w(coordinatorLayout, v, view, view2, i);
        }
        return false;
    }

    @Deprecated
    /* renamed from: y */
    public void m42997y(CoordinatorLayout coordinatorLayout, V v, View view) {
    }

    /* renamed from: z */
    public void m42996z(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
        if (i == 0) {
            m42997y(coordinatorLayout, v, view);
        }
    }
}
