package androidx.coordinatorlayout.widget;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.RestrictTo;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/ViewGroupUtils.class */
public class ViewGroupUtils {

    /* renamed from: a */
    private static final ThreadLocal<Matrix> f2800a = new ThreadLocal<>();

    /* renamed from: b */
    private static final ThreadLocal<RectF> f2801b = new ThreadLocal<>();

    private ViewGroupUtils() {
    }

    /* renamed from: a */
    public static void m19862a(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        m19860c(viewGroup, view, rect);
    }

    /* renamed from: b */
    private static void m19861b(ViewParent viewParent, View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            View view2 = (View) parent;
            m19861b(viewParent, view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (!view.getMatrix().isIdentity()) {
            matrix.preConcat(view.getMatrix());
        }
    }

    /* renamed from: c */
    static void m19860c(ViewGroup viewGroup, View view, Rect rect) {
        Matrix matrix = f2800a.get();
        if (matrix == null) {
            matrix = new Matrix();
            f2800a.set(matrix);
        } else {
            matrix.reset();
        }
        m19861b(viewGroup, view, matrix);
        RectF rectF = f2801b.get();
        RectF rectF2 = rectF;
        if (rectF == null) {
            rectF2 = new RectF();
            f2801b.set(rectF2);
        }
        rectF2.set(rect);
        matrix.mapRect(rectF2);
        rect.set((int) (rectF2.left + 0.5f), (int) (rectF2.top + 0.5f), (int) (rectF2.right + 0.5f), (int) (rectF2.bottom + 0.5f));
    }
}
