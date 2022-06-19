package androidx.coordinatorlayout.widget;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
/* renamed from: androidx.coordinatorlayout.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/b.class */
public class C0432b {

    /* renamed from: a */
    private static final ThreadLocal<Matrix> f1726a = new ThreadLocal<>();

    /* renamed from: b */
    private static final ThreadLocal<RectF> f1727b = new ThreadLocal<>();

    /* renamed from: a */
    static void m20904a(ViewGroup viewGroup, View view, Rect rect) {
        Matrix matrix = f1726a.get();
        if (matrix == null) {
            matrix = new Matrix();
            f1726a.set(matrix);
        } else {
            matrix.reset();
        }
        m20903a(viewGroup, view, matrix);
        RectF rectF = f1727b.get();
        RectF rectF2 = rectF;
        if (rectF == null) {
            rectF2 = new RectF();
            f1727b.set(rectF2);
        }
        rectF2.set(rect);
        matrix.mapRect(rectF2);
        rect.set((int) (rectF2.left + 0.5f), (int) (rectF2.top + 0.5f), (int) (rectF2.right + 0.5f), (int) (rectF2.bottom + 0.5f));
    }

    /* renamed from: a */
    private static void m20903a(ViewParent viewParent, View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            View view2 = (View) parent;
            m20903a(viewParent, view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (!view.getMatrix().isIdentity()) {
            matrix.preConcat(view.getMatrix());
        }
    }

    /* renamed from: b */
    public static void m20902b(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        m20904a(viewGroup, view, rect);
    }
}
