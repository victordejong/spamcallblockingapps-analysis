package androidx.coordinatorlayout.widget;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
/* renamed from: androidx.coordinatorlayout.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/b.class */
public class C0403b {

    /* renamed from: a */
    private static final ThreadLocal<Matrix> f1546a = new ThreadLocal<>();

    /* renamed from: b */
    private static final ThreadLocal<RectF> f1547b = new ThreadLocal<>();

    /* renamed from: a */
    static void m6757a(ViewGroup viewGroup, View view, Rect rect) {
        Matrix matrix = f1546a.get();
        if (matrix == null) {
            matrix = new Matrix();
            f1546a.set(matrix);
        } else {
            matrix.reset();
        }
        m6756a(viewGroup, view, matrix);
        RectF rectF = f1547b.get();
        RectF rectF2 = rectF;
        if (rectF == null) {
            rectF2 = new RectF();
            f1547b.set(rectF2);
        }
        rectF2.set(rect);
        matrix.mapRect(rectF2);
        rect.set((int) (rectF2.left + 0.5f), (int) (rectF2.top + 0.5f), (int) (rectF2.right + 0.5f), (int) (rectF2.bottom + 0.5f));
    }

    /* renamed from: a */
    private static void m6756a(ViewParent viewParent, View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            View view2 = (View) parent;
            m6756a(viewParent, view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (!view.getMatrix().isIdentity()) {
            matrix.preConcat(view.getMatrix());
        }
    }

    /* renamed from: b */
    public static void m6755b(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        m6757a(viewGroup, view, rect);
    }
}
