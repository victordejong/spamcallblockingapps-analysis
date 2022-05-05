package p081h.p203i.p204a.p294f.p308n;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.n.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/n/d.class */
public class C9224d {

    /* renamed from: a */
    public static final ThreadLocal<Matrix> f21137a = new ThreadLocal<>();

    /* renamed from: b */
    public static final ThreadLocal<RectF> f21138b = new ThreadLocal<>();

    /* renamed from: a */
    public static void m15677a(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        m15675b(viewGroup, view, rect);
    }

    /* renamed from: a */
    public static void m15676a(ViewParent viewParent, View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            View view2 = (View) parent;
            m15676a(viewParent, view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (!view.getMatrix().isIdentity()) {
            matrix.preConcat(view.getMatrix());
        }
    }

    /* renamed from: b */
    public static void m15675b(ViewGroup viewGroup, View view, Rect rect) {
        Matrix matrix = f21137a.get();
        if (matrix == null) {
            matrix = new Matrix();
            f21137a.set(matrix);
        } else {
            matrix.reset();
        }
        m15676a(viewGroup, view, matrix);
        RectF rectF = f21138b.get();
        RectF rectF2 = rectF;
        if (rectF == null) {
            rectF2 = new RectF();
            f21138b.set(rectF2);
        }
        rectF2.set(rect);
        matrix.mapRect(rectF2);
        rect.set((int) (rectF2.left + 0.5f), (int) (rectF2.top + 0.5f), (int) (rectF2.right + 0.5f), (int) (rectF2.bottom + 0.5f));
    }
}
