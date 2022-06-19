package androidx.transition;

import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.transition.h */
/* loaded from: classes-dex2jar.jar:androidx/transition/h.class */
class C1138h implements AbstractC1132f {

    /* renamed from: d */
    private static Class<?> f4924d;

    /* renamed from: e */
    private static boolean f4925e;

    /* renamed from: f */
    private static Method f4926f;

    /* renamed from: g */
    private static boolean f4927g;

    /* renamed from: h */
    private static Method f4928h;

    /* renamed from: i */
    private static boolean f4929i;

    /* renamed from: j */
    private final View f4930j;

    private C1138h(View view) {
        this.f4930j = view;
    }

    /* renamed from: b */
    public static AbstractC1132f m30891b(View view, ViewGroup viewGroup, Matrix matrix) {
        m30890c();
        Method method = f4926f;
        if (method != null) {
            try {
                return new C1138h((View) method.invoke(null, view, viewGroup, matrix));
            } catch (IllegalAccessException e) {
                return null;
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
        return null;
    }

    /* renamed from: c */
    private static void m30890c() {
        if (!f4927g) {
            try {
                m30889d();
                Method declaredMethod = f4924d.getDeclaredMethod("addGhost", View.class, ViewGroup.class, Matrix.class);
                f4926f = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("GhostViewApi21", "Failed to retrieve addGhost method", e);
            }
            f4927g = true;
        }
    }

    /* renamed from: d */
    private static void m30889d() {
        if (!f4925e) {
            try {
                f4924d = Class.forName("android.view.GhostView");
            } catch (ClassNotFoundException e) {
                Log.i("GhostViewApi21", "Failed to retrieve GhostView class", e);
            }
            f4925e = true;
        }
    }

    /* renamed from: e */
    private static void m30888e() {
        if (!f4929i) {
            try {
                m30889d();
                Method declaredMethod = f4924d.getDeclaredMethod("removeGhost", View.class);
                f4928h = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("GhostViewApi21", "Failed to retrieve removeGhost method", e);
            }
            f4929i = true;
        }
    }

    /* renamed from: f */
    public static void m30887f(View view) {
        m30888e();
        Method method = f4928h;
        if (method != null) {
            try {
                method.invoke(null, view);
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    @Override // androidx.transition.AbstractC1132f
    /* renamed from: a */
    public void mo30886a(ViewGroup viewGroup, View view) {
    }

    @Override // androidx.transition.AbstractC1132f
    public void setVisibility(int i) {
        this.f4930j.setVisibility(i);
    }
}
