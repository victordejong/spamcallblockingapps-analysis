package androidx.transition;

import android.graphics.Matrix;
import android.view.View;
import android.view.ViewParent;
import androidx.transition.C2901o;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.transition.ao */
/* loaded from: classes-dex2jar.jar:androidx/transition/ao.class */
class C2875ao {

    /* renamed from: a */
    private static Method f10841a;

    /* renamed from: b */
    private static boolean f10842b;

    /* renamed from: c */
    private static Field f10843c;

    /* renamed from: d */
    private static boolean f10844d;

    /* renamed from: e */
    private float[] f10845e;

    /* renamed from: a */
    public float mo39733a(View view) {
        Float f = (Float) view.getTag(C2901o.C2902a.save_non_transition_alpha);
        return f != null ? view.getAlpha() / f.floatValue() : view.getAlpha();
    }

    /* renamed from: a */
    public void mo39732a(View view, float f) {
        Float f2 = (Float) view.getTag(C2901o.C2902a.save_non_transition_alpha);
        if (f2 != null) {
            view.setAlpha(f2.floatValue() * f);
        } else {
            view.setAlpha(f);
        }
    }

    /* renamed from: a */
    public void mo39731a(View view, int i) {
        if (!f10844d) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f10843c = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f10844d = true;
        }
        Field field = f10843c;
        if (field != null) {
            try {
                f10843c.setInt(view, i | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException e2) {
            }
        }
    }

    /* renamed from: a */
    public void mo39730a(View view, int i, int i2, int i3, int i4) {
        if (!f10842b) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("setFrame", Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE);
                f10841a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            f10842b = true;
        }
        Method method = f10841a;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            } catch (IllegalAccessException e2) {
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3.getCause());
            }
        }
    }

    /* renamed from: a */
    public void mo39729a(View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            mo39729a(view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (!matrix2.isIdentity()) {
            matrix.preConcat(matrix2);
        }
    }

    /* renamed from: b */
    public void mo39728b(View view) {
        if (view.getTag(C2901o.C2902a.save_non_transition_alpha) == null) {
            view.setTag(C2901o.C2902a.save_non_transition_alpha, Float.valueOf(view.getAlpha()));
        }
    }

    /* renamed from: b */
    public void mo39727b(View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            mo39727b(view2, matrix);
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
    public void mo39726c(View view) {
        if (view.getVisibility() == 0) {
            view.setTag(C2901o.C2902a.save_non_transition_alpha, null);
        }
    }

    /* renamed from: c */
    public void mo39725c(View view, Matrix matrix) {
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
        float[] fArr = this.f10845e;
        float[] fArr2 = fArr;
        if (fArr == null) {
            fArr2 = new float[9];
            this.f10845e = fArr2;
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
