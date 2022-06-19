package p001a0;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewParent;
/* renamed from: a0.b */
/* loaded from: classes-dex2jar.jar:a0/b.class */
public class C0006b {

    /* renamed from: a */
    public static final ThreadLocal<Matrix> f6a = new ThreadLocal<>();

    /* renamed from: b */
    public static final ThreadLocal<RectF> f7b = new ThreadLocal<>();

    /* renamed from: a */
    public static void m8931a(ViewParent viewParent, View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            View view2 = (View) parent;
            m8931a(viewParent, view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (!view.getMatrix().isIdentity()) {
            matrix.preConcat(view.getMatrix());
        }
    }
}
