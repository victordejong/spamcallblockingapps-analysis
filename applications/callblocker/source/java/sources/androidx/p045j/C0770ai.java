package androidx.p045j;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import androidx.p045j.C0803j;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.j.ai */
/* loaded from: classes-dex2jar.jar:androidx/j/ai.class */
class C0770ai {

    /* renamed from: a */
    private static Method f2672a;

    /* renamed from: b */
    private static boolean f2673b;

    /* renamed from: c */
    private static Field f2674c;

    /* renamed from: d */
    private static boolean f2675d;

    @SuppressLint({"PrivateApi"})
    /* renamed from: a */
    private void m19486a() {
        if (!f2673b) {
            try {
                f2672a = View.class.getDeclaredMethod("setFrame", Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE);
                f2672a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsBase", "Failed to retrieve setFrame method", e);
            }
            f2673b = true;
        }
    }

    /* renamed from: a */
    public float mo19485a(View view) {
        Float f = (Float) view.getTag(C0803j.C0804a.save_non_transition_alpha);
        return f != null ? view.getAlpha() / f.floatValue() : view.getAlpha();
    }

    /* renamed from: a */
    public void mo19484a(View view, float f) {
        Float f2 = (Float) view.getTag(C0803j.C0804a.save_non_transition_alpha);
        if (f2 != null) {
            view.setAlpha(f2.floatValue() * f);
        } else {
            view.setAlpha(f);
        }
    }

    /* renamed from: a */
    public void mo19483a(View view, int i) {
        if (!f2675d) {
            try {
                f2674c = View.class.getDeclaredField("mViewFlags");
                f2674c.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("ViewUtilsBase", "fetchViewFlagsField: ");
            }
            f2675d = true;
        }
        if (f2674c != null) {
            try {
                f2674c.setInt(view, (f2674c.getInt(view) & (-13)) | i);
            } catch (IllegalAccessException e2) {
            }
        }
    }

    /* renamed from: a */
    public void mo19482a(View view, int i, int i2, int i3, int i4) {
        m19486a();
        if (f2672a != null) {
            try {
                f2672a.invoke(view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    /* renamed from: a */
    public void mo19481a(View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            mo19481a(view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (!matrix2.isIdentity()) {
            matrix.preConcat(matrix2);
        }
    }

    /* renamed from: b */
    public void mo19480b(View view) {
        if (view.getTag(C0803j.C0804a.save_non_transition_alpha) == null) {
            view.setTag(C0803j.C0804a.save_non_transition_alpha, Float.valueOf(view.getAlpha()));
        }
    }

    /* renamed from: b */
    public void mo19479b(View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            mo19479b(view2, matrix);
            matrix.postTranslate(view2.getScrollX(), view2.getScrollY());
        }
        matrix.postTranslate(-view.getLeft(), -view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (!matrix2.isIdentity()) {
            Matrix matrix3 = new Matrix();
            if (!matrix2.invert(matrix3)) {
                return;
            }
            matrix.postConcat(matrix3);
        }
    }

    /* renamed from: c */
    public void mo19478c(View view) {
        if (view.getVisibility() == 0) {
            view.setTag(C0803j.C0804a.save_non_transition_alpha, null);
        }
    }
}
