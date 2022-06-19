package androidx.coordinatorlayout.widget;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
/* renamed from: androidx.coordinatorlayout.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/b.class */
public final class C0706b {

    /* renamed from: a */
    private static final ThreadLocal<Matrix> f3223a = new ThreadLocal<>();

    /* renamed from: b */
    private static final ThreadLocal<RectF> f3224b = new ThreadLocal<>();

    private C0706b() {
    }

    /* renamed from: a */
    public static void m44637a(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal<Matrix> threadLocal = f3223a;
        Matrix matrix = threadLocal.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal.set(matrix);
        } else {
            matrix.reset();
        }
        m44636a(viewGroup, view, matrix);
        ThreadLocal<RectF> threadLocal2 = f3224b;
        RectF rectF = threadLocal2.get();
        RectF rectF2 = rectF;
        if (rectF == null) {
            rectF2 = new RectF();
            threadLocal2.set(rectF2);
        }
        rectF2.set(rect);
        matrix.mapRect(rectF2);
        rect.set((int) (rectF2.left + 0.5f), (int) (rectF2.top + 0.5f), (int) (rectF2.right + 0.5f), (int) (rectF2.bottom + 0.5f));
    }

    /* renamed from: a */
    private static void m44636a(ViewParent viewParent, View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            View view2 = (View) parent;
            m44636a(viewParent, view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (!view.getMatrix().isIdentity()) {
            matrix.preConcat(view.getMatrix());
        }
    }
}
