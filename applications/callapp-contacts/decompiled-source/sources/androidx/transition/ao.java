package androidx.transition;

import android.graphics.Matrix;
import android.view.View;
import android.view.ViewParent;
import androidx.transition.o;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/transition/ao.class */
class ao {

    /* renamed from: a  reason: collision with root package name */
    private static Method f5781a;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f5782b;

    /* renamed from: c  reason: collision with root package name */
    private static Field f5783c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f5784d;
    private float[] e;

    public float a(View view) {
        Float f = (Float) view.getTag(o.a.save_non_transition_alpha);
        return f != null ? view.getAlpha() / f.floatValue() : view.getAlpha();
    }

    public void a(View view, float f) {
        Float f2 = (Float) view.getTag(o.a.save_non_transition_alpha);
        if (f2 != null) {
            view.setAlpha(f2.floatValue() * f);
        } else {
            view.setAlpha(f);
        }
    }

    public void a(View view, int i) {
        if (!f5784d) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f5783c = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f5784d = true;
        }
        Field field = f5783c;
        if (field != null) {
            try {
                f5783c.setInt(view, i | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException e2) {
            }
        }
    }

    public void a(View view, int i, int i2, int i3, int i4) {
        if (!f5782b) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("setFrame", Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE);
                f5781a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            f5782b = true;
        }
        Method method = f5781a;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            } catch (IllegalAccessException e2) {
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3.getCause());
            }
        }
    }

    public void a(View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            a(view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (!matrix2.isIdentity()) {
            matrix.preConcat(matrix2);
        }
    }

    public void b(View view) {
        if (view.getTag(o.a.save_non_transition_alpha) == null) {
            view.setTag(o.a.save_non_transition_alpha, Float.valueOf(view.getAlpha()));
        }
    }

    public void b(View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            b(view2, matrix);
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

    public void c(View view) {
        if (view.getVisibility() == 0) {
            view.setTag(o.a.save_non_transition_alpha, null);
        }
    }

    public void c(View view, Matrix matrix) {
        if (matrix == null || matrix.isIdentity()) {
            view.setPivotX(view.getWidth() / 2);
            view.setPivotY(view.getHeight() / 2);
            view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            view.setRotation(BitmapDescriptorFactory.HUE_RED);
            return;
        }
        float[] fArr = this.e;
        float[] fArr2 = fArr;
        if (fArr == null) {
            fArr2 = new float[9];
            this.e = fArr2;
        }
        matrix.getValues(fArr2);
        float f = fArr2[3];
        float sqrt = ((float) Math.sqrt(1.0f - (f * f))) * (fArr2[0] < BitmapDescriptorFactory.HUE_RED ? -1 : 1);
        float degrees = (float) Math.toDegrees(Math.atan2(f, sqrt));
        float f2 = fArr2[0] / sqrt;
        float f3 = fArr2[4] / sqrt;
        float f4 = fArr2[2];
        float f5 = fArr2[5];
        view.setPivotX(BitmapDescriptorFactory.HUE_RED);
        view.setPivotY(BitmapDescriptorFactory.HUE_RED);
        view.setTranslationX(f4);
        view.setTranslationY(f5);
        view.setRotation(degrees);
        view.setScaleX(f2);
        view.setScaleY(f3);
    }
}
