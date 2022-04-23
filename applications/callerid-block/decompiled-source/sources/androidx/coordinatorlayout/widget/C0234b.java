package androidx.coordinatorlayout.widget;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
/* renamed from: androidx.coordinatorlayout.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/b.class */
public class C0234b {

    /* renamed from: a */
    private static final ThreadLocal<Matrix> f1559a = new ThreadLocal<>();

    /* renamed from: b */
    private static final ThreadLocal<RectF> f1560b = new ThreadLocal<>();

    /* renamed from: a */
    public static void m13692a(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        m13690c(viewGroup, view, rect);
    }

    /* renamed from: b */
    private static void m13691b(ViewParent viewParent, View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            View view2 = (View) parent;
            m13691b(viewParent, view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (!view.getMatrix().isIdentity()) {
            matrix.preConcat(view.getMatrix());
        }
    }

    /* renamed from: c */
    static void m13690c(ViewGroup viewGroup, View view, Rect rect) {
        ThreadLocal<Matrix> threadLocal = f1559a;
        Matrix matrix = threadLocal.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal.set(matrix);
        } else {
            matrix.reset();
        }
        m13691b(viewGroup, view, matrix);
        ThreadLocal<RectF> threadLocal2 = f1560b;
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
}
