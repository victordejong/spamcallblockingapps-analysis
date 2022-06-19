package p1727n3.p1789g0;

import android.graphics.Matrix;
import android.view.View;
import java.lang.reflect.Field;
/* renamed from: n3.g0.f0 */
/* loaded from: classes-dex2jar.jar:n3/g0/f0.class */
public class C26200f0 {

    /* renamed from: a */
    public static Field f73056a;

    /* renamed from: b */
    public static boolean f73057b;

    /* renamed from: a */
    public void mo2559a(View view) {
        throw null;
    }

    /* renamed from: b */
    public float mo2558b(View view) {
        throw null;
    }

    /* renamed from: c */
    public void mo2557c(View view) {
        throw null;
    }

    /* renamed from: d */
    public void m2556d(View view, int i, int i2, int i3, int i4) {
        throw null;
    }

    /* renamed from: e */
    public void mo2555e(View view, float f) {
        throw null;
    }

    /* renamed from: f */
    public void m2554f(View view, int i) {
        if (!f73057b) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f73056a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f73057b = true;
        }
        Field field = f73056a;
        if (field != null) {
            try {
                f73056a.setInt(view, i | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException e2) {
            }
        }
    }

    /* renamed from: g */
    public void m2553g(View view, Matrix matrix) {
        throw null;
    }

    /* renamed from: h */
    public void m2552h(View view, Matrix matrix) {
        throw null;
    }
}
