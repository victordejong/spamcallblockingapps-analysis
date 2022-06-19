package com.google.android.material.internal;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
/* renamed from: com.google.android.material.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/b.class */
public class C4689b {

    /* renamed from: a */
    private static final ThreadLocal<Matrix> f20361a = new ThreadLocal<>();

    /* renamed from: b */
    private static final ThreadLocal<RectF> f20362b = new ThreadLocal<>();

    /* renamed from: a */
    public static void m2857a(ViewGroup viewGroup, View view, Rect rect) {
        Matrix matrix = f20361a.get();
        if (matrix == null) {
            matrix = new Matrix();
            f20361a.set(matrix);
        } else {
            matrix.reset();
        }
        m2856a(viewGroup, view, matrix);
        RectF rectF = f20362b.get();
        RectF rectF2 = rectF;
        if (rectF == null) {
            rectF2 = new RectF();
            f20362b.set(rectF2);
        }
        rectF2.set(rect);
        matrix.mapRect(rectF2);
        rect.set((int) (rectF2.left + 0.5f), (int) (rectF2.top + 0.5f), (int) (rectF2.right + 0.5f), (int) (rectF2.bottom + 0.5f));
    }

    /* renamed from: a */
    private static void m2856a(ViewParent viewParent, View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            View view2 = (View) parent;
            m2856a(viewParent, view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (!view.getMatrix().isIdentity()) {
            matrix.preConcat(view.getMatrix());
        }
    }

    /* renamed from: b */
    public static void m2855b(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        m2857a(viewGroup, view, rect);
    }
}
