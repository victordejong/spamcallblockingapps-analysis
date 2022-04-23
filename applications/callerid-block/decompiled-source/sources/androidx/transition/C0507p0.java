package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.transition.p0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/p0.class */
class C0507p0 {

    /* renamed from: b */
    private static Method f2749b;

    /* renamed from: c */
    private static boolean f2750c;

    /* renamed from: d */
    private static Field f2751d;

    /* renamed from: e */
    private static boolean f2752e;

    /* renamed from: a */
    private float[] f2753a;

    @SuppressLint({"PrivateApi"})
    /* renamed from: b */
    private void m11999b() {
        if (!f2750c) {
            try {
                Class cls = Integer.TYPE;
                Method declaredMethod = View.class.getDeclaredMethod("setFrame", cls, cls, cls, cls);
                f2749b = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsBase", "Failed to retrieve setFrame method", e);
            }
            f2750c = true;
        }
    }

    /* renamed from: a */
    public void m12000a(View view) {
        if (view.getVisibility() == 0) {
            view.setTag(C0506p.save_non_transition_alpha, null);
        }
    }

    /* renamed from: c */
    public float m11998c(View view) {
        Float f = (Float) view.getTag(C0506p.save_non_transition_alpha);
        float alpha = view.getAlpha();
        float f2 = alpha;
        if (f != null) {
            f2 = alpha / f.floatValue();
        }
        return f2;
    }

    /* renamed from: d */
    public void m11997d(View view) {
        int i = C0506p.save_non_transition_alpha;
        if (view.getTag(i) == null) {
            view.setTag(i, Float.valueOf(view.getAlpha()));
        }
    }

    /* renamed from: e */
    public void m11996e(View view, Matrix matrix) {
        if (matrix == null || matrix.isIdentity()) {
            view.setPivotX(view.getWidth() / 2);
            view.setPivotY(view.getHeight() / 2);
            view.setTranslationX(0.0f);
            view.setTranslationY(0.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            view.setRotation(0.0f);
            return;
        }
        float[] fArr = this.f2753a;
        float[] fArr2 = fArr;
        if (fArr == null) {
            fArr2 = new float[9];
            this.f2753a = fArr2;
        }
        matrix.getValues(fArr2);
        float f = fArr2[3];
        float sqrt = ((float) Math.sqrt(1.0f - (f * f))) * (fArr2[0] < 0.0f ? -1 : 1);
        float degrees = (float) Math.toDegrees(Math.atan2(f, sqrt));
        float f2 = fArr2[0] / sqrt;
        float f3 = fArr2[4] / sqrt;
        float f4 = fArr2[2];
        float f5 = fArr2[5];
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        view.setTranslationX(f4);
        view.setTranslationY(f5);
        view.setRotation(degrees);
        view.setScaleX(f2);
        view.setScaleY(f3);
    }

    /* renamed from: f */
    public void m11995f(View view, int i, int i2, int i3, int i4) {
        m11999b();
        Method method = f2749b;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    /* renamed from: g */
    public void m11994g(View view, float f) {
        Float f2 = (Float) view.getTag(C0506p.save_non_transition_alpha);
        if (f2 != null) {
            view.setAlpha(f2.floatValue() * f);
        } else {
            view.setAlpha(f);
        }
    }

    /* renamed from: h */
    public void m11993h(View view, int i) {
        if (!f2752e) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f2751d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("ViewUtilsBase", "fetchViewFlagsField: ");
            }
            f2752e = true;
        }
        Field field = f2751d;
        if (field != null) {
            try {
                f2751d.setInt(view, i | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException e2) {
            }
        }
    }

    /* renamed from: i */
    public void m11992i(View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            m11992i(view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (!matrix2.isIdentity()) {
            matrix.preConcat(matrix2);
        }
    }

    /* renamed from: j */
    public void m11991j(View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            m11991j(view2, matrix);
            matrix.postTranslate(view2.getScrollX(), view2.getScrollY());
        }
        matrix.postTranslate(-view.getLeft(), -view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (!matrix2.isIdentity()) {
            Matrix matrix3 = new Matrix();
            if (matrix2.invert(matrix3)) {
                matrix.postConcat(matrix3);
            }
        }
    }
}
