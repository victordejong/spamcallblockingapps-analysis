package p012b.p040h.p041d;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
/* renamed from: b.h.d.b */
/* loaded from: classes-dex2jar.jar:b/h/d/b.class */
public class C0830b {

    /* renamed from: a */
    public static final ThreadLocal<Matrix> f3948a = new ThreadLocal<>();

    /* renamed from: b */
    public static final ThreadLocal<RectF> f3949b = new ThreadLocal<>();

    /* renamed from: a */
    public static void m35806a(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        m35804b(viewGroup, view, rect);
    }

    /* renamed from: a */
    public static void m35805a(ViewParent viewParent, View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            View view2 = (View) parent;
            m35805a(viewParent, view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (!view.getMatrix().isIdentity()) {
            matrix.preConcat(view.getMatrix());
        }
    }

    /* renamed from: b */
    public static void m35804b(ViewGroup viewGroup, View view, Rect rect) {
        Matrix matrix = f3948a.get();
        if (matrix == null) {
            matrix = new Matrix();
            f3948a.set(matrix);
        } else {
            matrix.reset();
        }
        m35805a(viewGroup, view, matrix);
        RectF rectF = f3949b.get();
        RectF rectF2 = rectF;
        if (rectF == null) {
            rectF2 = new RectF();
            f3949b.set(rectF2);
        }
        rectF2.set(rect);
        matrix.mapRect(rectF2);
        rect.set((int) (rectF2.left + 0.5f), (int) (rectF2.top + 0.5f), (int) (rectF2.right + 0.5f), (int) (rectF2.bottom + 0.5f));
    }
}
