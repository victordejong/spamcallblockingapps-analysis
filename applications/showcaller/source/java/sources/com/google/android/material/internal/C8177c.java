package com.google.android.material.internal;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
/* renamed from: com.google.android.material.internal.c */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/c.class */
public class C8177c {

    /* renamed from: a */
    private static final ThreadLocal<Matrix> f36976a = new ThreadLocal<>();

    /* renamed from: b */
    private static final ThreadLocal<RectF> f36977b = new ThreadLocal<>();

    /* renamed from: a */
    public static void m4556a(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        m4554c(viewGroup, view, rect);
    }

    /* renamed from: b */
    private static void m4555b(ViewParent viewParent, View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            View view2 = (View) parent;
            m4555b(viewParent, view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (!view.getMatrix().isIdentity()) {
            matrix.preConcat(view.getMatrix());
        }
    }

    /* renamed from: c */
    public static void m4554c(ViewGroup viewGroup, View view, Rect rect) {
        ThreadLocal<Matrix> threadLocal = f36976a;
        Matrix matrix = threadLocal.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal.set(matrix);
        } else {
            matrix.reset();
        }
        m4555b(viewGroup, view, matrix);
        ThreadLocal<RectF> threadLocal2 = f36977b;
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
