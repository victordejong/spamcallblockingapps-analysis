package androidx.transition;

import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.transition.h */
/* loaded from: classes-dex2jar.jar:androidx/transition/h.class */
final class C2892h implements AbstractC2890f {

    /* renamed from: a */
    static Class<?> f10874a;

    /* renamed from: b */
    static Method f10875b;

    /* renamed from: c */
    static boolean f10876c;

    /* renamed from: d */
    private static boolean f10877d;

    /* renamed from: e */
    private static Method f10878e;

    /* renamed from: f */
    private static boolean f10879f;

    /* renamed from: g */
    private final View f10880g;

    private C2892h(View view) {
        this.f10880g = view;
    }

    /* renamed from: a */
    public static AbstractC2890f m39693a(View view, ViewGroup viewGroup, Matrix matrix) {
        if (!f10879f) {
            try {
                m39694a();
                Method declaredMethod = f10874a.getDeclaredMethod("addGhost", View.class, ViewGroup.class, Matrix.class);
                f10878e = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            f10879f = true;
        }
        Method method = f10878e;
        if (method != null) {
            try {
                return new C2892h((View) method.invoke(null, view, viewGroup, matrix));
            } catch (IllegalAccessException e2) {
                return null;
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3.getCause());
            }
        }
        return null;
    }

    /* renamed from: a */
    public static void m39694a() {
        if (!f10877d) {
            try {
                f10874a = Class.forName("android.view.GhostView");
            } catch (ClassNotFoundException e) {
            }
            f10877d = true;
        }
    }

    @Override // androidx.transition.AbstractC2890f
    /* renamed from: a */
    public final void mo39688a(ViewGroup viewGroup, View view) {
    }

    @Override // androidx.transition.AbstractC2890f
    public final void setVisibility(int i) {
        this.f10880g.setVisibility(i);
    }
}
