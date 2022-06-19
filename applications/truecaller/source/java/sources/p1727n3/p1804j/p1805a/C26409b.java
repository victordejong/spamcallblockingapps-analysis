package p1727n3.p1804j.p1805a;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewParent;
/* renamed from: n3.j.a.b */
/* loaded from: classes-dex2jar.jar:n3/j/a/b.class */
public class C26409b {

    /* renamed from: a */
    public static final ThreadLocal<Matrix> f74028a = new ThreadLocal<>();

    /* renamed from: b */
    public static final ThreadLocal<RectF> f74029b = new ThreadLocal<>();

    /* renamed from: a */
    public static void m1896a(ViewParent viewParent, View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            View view2 = (View) parent;
            m1896a(viewParent, view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (!view.getMatrix().isIdentity()) {
            matrix.preConcat(view.getMatrix());
        }
    }
}
